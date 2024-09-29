import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/allExpnses/all_expenses_item_list.dart';
import 'package:responsive_dashboard/widgets/allExpnses/all_expenses_header.dart';
import 'package:responsive_dashboard/widgets/custom_container.dart';


class ALlExpenses extends StatelessWidget {
  const ALlExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            AllExpensesHeader(title: 'All Expnses',),
            const SizedBox(height: 16),
            const AllExpenseItemListView(),
          ],
        ),
    );
  }
}
