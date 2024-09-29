import 'package:flutter/material.dart';
import 'package:responsive_dashboard/generated/assets.dart';
import 'package:responsive_dashboard/models/drawer_list_model.dart';
import 'package:responsive_dashboard/widgets/drawer/drawer_item.dart';

class CustomDrawerItemBuilder extends StatefulWidget {
  const CustomDrawerItemBuilder({
    super.key,
  });


  @override
  State<CustomDrawerItemBuilder> createState() => _CustomDrawerItemBuilderState();
}

class _CustomDrawerItemBuilderState extends State<CustomDrawerItemBuilder> {

  final List<DrawerListModel> drawerList = [
    DrawerListModel(image: Assets.dashboard, title: 'Dashboard'),
    DrawerListModel(image: Assets.myTransaction, title: 'My Transactions'),
    DrawerListModel(image: Assets.statistics, title: 'Statistics'),
    DrawerListModel(image: Assets.walletAccount, title: 'Wallet Account'),
    DrawerListModel(image: Assets.myInvestments, title: 'My Investments'),
    DrawerListModel(image: Assets.setting, title: 'Setting'),
  ];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: drawerList.length,
      itemBuilder: (context, index) {
        return GestureDetector(
            onTap:(){
              if (selectedIndex != index) {
                setState(() {
                  selectedIndex = index;
                });
              }
            },
            child: DrawerItem(drawerListModel: drawerList[index],
            isActived: selectedIndex == index,
            ));
      },
    );
  }
}
