import 'package:flutter/material.dart';
import 'package:schaffen_task/widgets/custom_appbar_item.dart';

class CustomAppBar extends StatelessWidget {
  final Function onBackButtonPressed;

  const CustomAppBar({super.key, required this.onBackButtonPressed});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      snap: false,
      floating: false,
      forceElevated: false,
      backgroundColor: Colors.red,
      expandedHeight: MediaQuery.of(context).size.height * 0.25,
      collapsedHeight: 60.0,
      leading: ScrollAwareAppBarItem(
        child: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => onBackButtonPressed(),
        ),
      ),
      title: const ScrollAwareAppBarItem(
        child: Row(
          children: [
            CircleAvatar(
              radius: 25.0,
              backgroundImage: AssetImage('assets/images/image.png'),
            ),
            SizedBox(width: 8.0),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'The Weeknd',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
                Text('Community • +11K Members',
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.white,
                    ))
              ],
            ),
          ],
        ),
      ),
      actions: [
        ScrollAwareAppBarItem(
          child: IconButton(
            icon: const Icon(Icons.more_vert, color: Colors.white),
            onPressed: () {
              // handle menu button press
            },
          ),
        ),
      ],
      flexibleSpace: FlexibleSpaceBar(
        background: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Image.asset(
              'assets/images/image.png',
              fit: BoxFit.cover,
            ),
            const DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment(0.0, 0.5),
                  end: Alignment(0.0, 0.0),
                  colors: <Color>[
                    Color(0x60000000),
                    Color(0x00000000),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
