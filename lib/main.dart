import 'package:flutter/material.dart';
import 'package:untitled4/home%20page/bottomNavigationBar.dart';
import 'package:untitled4/home%20page/carousel_Slider.dart';
import 'package:untitled4/home%20page/covidPage.dart';
import 'package:untitled4/home%20page/doctorPage.dart';
import 'package:untitled4/home%20page/gridViewPage.dart';
import 'package:untitled4/home%20page/registrationForm.dart';
import 'package:untitled4/home%20page/splash.dart';
import 'package:untitled4/projectPage/medicalShopPage.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MedicalShop(),
    );
  }
}

