import 'package:flutter/material.dart';
import 'package:task_manger/ui/screens/buy_screen.dart';
import 'package:task_manger/ui/screens/service_screen.dart';
import 'package:task_manger/ui/screens/home_screen.dart';
import 'package:task_manger/ui/screens/cart_screen.dart';
import 'package:task_manger/ui/utils/app_colors.dart';

import '../widgets/tm_app_bar.dart';

class MainBottomNavBarScreen extends StatefulWidget {
  const MainBottomNavBarScreen({super.key});

  @override
  State<MainBottomNavBarScreen> createState() => _MainBottomNavBarScreenState();
}

class _MainBottomNavBarScreenState extends State<MainBottomNavBarScreen> {
  int _selectedIndex = 0;
  final List<Widget> _screens = const [
    NewTaskScreen(),
    ServiceScreen(),
    BuyScreen(),
    CartScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TMAppBar(),
      body: _screens[_selectedIndex],
      bottomNavigationBar: NavigationBar(
        selectedIndex: _selectedIndex,
        onDestinationSelected: (int index) {
          _selectedIndex = index;
          setState(() {});
        },
        destinations: const [
          NavigationDestination(
              icon: Icon(Icons.home_outlined),
              label: 'Home'),
          NavigationDestination(
            icon: Icon(Icons.miscellaneous_services_outlined),
            label: 'Service',
          ),
          NavigationDestination(
              icon: Icon(Icons.attach_money),
              label: 'Buy'),
          NavigationDestination(
            icon: Icon(Icons.shopping_cart_outlined),
            label: 'Cart',
          ),
        ],
      ),
    );
  }
}


