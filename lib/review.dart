import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
class Review extends StatelessWidget {
  const Review({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stack View"),
        centerTitle: true,
        backgroundColor: Colors.yellow,
      ),
     body: Column(
       children: [
         SizedBox(height: 40,),
         Stack(
           clipBehavior: Clip.none,
           children: [
             Container(
               height: 100,
               width: 100,
               decoration: BoxDecoration(borderRadius: BorderRadius.circular(100),color: Colors.white,
               image: DecorationImage(image: AssetImage("assets/image/rider1.jpg")),border: Border.all(color: Colors.black)),
             ),
             Positioned(
               right: -50,
                 child: Container(
                   height: 100,
                   width: 100,
                   decoration: BoxDecoration(borderRadius: BorderRadius.circular(90),color: Colors.white,
                   image: DecorationImage(image: AssetImage("assets/image/rider2.jpg")),
                   border: Border.all(color: Colors.black)),
                 ),
             ),
             Positioned(
               right: -105,
                 child: Container(
               height: 100,
                   width: 100,
                   decoration: BoxDecoration(borderRadius: BorderRadius.circular(90),color: Colors.white,
                     image: DecorationImage(image: AssetImage("assets/image/rider3.jpg")),
                   border: Border.all(color: Colors.black),
                   ),
             ))
           ],
         )
       ],
     ),
    );
  }
}
