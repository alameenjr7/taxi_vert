import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:taxi_vert/views/otp_verification_screen.dart';
import 'package:taxi_vert/widgets/green_into_widget.dart';

import '../widgets/login_widgets.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  /// Default.
  final countryPicker = const  FlCountryCodePicker();

  CountryCode countryCode = CountryCode(name: 'Senegal', code: 'SN', dialCode: '+221');

  onSubmit(String? input){
    Get.to(()=>OtpVerificationScreen(countryCode.dialCode+input!));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: Get.width,
        height: Get.height,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              greenIntroWidget(),

              const SizedBox(height: 50,),

              loginWidget(countryCode, ()async{
                // Show the country code picker when tapped.
                final picked= await countryPicker.showPicker(context: context);
                // Null check
                if (picked!= null) countryCode = picked;
                setState(() {

                });
              }, onSubmit),
            ],
          ),
        ),
      ),
    );
  }
}
