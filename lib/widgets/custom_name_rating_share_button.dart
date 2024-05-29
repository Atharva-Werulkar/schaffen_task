import 'package:flutter/material.dart';

class CustomNameWithRatingAndShareButton extends StatelessWidget {
  final String name;
  final String membersCount;
  final String assetPath;

  const CustomNameWithRatingAndShareButton({
    super.key,
    required this.name,
    required this.membersCount,
    required this.assetPath,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        height: MediaQuery.of(context).size.height * 0.1,
        color: Colors.red,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    name,
                    style: const TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(membersCount,
                      style: const TextStyle(
                        fontSize: 14.0,
                        color: Colors.white,
                      ))
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
              child: Image.asset(
                assetPath,
                height: 40.0,
                width: 40.0,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
