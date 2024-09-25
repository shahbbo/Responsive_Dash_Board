import 'package:flutter/material.dart';
import 'package:responsive_dashboard/generated/assets.dart';
import 'package:responsive_dashboard/models/UserInfoModel.dart';
import 'package:responsive_dashboard/widgets/drawer/user_info_list_tile.dart';

class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({super.key});

  static List<UserInfoModel> item = [
    UserInfoModel(
        image: Assets.frame1,
        name: 'Madrani Andi',
        email: 'Madraniadi20@gmail'),
    UserInfoModel(
        image: Assets.frame2,
        name: 'Josua Nunito',
        email: 'Josh Nunito@gmail.com'),
    UserInfoModel(
        image: Assets.frame1,
        name: 'Madrani Andi',
        email: 'Madraniadi20@gmail'),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: item.map((e) => IntrinsicWidth(child: UserInfoListTile(model: e,))).toList(),
      ),
    ) ;
    /*return ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: item.length,
        itemBuilder: (context, index) {
          return UserInfoListTile(
            userInfoModel: item[index],
          );
        });*/
  }
}
