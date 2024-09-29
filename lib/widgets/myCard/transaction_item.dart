import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/transaction_model.dart';
import 'package:responsive_dashboard/utils/text_styles.dart';

class TransactionItem extends StatelessWidget {
  const TransactionItem({super.key, required this.transactionModel});
  final TransactionModel  transactionModel ;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: const Color(0xFFFAFAFA),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        title: Text(
          transactionModel.title,
          style:TextStyles.semiBold16(context),
        ),
        subtitle: Text(
          transactionModel.date,
          style: TextStyles.regular16(context).copyWith(
            color: const Color(0xFFAAAAAA),
          ),
        ),
        trailing: Text(
          transactionModel.amout,
          style: TextStyles.semiBold20(context).copyWith(
            color: transactionModel.isWithdrawal ? const Color(0xFFF3735E) : const Color(0xFF7CD87A) ,
          ),
        ),
      ),
    );
  }
}
