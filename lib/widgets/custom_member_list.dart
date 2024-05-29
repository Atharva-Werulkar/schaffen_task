import 'package:flutter/material.dart';

class CustomMemberList extends StatefulWidget {
  final int itemCount;
  final List<bool> isFollowing;

  const CustomMemberList({
    super.key,
    required this.itemCount,
    required this.isFollowing,
  });

  @override
  _CustomMemberListState createState() => _CustomMemberListState();
}

class _CustomMemberListState extends State<CustomMemberList> {
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return _buildMemberRow(index);
        },
        childCount: widget.itemCount,
      ),
    );
  }

  Widget _buildMemberRow(int index) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
      child: Row(
        children: <Widget>[
          const CircleAvatar(
            radius: 30.0,
            backgroundImage: AssetImage('assets/images/profile.png'),
          ),
          const SizedBox(width: 10.0),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Yashika',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                '29, India',
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          const Spacer(),
          SizedBox(
            width: 110,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 0.0,
                backgroundColor: widget.isFollowing[index]
                    ? Colors.grey
                    : const Color(0xffEF456F),
              ),
              onPressed: () {
                setState(() {
                  widget.isFollowing[index] = !widget.isFollowing[index];
                });
              },
              child: Text(
                widget.isFollowing[index] ? 'Following' : 'Add',
                style: const TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
