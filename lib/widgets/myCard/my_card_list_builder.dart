import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/myCard/my_card.dart';


class MyCardListBuilder extends StatelessWidget {
  const MyCardListBuilder({super.key, required this.pageController,});

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 270,
      child: PageView.builder(
        controller: pageController,
        itemCount: 3,
        itemBuilder: (context, index) {
          return const MyCard();
        },
      ),
    );
    /*return SizedBox(
      height: 270,
      child: ExpandablePageView.builder(
        controller: pageController,
        itemCount: 3,
        itemBuilder: (context, index) {
          return const MyCard();
        },
      ),
    );*/
  }
}
