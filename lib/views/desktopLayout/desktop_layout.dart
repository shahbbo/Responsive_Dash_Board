import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/desktopLayout/my_card_section.dart';
import 'package:responsive_dashboard/widgets/all_expenses_quick_invoice.dart';
import 'package:responsive_dashboard/widgets/drawer/custom_drawer.dart';
import 'package:responsive_dashboard/widgets/income/income_section.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    // final screenHeight = MediaQuery.of(context).size.height;
    // final topPadding = screenHeight * 0.05;
    return Row(
      children: [
        Expanded(child: CustomDrawer()),
        const SizedBox(
          width: 32,
        ),
        const Expanded(
          flex: 4,
          child:Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: SingleChildScrollView(
                      child: Padding(
                          padding: EdgeInsets.only(top: 20),
                          child: AllExpensesQuickInvoice(),
                        ),
                    ),
                  ),
                  SizedBox(
                    width: 24,
                  ),
                  Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            MyCardSection(),
                            SizedBox(
                              height: 24,
                            ),
                            IncomeSection(),
                          ],
                        ),
                      ))
                ],
              ),
        ),
      ],
    );

    /*    return Row(
      children: [
        Expanded(child: CustomDrawer()),
        const SizedBox(
          width: 32,
        ),
        const Expanded(
          flex: 4,
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Row(
                    children: [
                      Expanded(
                          flex: 2,
                          child: Padding(
                            padding: EdgeInsets.only(top: 30),
                            child: AllExpensesQuickInvoice(),
                          )),
                      SizedBox(
                        width: 24,
                      ),
                      Expanded(
                          child: Column(
                            children: [
                              SizedBox(
                                height: 5,
                              ),
                              MyCardSection(),
                              SizedBox(
                                height: 24,
                              ),
                              IncomeSection(),
                            ],
                          ))
                    ],
                  ),
                ),
            ],
          ),
        ),
      ],
    );*/
  }
}
