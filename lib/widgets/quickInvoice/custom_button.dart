import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/text_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key, this.backgroundColor, this.title, this.textColor});

  final Color? backgroundColor;
  final String? title;

  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: TextButton(
        style: TextButton.styleFrom(
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
              side: const BorderSide(
                color: Color(0xFF4DB7F2),
                width: 2,
              ),
            ),
            backgroundColor: backgroundColor ?? const Color(0xFF4DB7F2),
          ),
        onPressed: () {},
        child: FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            title ?? 'Send Money',
            style: TextStyles.semiBold18(context)
                .copyWith(color: textColor ?? Colors.white),
          ),
        ),
      ),
    );
    /*child: ElevatedButton(
        focusNode: FocusNode(),
        autofocus: true,
        style: ElevatedButton.styleFrom(
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
            side: const BorderSide(
              color: Color(0xFF4DB7F2),
              width: 2,
            ),
          ),
          backgroundColor: backgroundColor ?? const Color(0xFF4DB7F2),
        ),
        onPressed:() {},
        child: FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            title ?? 'Send Money',
            style: TextStyles.semiBold18(context).copyWith(
                color: textColor ?? Colors.white
            ),
          ),
        ),
      ),*/
  }
}
