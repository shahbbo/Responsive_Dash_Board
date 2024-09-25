import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/all_expenses_item_header.dart';
import 'package:responsive_dashboard/utils/text_styles.dart';
import 'package:responsive_dashboard/widgets/allExpnses/all_expenses_item_header.dart';

class AllExpenseItem extends StatelessWidget {
  const AllExpenseItem(
      {super.key, required this.model, required this.selected});

  final AllExpenseItemHeaderModel model;

  final bool selected;

  @override
  Widget build(BuildContext context) {
    return selected
        ? ActiveAllExpenseItem(
            model: model,
          )
        : InActiveAllExpenseItem(
            model: model,
          );
  }
}

class InActiveAllExpenseItem extends StatelessWidget {
  const InActiveAllExpenseItem({super.key, required this.model});

  final AllExpenseItemHeaderModel model;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Color(0xFFF1F1F1)),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(
            allExpenseItemHeaderModel: model,
            colorContainer: const Color(0xFFFAFAFA),
            colorIcon: const Color(0xff4EB7F2),
            colorIcon2: const Color(0xFF064060),
          ),
          const SizedBox(
            height: 34,
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              model.title,
              style: TextStyles.semiBold16(context),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              model.data,
              style: TextStyles.regular14(context),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              model.price,
              style: TextStyles.semiBold24(context),
            ),
          )
        ],
      ),
    );
  }
}

class ActiveAllExpenseItem extends StatelessWidget {
  const ActiveAllExpenseItem({super.key, required this.model});

  final AllExpenseItemHeaderModel model;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        color: const Color(0xFF4DB7F2),
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Color(0xFF4DB7F2)),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(
            allExpenseItemHeaderModel: model,
            colorContainer: Colors.white.withOpacity(0.10000000149011612),
            colorIcon: Colors.white,
            colorIcon2: Colors.white,
          ),
          const SizedBox(
            height: 34,
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              model.title,
              style: TextStyles.medium16(context).copyWith(color: Colors.white),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              model.data,
              style: TextStyles.regular14(context)
                  .copyWith(color: const Color(0xFFFAFAFA)),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              model.price,
              style:
                  TextStyles.semiBold24(context).copyWith(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
