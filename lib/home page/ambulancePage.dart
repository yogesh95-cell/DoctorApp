import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:untitled4/contsant.dart';
class Ambulancepage extends StatelessWidget {
  const Ambulancepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: RichText(
            text: TextSpan(
              style: mystyle(26, primaryColor, FontWeight.bold),
              children: [
                TextSpan(
                  text: 'Doc',
                ),
                TextSpan(
                  text: 'Time',
                  style:
                  mystyle(26, secondaryColor, FontWeight.bold),
                ),
                TextSpan(
                  text: '+',
                )
              ],
            )
        ),
        actions: [
          Icon(Icons.more_vert_outlined)
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height:50 ,
          ),
          Text("Ambulance",style: mystyle(26,primaryColor, FontWeight.bold),),
          SizedBox(height: 20,),
          Lottie.asset('assets/animations/Animation - 1721035313990.json'),
          SizedBox(height: 100,),
          Container(
            margin: EdgeInsets.all(15),
            height: 80,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Colors.blue,
            ),
            child: Center(child: Text('Call: 112',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),)),
          )
        ],
      ),
    );
  }
}
