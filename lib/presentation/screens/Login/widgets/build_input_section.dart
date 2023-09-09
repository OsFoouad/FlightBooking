// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

Widget buildInputSection(BuildContext context, String screenName) {
  /*
  For 
  phone 
  number
  Screen
  */
  switch (screenName) {
    case 'phoneNumber':
      return Container(
        child: TextField(
          // controller: pController,
          textAlign: TextAlign.center,
          maxLength: 12,
          decoration: InputDecoration(
              prefix: Icon(
                Icons.phone_android_rounded,
                size: 20,
              ),
              prefixIconColor: Theme.of(context).colorScheme.secondary,
              suffixIconColor: Theme.of(context).colorScheme.secondary,
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              hintText: "Enter Phone Number"),
          keyboardType: TextInputType.phone,
        ),
      );

    /*
  For 
  Otp
  Screen
  */

    case 'otpScreen':
      return Container(
          child: PinCodeTextField(
        appContext: context,
        length: 6,
        obscureText: false,
        animationType: AnimationType.fade,
        pinTheme: PinTheme(
          shape: PinCodeFieldShape.box,
          borderRadius: BorderRadius.circular(5),
          fieldHeight: 50,
          fieldWidth: 40,
          activeFillColor: Colors.white,
          activeColor: Colors.blue,
          inactiveColor: Colors.green,
          inactiveFillColor: Colors.grey,
        ),
        animationDuration: Duration(milliseconds: 300),
        backgroundColor: Colors.transparent,
        enableActiveFill: true,
        onCompleted: (v) {
          debugPrint("Completed");
        },
        onChanged: (value) {
          debugPrint(value);
        },
      ));
    default:
      return Container();
  }
}
