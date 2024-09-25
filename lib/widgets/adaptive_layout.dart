import 'package:flutter/material.dart';


class AdaptiveLayout extends StatelessWidget {
  const AdaptiveLayout({
    super.key, required this.mobileLayout, required this.tabletLayout, required this.desktoplayout,
  });

  final WidgetBuilder mobileLayout, tabletLayout, desktoplayout;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: LayoutBuilder(builder: (context, constraints) {
          if (constraints.maxWidth < 600) {
            return  mobileLayout(context);
          } else if (constraints.maxWidth < 1000) {
            return  tabletLayout(context);
          } else {
            return  desktoplayout(context);
          }
        }));
  }
}
