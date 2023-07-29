import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vagaro/constants/colors_const.dart';
import 'package:vagaro/constants/size_config.dart';

class SplashContent extends StatelessWidget {
  final String text, image;
  const SplashContent({
    Key? key,
    required this.text,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        Text(
          'Vagoro',
          style: TextStyle(
            fontSize: getProportionateScreenWidth(28.h),
            color: kPrimaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        Image.asset(
          image,
          height: getProportionateScreenHeight(265.h),
          width: getProportionateScreenWidth(235.w),
        ),
        const Spacer(),
        Center(
            child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.h),
          child: Text(text),
        )),
      ],
    );
  }
}
