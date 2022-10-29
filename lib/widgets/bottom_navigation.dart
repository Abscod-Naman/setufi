import 'package:flutter/material.dart';
import 'package:setufi/screens/home_screen.dart';

import '../screens/collection.dart';
import '../screens/inventory.dart';
import '../screens/invoices.dart';
import '../screens/purchases.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  PageController pageController = PageController();
  int currentIndex = 0;
  List<Widget> children = [];
  var userDetails = {};
  void onTap(int page) {
    setState(() {
      currentIndex = page;
    });
    pageController.jumpToPage(page);
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    children = [
      const HomeScreen(),
      const Collection(),
      const Invoices(),
      const Purchases(),
      const Inventory(),
    ];
    return Scaffold(
      body: PageView(
        onPageChanged: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        controller: pageController,
        children: children,
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTap,
        selectedFontSize: 13,
        unselectedFontSize: 12,
        unselectedItemColor: Colors.black45,
        selectedItemColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              currentIndex == 0 ? Icons.home_filled : Icons.home_outlined,
              color: Theme.of(context).primaryColor,
              size: currentIndex == 0 ? 25 : 20,
            ),
            label: "Dashboard",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              currentIndex == 1
                  ? Icons.collections_bookmark
                  : Icons.collections_bookmark_outlined,
              color: Theme.of(context).primaryColor,
              size: currentIndex == 1 ? 25 : 20,
            ),
            label: "Collection",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              currentIndex == 2 ? Icons.article : Icons.article_outlined,
              color: Theme.of(context).primaryColor,
              size: currentIndex == 2 ? 25 : 20,
            ),
            label: "Invoices",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              currentIndex == 3 ? Icons.sell : Icons.sell_outlined,
              color: Theme.of(context).primaryColor,
              size: currentIndex == 3 ? 25 : 20,
            ),
            label: "Purchases",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              currentIndex == 4
                  ? Icons.inventory_2
                  : Icons.inventory_2_outlined,
              color: Theme.of(context).primaryColor,
              size: currentIndex == 4 ? 25 : 20,
            ),
            label: "Inventorys",
          ),
        ],
      ),
    );
  }
}
