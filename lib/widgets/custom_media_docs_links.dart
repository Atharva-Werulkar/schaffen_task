import 'package:flutter/material.dart';

class CustomMediaDocsAndLinks extends StatelessWidget {
  final int itemCount;
  final Function(int) onItemTap;
  final Function onIconPressed;

  const CustomMediaDocsAndLinks({
    super.key,
    required this.itemCount,
    required this.onItemTap,
    required this.onIconPressed,
  });

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
                  'Media, docs and links',
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
                  onPressed: () => onIconPressed(),
                  icon: const Icon(
                    Icons.navigate_next,
                    size: 30.0,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.2,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.symmetric(
                horizontal: 10.0,
              ),
              scrollDirection: Axis.horizontal,
              itemCount: itemCount,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () => onItemTap(index),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 5.0, vertical: 10.0),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.2,
                      width: MediaQuery.of(context).size.width * 0.35,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: AssetImage('assets/images/image.png'),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
