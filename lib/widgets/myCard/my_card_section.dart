import 'dart:math';

import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/custom_container.dart';
import 'package:responsive_dashboard/widgets/myCard/dot_indacitor.dart';
import 'package:responsive_dashboard/widgets/myCard/my_card_list_builder.dart';
import 'package:responsive_dashboard/widgets/myCard/transaction_history.dart';

class MyCardSection extends StatefulWidget {
  const MyCardSection({
    super.key,
  });

  @override
  State<MyCardSection> createState() => _MyCardSectionState();
}


class _MyCardSectionState extends State<MyCardSection> {

  late PageController pageController;
  int currentPageIndex = 0;

  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      currentPageIndex = pageController.page!.round();
      setState((){});
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    log(size.width);
    return CustomContainer(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'My card',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          MyCardListBuilder(
            pageController: pageController,
          ),
          const SizedBox(
            height: 19,
          ),
          DotIndacitor(
            currentIndexPage: currentPageIndex,
          ),
          const Divider(
            color: Color(0xFFF1F1F1),
            height: 30,
            thickness: 2,
          ),
          const TransactionHistory(),
        ],
      ),
    );
  }
}
