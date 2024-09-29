import 'package:flutter/material.dart';
import 'package:responsive_dashboard/generated/assets.dart';
import 'package:responsive_dashboard/models/user_Info_model.dart';
import 'package:responsive_dashboard/widgets/drawer/user_info_list_tile.dart';

class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({super.key});

  static List<UserInfoModel> items = [
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
        children: items.map((e) => IntrinsicWidth(child: UserInfoListTile(model: e,))).toList(),
      ),
    ) ;
    /*return SizedBox(
      height: 75,
      child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          physics: const AlwaysScrollableScrollPhysics(),
          itemCount: items.length,
          itemBuilder: (context, index) {
            return IntrinsicWidth(
              child: UserInfoListTile(
                model: items[index],
              ),
            );
          }),
    );*/
  }
}
