import 'package:flutter/material.dart';

class ScrollAwareAppBarItem extends StatelessWidget {
  final Widget child;

  const ScrollAwareAppBarItem({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    final FlexibleSpaceBarSettings settings =
        context.dependOnInheritedWidgetOfExactType<FlexibleSpaceBarSettings>()!;
    final double opacity = settings.currentExtent / settings.maxExtent;

    return Opacity(
      opacity: opacity,
      child: child,
    );
  }
}
