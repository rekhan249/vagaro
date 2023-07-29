import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const String nameRoute = '/home';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('home')),
    );
  }
}
