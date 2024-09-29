class TransactionModel {
  final String title;
  final String date;
  final String amout;
  final bool isWithdrawal;

  TransactionModel({
    required this.title,
    required this.date,
    required this.amout,
    required this.isWithdrawal,
  });
}