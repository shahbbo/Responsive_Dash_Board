import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/text_styles.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
            'Quick Invoice',
            style: TextStyles.semiBold20(context)),
        const Spacer(),
        FittedBox(
          fit: BoxFit.scaleDown,
          child: TextButton.icon(
            style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: const Color(0xFF4DB7F2),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
              onPressed: (){},
              label:  FittedBox(
                  fit: BoxFit.scaleDown,
                  alignment: Alignment.centerLeft,
                  child: Text('Add ', style: TextStyles.semiBold16(context))),
              icon: const Icon(Icons.add)),
        ),
      ],
    );
  }
}
