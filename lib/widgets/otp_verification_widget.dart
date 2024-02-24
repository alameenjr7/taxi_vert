import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taxi_vert/utils/app_constants.dart';
import 'package:taxi_vert/widgets/pinput_widget.dart';
import 'package:taxi_vert/widgets/text_widget.dart';

Widget otpVerificationWidget(){
  return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        textWidget(
            text: AppConstants.enterOtp,
            fontSize: 22,
          fontWeight: FontWeight.bold
        ),
        const SizedBox(
          height: 40,
        ),

        Container(
          width: Get.width,
          height: 50,
          child: RoundedWithShadow(),
        ),
        const SizedBox(
          height: 40,
        ),
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: RichText(
              textAlign: TextAlign.start,
              text: TextSpan(
                style: GoogleFonts.poppins(color: Colors.black, fontSize: 12),
                children: [
                  const TextSpan(
                    text: AppConstants.resendCode,
                  ),
                  TextSpan(
                    text: "10 seconds",
                    style: GoogleFonts.poppins(fontWeight: FontWeight.bold)
                  )
                ]
              ),
            ),
        )
      ],
    ),
  );
}