import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
class AlertButton extends StatelessWidget {
  const AlertButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            MaterialButton(
                minWidth: MediaQuery.of(context).size.width*0.8,
                color: Colors.deepOrange,
                onPressed: (){

                })
          ],
        ),
      ),
    );
  }
}
