import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quanlybanhang/screens/auth-ui/sign-in-screen.dart';
import 'package:quanlybanhang/screens/auth-ui/sign-up-screen.dart';
import 'package:quanlybanhang/screens/auth-ui/splash-screen.dart';
import 'package:quanlybanhang/screens/user-panel/main-screen.dart';

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  if(kIsWeb) {
    await Firebase.initializeApp( options: FirebaseOptions(apiKey: "AIzaSyB09FVJjUvx6AlO1sObb2fI4DMN9xO6dEI", appId: "1:807703658942:web:e01347931fd5ed54d3b9ef", messagingSenderId: "807703658942", projectId: "doan-1d8a9"));
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SplashScreen() ,
      debugShowCheckedModeBanner: false,
    );

  }
}

