import 'package:flutter/material.dart';
import './screens/splash_screen.dart';

//AUTH SCREENS
import './screens/auth/login_screen.dart';

//HOMEPAGE SCREENS
import './screens/homepage/dashboard_screen.dart';
import './screens/homepage/home_screen.dart';
import './screens/homepage/appointments_screen.dart';
import './screens/homepage/inbox_screen.dart';
import './screens/homepage/profile_screen.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Slender',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.purple,
      ),
      initialRoute: SplashScreen.id,
      routes: {
        
        //Splash Screens
        SplashScreen.id: (context) => SplashScreen(),

        //Auth Screens
        LoginScreen.id: (context) => LoginScreen(),

        //Homepage Screens
        DashboardScreen.id: (context) => DashboardScreen(),
        HomeScreen.id: (context) => HomeScreen(),
        ProfileScreen.id: (context) => ProfileScreen(),
        AppointmentsScreen.id: (context) => AppointmentsScreen(),
        InboxScreen.id: (context) => InboxScreen(),
        

      },
      // home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}