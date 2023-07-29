import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:vagaro/providers/password_provider.dart';
import 'package:vagaro/routes/routes_directions.dart';
import 'package:vagaro/screens/signup_page.dart';
import 'package:vagaro/theme/theme_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (_) => PasswordProvider(),
          ),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Vagaro',
          theme: themeData(),
          onGenerateRoute: (settings) => generateRoute(settings),
          home: SignUpPage(),
        ),
      ),
    );
  }
}
