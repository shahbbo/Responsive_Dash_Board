import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dashboard/utils/text_styles.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile(
      {super.key,
      required this.image,
      required this.name,
      required this.email});

  final String image, name, email;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xffFAFAFA),
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(7),
      ),
      child: ListTile(
        leading: SvgPicture.asset(image),
        title: Text(name, style: TextStyles.semiBold16(context)),
        subtitle: Text(email, style: TextStyles.regular12(context)),
      ),
    );
  }
}
