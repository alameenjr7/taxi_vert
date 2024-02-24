import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinput/pinput.dart';
import 'package:taxi_vert/controller/auth_controller.dart';

class RoundedWithShadow extends StatefulWidget{
  @override
  _RoundedWithShadowState createState() => _RoundedWithShadowState();

  @override
  String toStringShort() => 'Rounded With Shadow';

}

class _RoundedWithShadowState extends State<RoundedWithShadow>{
  final controller = TextEditingController();
  final focusNode = FocusNode();

  AuthController authController = Get.find<AuthController>();

  @override
  void dispose(){
    controller.dispose();
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context){
    final defaultPinTheme = PinTheme(
      width: 60,
      height: 64,
      textStyle: GoogleFonts.poppins(
        fontSize: 20, color: Color.fromRGBO(70, 69, 66, 1)
      ),
      decoration: BoxDecoration(
        color: Color.fromRGBO(232, 235, 241, 37),
        borderRadius: BorderRadius.circular(8)
      )
    );

    final cursor = Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: 21,
        height: 1,
        margin: EdgeInsets.only(bottom: 12),
        decoration: BoxDecoration(
          color: Color.fromRGBO(137, 146, 160, 1),
          borderRadius: BorderRadius.circular(8)
        ),
      ),
    );

    return Pinput(
      length: 6,
      controller: controller,
      focusNode: focusNode,
      onCompleted: (String input){
        authController.verifyOtp(input);
      },

      defaultPinTheme: defaultPinTheme.copyWith(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8)
        )
      )
    );
  }
}