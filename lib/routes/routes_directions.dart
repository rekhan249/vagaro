import 'package:flutter/material.dart';
import 'package:vagaro/nav_bottom/nav_bottom_screen.dart';
import 'package:vagaro/screens/appoint_screen.dart';
import 'package:vagaro/screens/forget_password.dart';
import 'package:vagaro/screens/home_screen.dart';
import 'package:vagaro/screens/notification_screen.dart';
import 'package:vagaro/screens/profile.dart';
import 'package:vagaro/screens/search_screen.dart';
import 'package:vagaro/screens/signup_page.dart';
import 'package:vagaro/splash_screens/splash_screen.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SplashScreen.nameRoute:
      return MaterialPageRoute(builder: (_) => const SplashScreen());
    case NavBottomScreen.nameRoute:
      return MaterialPageRoute(builder: (_) => const NavBottomScreen());
    case HomeScreen.nameRoute:
      return MaterialPageRoute(builder: (_) => const HomeScreen());
    case AppointmentScreen.nameRoute:
      return MaterialPageRoute(builder: (_) => const AppointmentScreen());
    case ForgetPassword.nameRoute:
      return MaterialPageRoute(builder: (_) => const ForgetPassword());
    case SignUpPage.nameRoute:
      return MaterialPageRoute(builder: (_) => const SignUpPage());
    case SearchScreen.nameRoute:
      return MaterialPageRoute(builder: (_) => const SearchScreen());
    case NotificationScreen.nameRoute:
      return MaterialPageRoute(builder: (_) => const NotificationScreen());
    case ProfileScreen.nameRoute:
      return MaterialPageRoute(builder: (_) => const ProfileScreen());
    default:
      throw 'Route not found';
  }
}
