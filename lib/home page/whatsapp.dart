import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
class Whatsapp extends StatelessWidget {
  const Whatsapp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WhatsApp", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              leading: Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(image: AssetImage("assets/image/rider.jpeg"))
                ),
              ),
              title: Text("Yogesh Ur Ekka", style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold, color: Colors.black,),),
              subtitle: Text("Hello Yogesh",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black, ),),
              trailing: Icon(Icons.favorite, color: Colors.red,),
            ),
          ],
        ),
      )
    );
  }
}
