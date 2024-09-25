import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/desktopLayout/desktop_layout.dart';
import 'package:responsive_dashboard/views/mobileLayout/mobile_layout.dart';
import 'package:responsive_dashboard/views/tabletLayout/tablet_layout.dart';
import 'package:responsive_dashboard/widgets/adaptive_layout.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color(0xFFF7F9FA),
      body: AdaptiveLayout(
          mobileLayout: (context) => const MobileLayout(),
          tabletLayout: (context) => const TabletLayout(),
          desktoplayout: (context) => const DesktopLayout(),
    ));
  }
}
