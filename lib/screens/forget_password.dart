import 'package:flutter/material.dart';

class ForgetPassword extends StatelessWidget {
  static const String nameRoute = '/forget-password';
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('Forget Password')),
    );
  }
}
