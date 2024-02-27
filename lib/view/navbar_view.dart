import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:ventruely/res/color.dart';
import 'package:ventruely/view/chat/my_chat_view.dart';
import 'package:ventruely/view/group/group_view.dart';
import 'package:ventruely/view/home/home_view.dart';
import 'package:ventruely/view/notifications/notification_view.dart';
import 'package:ventruely/view/profile/profile_view.dart';
import 'package:ventruely/view/search/search_view.dart';


class homeNavBar extends StatefulWidget {
  const homeNavBar({Key? key}) : super(key: key);

  @override
  _homeNavBarState createState() => _homeNavBarState();
}

class _homeNavBar extends StatefulWidget {
  const _homeNavBar({Key? key}) : super(key: key);

  @override
  _homeNavBarState createState() => _homeNavBarState();
}

class _homeNavBarState extends State<homeNavBar> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _getPage(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        height: 80,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(topRight: Radius.circular(15), topLeft: Radius.circular(15)),
          color: Colors.white,
        ),
        child: GNav(
          gap: 10,
          activeColor: Colors.white,
          color: Colors.black45,
          iconSize: 22,
          padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 12),
          duration: const Duration(milliseconds: 500),
          tabBackgroundColor:  AppColor.appColor,
          tabs: const [
            GButton(
              icon: Icons.home_outlined,
              gap: 6, // Adjust the gap as needed
            ),
            GButton(
              icon: Icons.search_outlined,

              gap: 6, // Adjust the gap as needed
            ),
            GButton(
              icon: Icons.group,

              gap: 6, // Adjust the gap as needed
            ),
            GButton(
              icon: Icons.notifications_outlined,

              gap: 6, // Adjust the gap as needed
            ),
            GButton(
              icon: Icons.person_outline,

              gap: 6, // Adjust the gap as needed
            ),
            GButton(
              icon: Icons.message,

              gap: 6, // Adjust the gap as needed
            ),
          ],
          selectedIndex: _selectedIndex,
          onTabChange: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
        ),
      ),
    );
  }

  Widget _getPage(int index) {
    switch (index) {
      case 0:
        return const HomeView();
      case 1:
        return const SearchView();
      case 2:
        return const GroupView();
      case 3:
        return const NotificationsView();
      case 4:
        return const ProfileView();
      case 5:
        return const MyChatView();
      default:
        return const Center(child: Text('Page not found'));
    }
  }
}
