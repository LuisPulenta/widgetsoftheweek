import 'package:flutter/material.dart';

class NavigationBarScreen extends StatefulWidget {
  const NavigationBarScreen({Key? key}) : super(key: key);

  @override
  State<NavigationBarScreen> createState() => _NavigationBarScreenState();
}

class _NavigationBarScreenState extends State<NavigationBarScreen> {
  int currentPageIndex = 0;

  List<Widget> screens = [
    Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.blue,
      child: const Center(child: Text("Home")),
    ),
    Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.red,
      child: const Center(child: Text("Explore")),
    ),
    Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.yellow,
      child: const Center(child: Text("Profile")),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('NavigationBar'),
        centerTitle: true,
      ),
      body: screens[currentPageIndex],
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.explore), label: 'Explore'),
          NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
        ],
        selectedIndex: currentPageIndex,
        labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
        backgroundColor: Colors.amber.withOpacity(0.3),
        animationDuration: const Duration(
          milliseconds: (500),
        ),
        onDestinationSelected: (int index) {
          currentPageIndex = index;
          setState(() {});
        },
      ),
    );
  }
}
