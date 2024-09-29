import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/transaction_model.dart';
import 'package:responsive_dashboard/widgets/myCard/transaction_item.dart';


class TransactionHistoryListView extends StatelessWidget {
  const TransactionHistoryListView({super.key});

  static  List<TransactionModel> items = [
    TransactionModel(title: 'Cash Withdrawal', date: '13 Apr, 2022 ',
        amout: r'$20,129', isWithdrawal: true),

    TransactionModel(title: 'Landing Page project', date: '13 Apr, 2022 ',
        amout: r'$2,000', isWithdrawal: false),

    TransactionModel(title: 'Juni Mobile App project', date: '13 Apr, 2022 ',
        amout: r'$20,129', isWithdrawal: false),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: items.map((e) => TransactionItem(transactionModel: e)).toList(),
    );
    // return ListView.builder(
    //   itemCount: items.length,
    //   itemBuilder: (BuildContext context,index) {
    //     return TransactionItem(transactionModel: items[index]);
    //   },
    // );
  }
}
