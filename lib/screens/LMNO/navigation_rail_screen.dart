import 'package:flutter/material.dart';

class NavigationRailScreen extends StatefulWidget {
  const NavigationRailScreen({Key? key}) : super(key: key);

  @override
  State<NavigationRailScreen> createState() => _NavigationRailScreenState();
}

class _NavigationRailScreenState extends State<NavigationRailScreen> {
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
      child: const Center(child: Text("Favorites")),
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
        title: const Text('NavigationRail'),
        centerTitle: true,
      ),
      body: Row(
        children: [
          NavigationRail(
            minWidth: 100,
            backgroundColor: Colors.grey,
            labelType: NavigationRailLabelType.all,
            selectedLabelTextStyle: const TextStyle(color: Colors.blue),
            unselectedLabelTextStyle: const TextStyle(color: Colors.blueGrey),
            elevation: 30,
            useIndicator: true,
            indicatorColor: Colors.cyan[50],
            leading: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: GestureDetector(child: const Text("Settings")),
            ),
            trailing: Column(
              children: const [
                SizedBox(
                  height: 20,
                ),
                Divider(
                  color: Colors.red,
                  thickness: 3,
                ),
                Text("Logout"),
              ],
            ),
            destinations: const [
              NavigationRailDestination(
                  icon: Icon(Icons.home_outlined),
                  selectedIcon: Icon(Icons.home),
                  label: Text('Home')),
              NavigationRailDestination(
                  icon: Icon(Icons.star_border),
                  selectedIcon: Icon(Icons.star),
                  label: Text('Favorites')),
              NavigationRailDestination(
                  icon: Icon(Icons.circle_outlined),
                  selectedIcon: Icon(Icons.circle),
                  label: Text('Profile')),
            ],
            selectedIndex: currentPageIndex,
            onDestinationSelected: (int index) {
              currentPageIndex = index;
              setState(() {});
            },
          ),
          Expanded(
            child: Container(
              width: 100,
              height: double.infinity,
              color: Colors.red,
              child: screens[currentPageIndex],
            ),
          )
        ],
      ),
    );
  }
}
