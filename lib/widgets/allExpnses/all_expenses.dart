import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/allExpnses/all_expenses_header.dart';

class ALlExpenses extends StatelessWidget {
  const ALlExpenses({super.key});

  @override
  Widget build(BuildContext context) {
        children: [
          AllExpensesHeader(),
          SizedBox(height: 16),
          AllExpenseItemListView(),
        ],
      ),
    );
  }
}
