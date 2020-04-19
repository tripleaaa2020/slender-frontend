import 'package:flutter/material.dart';
import '../../../utils/styles.dart';
import './home_screen.dart';
import './appointments_screen.dart';
import './inbox_screen.dart';
import './profile_screen.dart';

class DashboardScreen extends StatefulWidget {
  static const String id = 'dashboard_screen';

  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  var _currentIndex = 0;

  final _homepageScreens = [
    HomeScreen(),
    AppointmentsScreen(),
    InboxScreen(),
    ProfileScreen()
  ];

  static const _bottomNavigationItems = [
    {
      'title': 'Home',
      'icon': Icons.home,
    },
    {
      'title': 'Appointments',
      'icon': Icons.notifications,
    },
    {
      'title': 'Inbox',
      'icon': Icons.message,
    },
    {
      'title': 'Profile',
      'icon': Icons.person,
    },
  ];

  void _onItemTapped(var index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kSlenderLightGrey,
        automaticallyImplyLeading: false,
        title: Center(
          child: Image.asset('assets/images/slender-no-motto-logo.png')
        ),
      ),
      body: _homepageScreens[_currentIndex],
      bottomNavigationBar: _bottomNavigationBar(),
    );
  }

  Widget _bottomNavigationBar() {

    List<BottomNavigationBarItem> _bottomNavigationItemWidgets = [];
    for (var i=0; i<_bottomNavigationItems.length; i++) {
      _bottomNavigationItemWidgets.add(
        BottomNavigationBarItem(
          icon: Icon(
            _bottomNavigationItems[i]['icon'],
            color: _currentIndex == i ? kSlenderPurple : kSlenderGrey,
          ),
          title: Text(
            _bottomNavigationItems[i]['title'],
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.normal,
              color: _currentIndex == i ? kSlenderPurple : kSlenderGrey,
            ),
          ),
          backgroundColor: kSlenderLightGrey,
        ),
      );
    }

    return BottomNavigationBar(
      currentIndex: _currentIndex,
      onTap: (index) => _onItemTapped(index),
      type: BottomNavigationBarType.fixed,
      items: _bottomNavigationItemWidgets
    );
  }
}
