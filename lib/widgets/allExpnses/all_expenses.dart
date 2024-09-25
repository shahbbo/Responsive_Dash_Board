import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/allExpnses/a_ll_expenses_item_list.dart';
import 'package:responsive_dashboard/widgets/allExpnses/all_expenses_header.dart';


class ALlExpenses extends StatelessWidget {
  const ALlExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: const Column(
        children: [
          AllExpensesHeader(),
          SizedBox(height: 16),
          AllExpenseItemListView(),
        ],
      ),
    );
  }
}
