import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/allExpnses/all_expenses.dart';
import 'package:responsive_dashboard/widgets/quickInvoice/quick_invoice.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
            flex: 2,
            child: Padding(
              padding: EdgeInsets.only(top: 20),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    ALlExpenses(),
                    SizedBox(
                      height: 24,
                    ),
                    QuickInvoice(),
                  ],
                ),
              ),
            )
        ),
        Expanded(child: SizedBox())
      ],
    );
  }
}
