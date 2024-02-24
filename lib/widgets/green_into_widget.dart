import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

Widget greenIntroWidget() {
  return Container(
    width: Get.width,
    decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/logo.jpg'), fit: BoxFit.cover)),
    height: Get.height * 0.6,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [SvgPicture.asset('assets/taxi_logo.svg'), const SizedBox()],
    ),
  );
}
