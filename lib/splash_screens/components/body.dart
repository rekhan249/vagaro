import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vagaro/constants/colors_const.dart';
import 'package:vagaro/constants/size_config.dart';
import 'package:vagaro/nav_bottom/nav_bottom_screen.dart';
import 'package:vagaro/splash_screens/components/default_button.dart';
import 'package:vagaro/splash_screens/splash_component.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  List<Map<String, String>> splashList = [
    {
      "text":
          "Welcome to Charms and Survival Advantages \n Search & occupay in three steps",
      "image": "assets/images/splash_1.png"
    },
    {
      "text":
          "Pick a Our Provider Services & Value \n simply select the service place and time",
      "image": "assets/images/splash_2.png"
    },
    {
      "text":
          "Select the Best \n compare values and people view about spas, gyms and saloons closest",
      "image": "assets/images/splash_3.png"
    },
    {
      "text": "Occupay Now \n are you still not booked it? Get on it now!",
      "image": "assets/images/success.png"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          SizedBox(height: 70.h),
          Expanded(
            flex: 3,
            child: PageView.builder(
              onPageChanged: ((value) {
                setState(() {
                  currentPage = value;
                });
              }),
              itemCount: splashList.length,
              itemBuilder: (context, index) => SplashContent(
                text: splashList[index]["text"].toString(),
                image: splashList[index]["image"].toString(),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(20.h)),
              child: Column(
                children: [
                  SizedBox(height: 20.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      splashList.length,
                      (index) => buildDot(index: index),
                    ),
                  ),
                  SizedBox(height: 20.h),
                  DefaultButton(
                      text: "Continue",
                      press: () {
                        Navigator.pushNamed(context, NavBottomScreen.nameRoute);
                      }),
                  const Spacer(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  AnimatedContainer buildDot({required int index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: const EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
          color: currentPage == index ? kPrimaryColor : const Color(0xFFD8D8D8),
          borderRadius: BorderRadius.circular(3)),
    );
  }
}
