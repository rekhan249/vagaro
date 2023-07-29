import 'package:flutter/material.dart';
import 'package:vagaro/constants/size_config.dart';
import 'package:vagaro/splash_screens/components/body.dart';

class SplashScreen extends StatelessWidget {
  static const String nameRoute = '/';
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return const Scaffold(
      body: Body(),
    );
  }
}
