import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dashboard/models/drawer_list_model.dart';
import 'package:responsive_dashboard/utils/text_styles.dart';

class DrawerItem extends StatelessWidget {
   const DrawerItem({
     super.key,
     required this.drawerListModel,
     required this.isActived});

  final bool isActived;
  final DrawerListModel drawerListModel;

  @override
  Widget build(BuildContext context) {
    return isActived
        ? ActiveDrawerItem(drawerItemModel: drawerListModel)
        : InActiveDrawerItem(drawerItemModel: drawerListModel);
  }
}

class InActiveDrawerItem extends StatelessWidget {
  const InActiveDrawerItem({super.key, required this.drawerItemModel});
  final DrawerListModel drawerItemModel ;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drawerItemModel.image),
          drawerItemModel.title,
          style: TextStyles.regular16(context),
        ),
    );
  }
}


class ActiveDrawerItem extends StatelessWidget {
  const ActiveDrawerItem({super.key, required this.drawerItemModel});

  final DrawerListModel drawerItemModel ;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drawerItemModel.image),
      title: FittedBox(
        alignment: AlignmentDirectional.centerStart,
        fit: BoxFit.scaleDown,
        child: Text(
          drawerItemModel.title,
          style: TextStyles.bold16(context),
        ),
      ),
      trailing: Container(
        decoration: const BoxDecoration(color: Color(0xFF4EB7F2)),
      ),
    );
  }
}