import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/quickInvoice/custom_button.dart';
import 'package:responsive_dashboard/widgets/quickInvoice/title_text_field.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TitleTextField(
                title: 'Customer name',
                hit: 'Type customer name',
              ),
            ),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: TitleTextField(
                title: 'Customer Email',
                hit: 'Type customer email',
              ),
            ),
          ],
        ),
        SizedBox(
          height: 24,
        ),

        Row(
          children: [
            Expanded(
              child: TitleTextField(
                title: 'Item name',
                hit: 'Type customer name',
              ),
            ),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: TitleTextField(
                title: 'Item mount',
                hit: 'Type Item mount',
              ),
            ),
          ],
        ),
        SizedBox(
          height: 24,
        ),
        Row(
          children: [
            Expanded(child: CustomButton(
              backgroundColor: Colors.transparent,
              title: 'Add more details',
              textColor: Color(0xFF4EB7F2),
            )),
            SizedBox(
              width: 24,
            ),
            Expanded(child: CustomButton()),
          ],
        )
      ],
    );
  }
}
