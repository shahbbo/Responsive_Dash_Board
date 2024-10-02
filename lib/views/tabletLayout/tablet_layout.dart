import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/all_expenses_quick_invoice.dart';
import 'package:responsive_dashboard/widgets/my_card_income.dart';


class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(
              flex: 3,
              child: Padding(
                padding: EdgeInsets.only(top: 20),
                child: CustomScrollView(
                    slivers: [
                      SliverToBoxAdapter(child: AllExpensesQuickInvoice()),
                    ]),
              )),
          SizedBox(
            width: 24,
          ),
          Expanded(
            flex: 2,
              child: CustomScrollView(
                slivers: [
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: MyCardIncome(),
                    ),
                  )
                ],
              )),
        ],
      ),
    );
  }
}
