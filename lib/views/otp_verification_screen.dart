import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:taxi_vert/controller/auth_controller.dart';
import 'package:taxi_vert/widgets/green_into_widget.dart';

import '../widgets/otp_verification_widget.dart';

class OtpVerificationScreen extends StatefulWidget{

  String phoneNumber;
  OtpVerificationScreen(this.phoneNumber);

  @override
  State<OtpVerificationScreen> createState() => _OtpVerificationScreenState();
}

class _OtpVerificationScreenState extends State<OtpVerificationScreen>{

  AuthController authController =   Get.put(AuthController());

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    authController.phoneAuth(widget.phoneNumber);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                greenIntroWidget(),

                Positioned(
                  top: 60,
                    left: 30,
                    child: InkWell(
                      onTap: (){
                        Get.back();
                      },
                      child: Container(
                        width: 45,
                        height: 45,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child: const Icon(Icons.arrow_back, color: Colors.green, size: 20,),
                      ),
                    )
                )
              ],
            ),

            const SizedBox(
              height: 50,
            ),

            otpVerificationWidget(),
          ],
        ),
      ),
    );
  }
}