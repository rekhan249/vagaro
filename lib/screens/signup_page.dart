import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:vagaro/providers/password_provider.dart';
import 'package:vagaro/screens/appoint_screen.dart';
import 'package:vagaro/widgets/name_formfield.dart';
import 'package:vagaro/widgets/password_provider_widgets.dart';
import 'package:vagaro/widgets/textformfield_widgets.dart';

class SignUpPage extends StatefulWidget {
  static const String nameRoute = '/singup';
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _formKey = GlobalKey<FormState>();
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var passwordProvider =
        Provider.of<PasswordProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Sign Up with ',
          style: TextStyle(fontSize: 15.sp, color: Colors.black),
        ),
        centerTitle: true,
        actions: [
          TextButton(
              onPressed: () {},
              child: Text(
                'Facebook',
                style: TextStyle(fontSize: 15.sp, color: Colors.blueGrey),
              )),
          TextButton(
              onPressed: () {},
              child: Text(
                'Google',
                style: TextStyle(fontSize: 15.sp, color: Colors.blueGrey),
              )),
          TextButton(
              onPressed: () {},
              child: Text(
                'Apple',
                style: TextStyle(fontSize: 15.sp, color: Colors.blueGrey),
              )),
        ],
      ),
      backgroundColor: const Color.fromARGB(243, 241, 242, 242),
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: Padding(
              padding: const EdgeInsets.only(left: 25, right: 25, bottom: 20),
              child: ListView(
                children: [
                  SizedBox(height: 150.h),
                  Center(
                    child: Text(
                      'VAGARO',
                      style: TextStyle(
                          fontSize: 22.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.deepOrange),
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Center(
                    child: Text(
                      'Welcome to SignUp Screen',
                      style: TextStyle(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.green),
                    ),
                  ),
                  SizedBox(height: 20.h),
                  NameTexformField(
                    firstNameController: _firstNameController,
                    hintText: 'Enter first name ',
                    label: 'Your First name',
                    validator: ((value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter first name';
                      } else if (!RegExp(r"^[a-zA-Z]+(?:\s[a-zA-Z]+)+$")
                          .hasMatch(value)) {
                        return 'Please enter valid first name';
                      }
                      return null;
                    }),
                  ),
                  SizedBox(height: 10.h),
                  NameTexformField(
                    firstNameController: _lastNameController,
                    hintText: 'Enter last name ',
                    label: 'Your last name',
                    validator: ((value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter last name';
                      } else if (!RegExp(r"^[a-zA-Z]+(?:\s[a-zA-Z]+)+$")
                          .hasMatch(value)) {
                        return 'Please enter valid last name';
                      }
                      return null;
                    }),
                  ),
                  SizedBox(height: 10.h),
                  TextFormFieldWidget(emailController: _emailController),
                  SizedBox(height: 10.h),
                  PasswordProviderWidget(
                      passwordController: _passwordController,
                      passwordProvider: passwordProvider),
                  SizedBox(height: 10.h),
                  SizedBox(
                    height: 45.h,
                    width: double.infinity,
                    child: TextButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          Colors.deepOrange,
                        ),
                      ),
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Align(
                      alignment: Alignment.center,
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'Already have an account? ',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 16.sp,
                              ),
                            ),
                            TextSpan(
                              text: 'Login',
                              style: TextStyle(
                                color: Colors.deepOrange,
                                fontWeight: FontWeight.bold,
                                fontSize: 18.sp,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () => Navigator.pushReplacementNamed(
                                    context, AppointmentScreen.nameRoute),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
