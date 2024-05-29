import 'package:flutter/material.dart';

class CustomCategories extends StatefulWidget {
  final int itemCount;
  final Function(int) onChipTap;

  const CustomCategories({
    super.key,
    required this.itemCount,
    required this.onChipTap,
  });

  @override
  _CustomCategoriesState createState() => _CustomCategoriesState();
}

class _CustomCategoriesState extends State<CustomCategories> {
  bool _showAllChips = false;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.08,
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.symmetric(
            horizontal: 10.0,
          ),
          scrollDirection: Axis.horizontal,
          itemCount: widget.itemCount,
          itemBuilder: (BuildContext context, int index) {
            if (!_showAllChips && index == 4) {
              return GestureDetector(
                  onTap: () {
                    setState(() {
                      _showAllChips = true;
                    });
                  },
                  child: const Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 5.0, vertical: 10.0),
                    child: Chip(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50.0)),
                      ),
                      side: BorderSide(
                        color: Color(0xffEF456F),
                      ),
                      label: Text('+1'),
                      labelStyle: TextStyle(
                        color: Color(0xffEF456F),
                      ),
                    ),
                  ));
            } else {
              return Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 5.0, vertical: 10.0),
                child: GestureDetector(
                  onTap: () => widget.onChipTap(index),
                  child: Chip(
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(50.0)),
                    ),
                    side: const BorderSide(
                      color: Color(0xffEF456F),
                    ),
                    label: Text('Outdoor $index'),
                    labelStyle: const TextStyle(
                      color: Color(0xffEF456F),
                    ),
                  ),
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
