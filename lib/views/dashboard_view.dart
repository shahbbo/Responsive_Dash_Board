import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/size_config.dart';
import 'package:responsive_dashboard/views/desktopLayout/desktop_layout.dart';
import 'package:responsive_dashboard/views/mobileLayout/mobile_layout.dart';
import 'package:responsive_dashboard/views/tabletLayout/tablet_layout.dart';
import 'package:responsive_dashboard/widgets/adaptive_layout.dart';
import 'package:responsive_dashboard/widgets/drawer/custom_drawer.dart';

class DashboardView extends StatelessWidget {
  DashboardView({super.key});

  final GlobalKey<ScaffoldState> scaffoldState = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldState,
        drawer: MediaQuery.sizeOf(context).width < 1380
            ? SizedBox(
                width: MediaQuery.sizeOf(context).width * 0.5,
                child: CustomDrawer())
            : null,
        appBar: MediaQuery.sizeOf(context).width < 1380
            ? AppBar(
                title: const Text('Dashboard'),
                // centerTitle: true,
                elevation: 2,
                backgroundColor: const Color(0xFF4EB7F2),
                leading: IconButton(
                    onPressed: () {
                      scaffoldState.currentState?.openDrawer();
                    },
                    icon: const Icon(Icons.menu)),
              )
            : null,
        backgroundColor: const Color(0xFFF7F9FA),
        body: AdaptiveLayout(
          mobileLayout: (context) => const MobileLayout(),
          tabletLayout: (context) => const TabletLayout(),
          desktoplayout: (context) => const DesktopLayout(),
        ));
  }
}
