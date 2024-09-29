import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/allExpnses/all_expenses.dart';
import 'package:responsive_dashboard/widgets/quickInvoice/quick_invoice.dart';

class AllExpensesQuickInvoice extends StatelessWidget {
  const AllExpensesQuickInvoice({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        ALlExpenses(),
        SizedBox(
          height: 24,
        ),
        QuickInvoice(),
      ],
    );
  }
}
