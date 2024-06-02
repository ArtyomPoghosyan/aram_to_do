import 'package:flutter/material.dart';

import '../components/show_add_task.dart';
import '../screens/home/calendar.dart';
import '../screens/home/focus.dart';
import '../screens/home/homeScreen.dart';
import '../screens/home/initial_page.dart';
import '../screens/home/profile.dart';

class BottomNaviationBar extends StatefulWidget {
  final user;
  const BottomNaviationBar({super.key, required this.user});

  @override
  State<BottomNaviationBar> createState() => _BottomNaviationBar();
}

class _BottomNaviationBar extends State<BottomNaviationBar> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    PageController pageController = PageController();

    final List<Widget> screens = [
      HomeScreen(user: widget.user),
      CalendarScreen(),
      FocusScreen(),
      ProfileScreen(),
    ];

    void onItemTap(int index) {
      setState(() => currentIndex = index);
      pageController.jumpToPage(index);
    }

    void onPageChanged(int index) {
      setState(() => currentIndex = index);
    }

    return Scaffold(
      body: SizedBox(
        child: PageView(
          children: screens,
          controller: pageController,
          onPageChanged: onPageChanged,
        ),
      ),
      bottomNavigationBar: Container(
        height: 100,
        child: BottomNavigationBar(
          backgroundColor: Color.fromRGBO(54, 54, 54, 1),
          onTap: onItemTap,
          currentIndex: currentIndex,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.blue,
          selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
          items: [
            BottomNavigationBarItem(
                icon: const Icon(
                  Icons.home,
                ),
                label: "Index"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.calendar_today_outlined,
                ),
                label: "Calendar"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.watch_later_outlined,
                ),
                label: "Focuse"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person_outline,
                ),
                label: "Profile"),
          ],
        ),
      ),
      floatingActionButton: SizedBox(
        width: 64,
        height: 64,
        child: FloatingActionButton(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          onPressed: () => ShowDialog(context),
          child: Icon(Icons.add),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
