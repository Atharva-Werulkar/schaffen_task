import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';

class CustomDescription extends StatelessWidget {
  final String description;

  const CustomDescription({
    super.key,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ExpandableText(
              description,
              expandText: 'Read more',
              collapseText: 'Show less',
              maxLines: 5,
              linkColor: Colors.red,
              style: const TextStyle(
                fontSize: 14.0,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
