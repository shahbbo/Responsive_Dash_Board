import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/text_styles.dart';
import 'package:responsive_dashboard/widgets/allExpnses/m_y_drop_dowm.dart';

class AllExpensesHeader extends StatelessWidget {
   const AllExpensesHeader({super.key,required this.title});

  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title, style: TextStyles.semiBold20(context)),
        const Spacer(),
        const MYDropDowm(),
      ],
    );
  }
}
