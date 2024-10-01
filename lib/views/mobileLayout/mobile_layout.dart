import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/all_expenses_quick_invoice.dart';
import 'package:responsive_dashboard/widgets/custom_container.dart';
import 'package:responsive_dashboard/widgets/my_card_income.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomContainer(
      padding: EdgeInsets.all(8.0),
      child: CustomScrollView(slivers: [
        SliverToBoxAdapter(
          child: AllExpensesQuickInvoice(),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 24,
          ),
        ),
        SliverToBoxAdapter(
          child: MyCardIncome(),
        )
      ]),
    );
  }
}
