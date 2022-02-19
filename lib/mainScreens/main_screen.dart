import 'package:drivers_app/tabPages/earning_tab.dart';
import 'package:drivers_app/tabPages/profile_tab.dart';
import 'package:drivers_app/tabPages/ratings_tab.dart';
import 'package:flutter/material.dart';
import 'package:drivers_app/tabPages/home_tab.dart';

class MainScreen extends StatefulWidget {
  MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen>
    with SingleTickerProviderStateMixin {
  TabController? tabController;
  int selectedIndex = 0;

  onItemClicked(int index) {
    setState(() {
      selectedIndex = index;
      tabController!.index = selectedIndex;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        physics: const NeverScrollableScrollPhysics(),
        controller: tabController,
        children: [
          HomeTabPage(),
          EarningsTabPage(),
          RatingsTabPage(),
          ProfileTabPage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.credit_card),
            label: "earnings",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: "ratings",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "profile",
          ),
        ],
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.blue,
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: const TextStyle(fontSize: 14),
        showUnselectedLabels: true,
        currentIndex: selectedIndex,
        onTap: onItemClicked,
      ),
    );
  }
}
