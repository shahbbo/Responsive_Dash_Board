import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/text_styles.dart';
import 'package:responsive_dashboard/widgets/quickInvoice/latest_transaction_list_view.dart';


class  LatestTransaction extends StatelessWidget {
  const  LatestTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FittedBox(
          child: Text(
            'Latest Transaction',
            style: TextStyles.medium16(context),
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        const LatestTransactionListView(),
      ],
    );
  }
}
