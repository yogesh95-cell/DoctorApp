import 'package:flutter/material.dart';
import 'package:untitled4/model%20class/overViewModel.dart';

class Detail extends StatelessWidget {
  OverViewClass overViewClass;
  Detail({super.key, required this.overViewClass});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.deepOrangeAccent,
              image: DecorationImage(
                  image: AssetImage('${overViewClass.imgUrl}'),
                  fit: BoxFit.cover),
            ),
          ),
          Container(
              width: MediaQuery.of(context).size.width * 0.45,
              child: Text('${overViewClass.name}')),
          SizedBox(
            width: 5,
          ),
          Icon(Icons.video_camera_front_rounded),
          SizedBox(
            width: 5,
          ),
          Icon(Icons.call),
          SizedBox(
            width: 5,
          ),
          Icon(Icons.more_vert),
        ],
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            Text(
              "${overViewClass.message}",
            ),
            Text("${overViewClass.message}"),
            Text("${overViewClass.message}"),
          ],
        ),
      ),
    );
  }
}