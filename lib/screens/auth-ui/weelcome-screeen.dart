// ignore_for_file: file_names, prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:quanlybanhang/screens/auth-ui/sign-in-screen.dart';
import '../../utils/app-constant.dart';

class WelcomeScreen extends StatelessWidget {
  WelcomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.lightGreen,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: AppConstant.appScendoryColor,
        title: Text(
          "Welcome to my app",
          style: TextStyle(color: AppConstant.appTextColor),
        ),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Center(
              child: Container(
                height: 300,
                child: Lottie.asset('assets/images/logo.json',height: 20),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20.0),
              child: Text(
                "Happy Shopping",
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: Get.height / 12,
            ),
            Material(
              child: Container(
                width: Get.width / 1.2,
                height: Get.height / 12,
                decoration: BoxDecoration(
                  color: AppConstant.appScendoryColor,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: TextButton.icon(
                  icon: Image.asset(
                    'assets/images/final-google-logo.png',
                    width: Get.width / 12,
                    height: Get.height / 12,
                  ),
                  label: Text(
                    "Đăng nhập bằng Google",
                    style: TextStyle(color: AppConstant.appTextColor),
                  ),
                  onPressed: () {
                  },
                ),
              ),
            ),
            SizedBox(
              height: Get.height / 50,
            ),
            Material(
              child: Container(
                width: Get.width / 1.2,
                height: Get.height / 12,
                decoration: BoxDecoration(
                  color: AppConstant.appScendoryColor,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: TextButton.icon(
                  icon: Icon(
                    Icons.email,
                    color: AppConstant.appTextColor,
                  ),
                  label: Text(
                    "Đăng nhập với Email",
                    style: TextStyle(color: AppConstant.appTextColor),
                  ),
                  onPressed: () {
                    Get.to(()=>SignInScreen());
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}