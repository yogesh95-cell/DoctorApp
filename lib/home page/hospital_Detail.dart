import 'package:flutter/material.dart';
import 'package:untitled4/contsant.dart';
import 'package:untitled4/model%20class/hospitalModel.dart';
class hospital_detail_info extends StatelessWidget {
  HospitalModel hospitalmodel;
  hospital_detail_info({super.key,required this.hospitalmodel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: RichText(
          text: TextSpan(
              style: mystyle(26,primaryColor,FontWeight.bold),
              children: [
                TextSpan(
                  text: "Doc",
                ),
                TextSpan(
                    text: "Time", style: mystyle(26,secondaryColor,FontWeight.bold)
                ),
                TextSpan(
                  text: "+",style: mystyle(26,primaryColor,FontWeight.bold),
                ),
              ]
          ),
        ),
        centerTitle: true,
        actions: [Icon(Icons.more_vert_outlined)],
      ),

      /// body
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              width: double.infinity,
              height: 703,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Card(
        
                    elevation: 10,
                    color: Colors.black12,
                    child: Container(
                      margin: EdgeInsets.all(5),
                      width: MediaQuery.of(context).size.width*0.9 ,
                      height: MediaQuery.of(context).size.height*0.25,
                      decoration: BoxDecoration(
                          color: Colors.black26,
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(image: AssetImage(hospitalmodel.imgUrl),fit: BoxFit.cover)
                      ),
                    ),
                  ),
                  SizedBox(height: 25,),
                  Text('${hospitalmodel.name}',style:mystyle(25,Colors.black,FontWeight.bold)),
                  SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.location_on,color: Colors.blue,),
                      SizedBox(width: 10,),
                      Text('${hospitalmodel.location}',style:mystyle(20,Colors.black,FontWeight.bold)),
                    ],
                  ),
                  SizedBox(height: 15,),
                  Text('Number Of Staff:  ${hospitalmodel.numStaff}',style:mystyle(20,Colors.black,FontWeight.bold)),
                  SizedBox(height: 25,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.star,color: Colors.yellow,),
                      Icon(Icons.star,color: Colors.yellow,),
                      Icon(Icons.star,color: Colors.yellow,)
                    ],
                  ),
                  SizedBox(height: 25,),
                  Text('${hospitalmodel.aboutHospital}',style:mystyle(18,Colors.black,FontWeight.bold)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
