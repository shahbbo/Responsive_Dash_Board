import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/text_styles.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('Quick Invoice',
            style: TextStyles.semiBold20(context)),
        const Spacer(),
        Container(
          decoration: const ShapeDecoration(
            color: Color(0xFFFAFAFA),
            shape: OvalBorder(),
          ),
          child: const Icon(
            Icons.add,
            color: Color(0xFF4DB7F2),
          ),
        ),
      ],
    );
  }
}
