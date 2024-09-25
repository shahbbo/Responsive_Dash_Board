import 'package:flutter/material.dart';
import 'package:responsive_dashboard/generated/assets.dart';
import 'package:responsive_dashboard/models/UserInfoModel.dart';
import 'package:responsive_dashboard/models/drawer_list_model.dart';
import 'package:responsive_dashboard/widgets/drawer/custom_drawer_item_builder.dart';
import 'package:responsive_dashboard/widgets/drawer/drawer_item.dart';
import 'package:responsive_dashboard/widgets/drawer/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
   CustomDrawer({super.key});

  final UserInfoModel userInfoModel = UserInfoModel(
      image: Assets.frame1, title: 'Madrani Andi', subTitle: 'Madraniadi20@gmail');
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(25),
          bottomRight: Radius.circular(25),
        ),
      ),
      width: size.width * 0.7,
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: UserInfoListTile(userInfoModel: userInfoModel,
                  ),
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 20,
            ),
          ),
          const CustomDrawerItemBuilder(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                // const Expanded(
                //   child: SizedBox(
                //     height: 20,
                //   ),
                // ),
                const Spacer(),
                InActiveDrawerItem(
                    drawerItemModel: DrawerListModel(
                        title: 'Setting system', image: Assets.setting)),
                InActiveDrawerItem(
                    drawerItemModel: DrawerListModel(
                        title: 'Logout account', image: Assets.logoutAccount)),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
