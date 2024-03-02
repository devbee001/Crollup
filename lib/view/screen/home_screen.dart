import 'package:crollup_test/model/quick_action_model.dart';
import 'package:crollup_test/model/transaction_model.dart';
import 'package:crollup_test/view/themes/app_colors.dart';
import 'package:crollup_test/view/widgets/home_balance_card.dart';
import 'package:crollup_test/view/widgets/invest_card.dart';
import 'package:crollup_test/view/widgets/quick_action.dart';
import 'package:crollup_test/view/widgets/space.dart';
import 'package:crollup_test/view/widgets/transaction_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:iconly/iconly.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  List<QuickActionModel> quickActions = [
    QuickActionModel(title: 'Invest', icon: Icons.add, color: AppColors.green),
    QuickActionModel(
        title: 'Withdraw',
        icon: Icons.signal_cellular_alt_outlined,
        color: AppColors.pink),
    QuickActionModel(
        title: 'History', icon: Icons.settings, color: AppColors.blue),
  ];
  List<TransactionModel> option = [
    TransactionModel(
        title: 'Payout for My new car',
        date: 'January 5, 2020',
        status: 'Pending'),
    TransactionModel(
        title: 'Fund Card', date: 'January 8, 2020', status: 'Successful'),
    TransactionModel(
        title: 'Fund Card', date: 'January 5, 2020', status: 'Successful'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: const Icon(
            Icons.arrow_back_ios,
            color: AppColors.black,
            size: 17,
          ),
          backgroundColor: AppColors.white,
          elevation: 0,
          title: const Text(
            'Buy my first car',
            style: TextStyle(
                color: AppColors.black,
                fontSize: 16,
                fontWeight: FontWeight.bold),
          ),
        ),
        body: ListView(
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: HomeBalanceCard(),
            ),
            Space.h(20),
            Padding(
              padding: const EdgeInsets.only(left: 60, right: 60),
              child: QuickActions(quickActions: quickActions),
            ),
            Space.h(20),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'You invested in',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: AppColors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Space.h(10),
            const Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: InvestCard(),
            ),
            Space.h(10),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Recent Transactions',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: AppColors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w500)),
                  const Text('See all',
                      style: TextStyle(
                          color: AppColors.purple,
                          fontSize: 12,
                          fontWeight: FontWeight.bold))
                ],
              ),
            ),
            Space.h(10),
            Column(
              children: List.generate(
                  option.length,
                  (index) => TransactionCard(
                        date: option[index].date,
                        title: option[index].title,
                        status: option[index].status,
                      )),
            )
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showUnselectedLabels: true,
          selectedLabelStyle: const TextStyle(
              color: AppColors.black,
              fontSize: 12), // Set the color for the selected item
          selectedItemColor:
              AppColors.black, // Set the color for the selected item
          unselectedItemColor:
              AppColors.black, // Set the color for unselected items
          currentIndex: 0,

          elevation: 0,

          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                IconlyLight.home,
                color: AppColors.black,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.account_balance_wallet_outlined,
                color: AppColors.black,
              ),
              label: 'Wallet',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.explore_outlined,
                color: AppColors.black,
              ),
              label: 'Explore',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.flight_takeoff,
                color: AppColors.black,
              ),
              label: 'Favorite',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.account_circle_outlined,
                color: AppColors.black,
              ),
              label: 'Profile',
            ),
          ],
        ));
  }
}
