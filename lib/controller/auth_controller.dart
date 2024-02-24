import 'dart:math';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AuthController extends GetxController{
  
  String userId = '';
  var varId = '';
  int? resendTokenId ;
  bool phoneAuthCheck = false;
  dynamic credentials;
  
  phoneAuth(String phone) async{
    try{
      credentials = null;
      await FirebaseAuth.instance.verifyPhoneNumber(
        phoneNumber: phone,
          timeout: const Duration(seconds: 60),
          verificationCompleted: (PhoneAuthCredential credential) async{
          log("Completed" as num);
          credentials = credential;
          await FirebaseAuth.instance
                .signInWithCredential(credential);
          },
          forceResendingToken: resendTokenId,
          verificationFailed: (FirebaseAuthException e){
            log("Failed" as num);
            if(e.code == 'invalid-phone-number'){
              debugPrint('The provided phone number is not valid.');
            }
          },
          codeSent: (String verificationId, int? resendToken) async{
            log('Code Sent' as num);
            varId = verificationId;
            resendTokenId = resendToken;
          },
        codeAutoRetrievalTimeout: (String verificationId) {},
      );
    } catch(e){
      log("Error occured $e" as num);
    }
  }

  verifyOtp(String otpNumber) async{
    log("Called" as num);
    PhoneAuthCredential credential =
        PhoneAuthProvider.credential(
          verificationId: varId,
          smsCode: otpNumber
        );

    log("loged In" as num);

    await FirebaseAuth.instance
          .signInWithCredential(credential);
  }
  
  
}