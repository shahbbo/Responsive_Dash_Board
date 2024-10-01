import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/custom_container.dart';
import 'package:responsive_dashboard/widgets/allExpnses/all_expenses_header.dart';
import 'package:responsive_dashboard/widgets/income/income_section_body.dart';


class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomContainer(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            AllExpensesHeader(
              title: 'Income',
            ),
            SizedBox(
              height: 16,
            ),
            IncomeSectionBody(),
          ],
        ));
  }
}
