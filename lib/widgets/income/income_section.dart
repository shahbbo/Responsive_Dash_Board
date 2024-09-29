import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/custom_container.dart';
import 'package:responsive_dashboard/widgets/allExpnses/all_expenses_header.dart';


class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            AllExpensesHeader(
              title: 'Income',
            ),
            const SizedBox(
              height: 16,
            ),
            // IncomeSectionBody(),
          ],
        ));
  }
}


