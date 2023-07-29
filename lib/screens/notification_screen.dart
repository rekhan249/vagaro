import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:vagaro/providers/password_provider.dart';
import 'package:vagaro/screens/forget_password.dart';
import 'package:vagaro/screens/signup_page.dart';
import 'package:vagaro/widgets/key_account_botton.dart';
import 'package:vagaro/widgets/password_provider_widgets.dart';
import 'package:vagaro/widgets/textformfield_widgets.dart';

class NotificationScreen extends StatefulWidget {
  static const String nameRoute = '/notifications';
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool showLoader = false;

  void toggleLoader() {
    setState(() {
      showLoader = !showLoader;
    });
  }

  @override
  Widget build(BuildContext context) {
    final passwordProvider =
        Provider.of<PasswordProvider>(context, listen: false);
    return Scaffold(
      backgroundColor: const Color.fromARGB(243, 241, 242, 242),
      body: showLoader
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : SafeArea(
              child: Form(
                key: _formKey,
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 25, right: 25, bottom: 20),
                  child: ListView(
                    children: [
                      SizedBox(
                        height: 150.h,
                      ),
                      Center(
                        child: Text(
                          'VAGARO',
                          style: TextStyle(
                              fontSize: 30.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.deepOrange),
                        ),
                      ),
                      SizedBox(height: 10.h),
                      Center(
                        child: Text(
                          "Let's login below here",
                          style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.green),
                        ),
                      ),
                      SizedBox(height: 20.h),
                      TextFormFieldWidget(emailController: _emailController),
                      SizedBox(
                        height: 20.h,
                      ),
                      PasswordProviderWidget(
                          passwordController: _passwordController,
                          passwordProvider: passwordProvider),
                      SizedBox(height: 07.h),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: TextButton(
                          onPressed: () {
                            Navigator.pushReplacementNamed(
                                context, ForgetPassword.nameRoute);
                          },
                          child: Text(
                            'Forget Password',
                            style: TextStyle(
                              color: const Color(0xFFFF6743),
                              fontWeight: FontWeight.bold,
                              fontSize: 15.sp,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 07.h),
                      SizedBox(
                        height: 45.h,
                        width: double.infinity,
                        child: TextButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                              const Color(0xFFFF7643),
                            ),
                          ),
                          child: Text(
                            'Sign In',
                            style: TextStyle(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: Align(
                          alignment: Alignment.center,
                          child: RichText(
                              text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'Don’t have an account? ',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.sp,
                                ),
                              ),
                              TextSpan(
                                text: 'Register',
                                style: TextStyle(
                                  color: const Color(0xFFFF7643),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18.sp,
                                ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () => Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const SignUpPage()),
                                      ),
                              ),
                            ],
                          )),
                        ),
                      ),
                      KeyAccountButton(
                        onPressed: () {},
                        icon: const Icon(Icons.facebook),
                        style: const ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(
                                Color.fromARGB(255, 40, 4, 140))),
                        label: const Text('Login In with Facebook',
                            style: TextStyle(color: Colors.white)),
                      ),
                      SizedBox(height: 10.h),
                      KeyAccountButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.report_gmailerrorred_sharp,
                          color: Colors.redAccent,
                        ),
                        style: const ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.white)),
                        label: const Text('Login In with Google',
                            style: TextStyle(color: Colors.black)),
                      ),
                      SizedBox(height: 10.h),
                      KeyAccountButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.apple,
                          color: Colors.white,
                        ),
                        style: const ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.black)),
                        label: const Text(
                          'Login In with Apple',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
    );
  }
}
