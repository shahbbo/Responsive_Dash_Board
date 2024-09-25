import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dashboard/models/all_expenses_item_header.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader(
      {super.key,
      required this.allExpenseItemHeaderModel,
      required this.colorContainer,
      required this.colorIcon,
      required this.colorIcon2});

  final AllExpenseItemHeaderModel allExpenseItemHeaderModel;
  final Color colorContainer, colorIcon, colorIcon2;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
            child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 60),
                child: AspectRatio(
                    aspectRatio: 1,
                    child: Container(
                        decoration: ShapeDecoration(
                          color: colorContainer,
                          shape: const OvalBorder(),
                        ),
                        child: Center(
                          child: SvgPicture.asset(
                            allExpenseItemHeaderModel.image,
                            colorFilter:
                                ColorFilter.mode(colorIcon, BlendMode.srcIn),
                          ),
                        ))))),
        const Expanded(child: SizedBox()),
        Icon(Icons.arrow_forward_ios, color: colorIcon2),
      ],
    );
  }
}
