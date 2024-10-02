import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/size_config.dart';


class AdaptiveLayout extends StatelessWidget {
  const AdaptiveLayout({
    super.key, required this.mobileLayout, required this.tabletLayout, required this.desktoplayout,
  });

  final WidgetBuilder mobileLayout, tabletLayout, desktoplayout;
  @override
  Widget build(BuildContext context) {
    log(MediaQuery.sizeOf(context).width.toString());
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: LayoutBuilder(builder: (context, constraints) {
          if (constraints.maxWidth < 900) {
            return  mobileLayout(context);
          } else if (constraints.maxWidth < 1300) {
            return  tabletLayout(context);
          } else {
            return  desktoplayout(context);
          }
        }),
    );
  }
}
