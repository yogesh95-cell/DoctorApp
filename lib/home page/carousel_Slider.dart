import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
class Carousel extends StatefulWidget {
  const Carousel({super.key});

  @override
  State<Carousel> createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  final List<String> image = [
   "assets/image/rider.jpeg",
       "assets/image/rider1.jpg",
       "assets/image/rider2.jpg",
       "assets/image/rider3.jpg",
       "assets/image/rider4.webp",
  ];
int _currentPage =0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          CarouselSlider(
              items: image.map((e){
               return Image.asset(e);
          }).toList(),
              options: CarouselOptions(
                initialPage: 0,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 2),
                enlargeCenterPage: true,
                enlargeFactor: 0.3,
                onPageChanged: (value,_){
                  setState(() {
                    _currentPage = value;
                  });
                }
              ),
          ),
          buildIndicator(),
          ],
        ),
      ),
    );
  }
  buildIndicator(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for(int i=0;i<image.length;i++)
          Container(
            margin: EdgeInsets.all(5),
            height: 7,
            width: i==_currentPage?35:20,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: i==_currentPage?Colors.black:Colors.grey,
            ),
          )
      ],
    );
  }
}
