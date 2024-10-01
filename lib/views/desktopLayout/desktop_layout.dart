import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/my_card_income.dart';
import 'package:responsive_dashboard/widgets/all_expenses_quick_invoice.dart';
import 'package:responsive_dashboard/widgets/drawer/custom_drawer.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: CustomDrawer()),
        const SizedBox(
          width: 32,
        ),
        const Expanded(
          flex: 4,
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: CustomScrollView(
                  slivers: [
                    SliverToBoxAdapter(
                      child: Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: AllExpensesQuickInvoice(),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 24,
              ),
              Expanded(
                  child: CustomScrollView(
                    slivers:[
                      SliverToBoxAdapter(
                        child: Padding(
                          padding: EdgeInsets.only(top: 10 , bottom: 10),
                          child: MyCardIncome(),
                        ),
                      )
                    ],
              ))
            ],
          ),
        ),
      ],
    );
    /*return Row(
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
                            Expanded(child: IncomeSection()),
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
