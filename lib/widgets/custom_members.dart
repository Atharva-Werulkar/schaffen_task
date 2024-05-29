import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class CustomMembers extends StatefulWidget {
  final Function onSearchPressed;

  const CustomMembers({
    super.key,
    required this.onSearchPressed,
  });

  @override
  _CustomMembersState createState() => _CustomMembersState();
}

class _CustomMembersState extends State<CustomMembers> {
  bool _isSearching = false;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        children: <Widget>[
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
                child: Text(
                  'Members',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 15.0, vertical: 15.0),
                child: IconButton(
                  onPressed: () {
                    setState(() {
                      _isSearching = !_isSearching;
                    });
                    widget.onSearchPressed(_isSearching);
                  },
                  icon: const Icon(
                    Iconsax.search_normal_1,
                    size: 30.0,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
