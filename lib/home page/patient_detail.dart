import 'package:flutter/material.dart';
import 'package:untitled4/contsant.dart';
class PatientDetails extends StatelessWidget {
  const PatientDetails({super.key});

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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Card(
              shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(300)),
              elevation: 4,
              child: Container(
                  height: 200,
                  width: 200,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(image: AssetImage("assets/image/boy img1.png"), fit: BoxFit.cover),
                  border: Border.all(color: Colors.black)
                ),

              ),
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topRight: Radius.circular(30),topLeft: Radius.circular(30)),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Text("Mr. Akash Ekka",style: mystyle(25,Colors.black,FontWeight.bold),),

                            Row(
                              children: [
                                Icon(Icons.location_on,color: Colors.blue,),
                                Text("Samtse",style: mystyle(22,Colors.black,FontWeight.bold),),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Text("About Patient",style: mystyle(25,primaryColor,FontWeight.bold),),
                    Text(detail,style: mystyle(16,Colors.black,FontWeight.bold),),
                    SizedBox(height: 4,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      ],
                    ),
                    SizedBox(height: 20,),
                    Center(
                      child: MaterialButton(
                        color: primaryColor,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                        height: MediaQuery.of(context).size.height*0.07,
                        minWidth: MediaQuery.of(context).size.width*0.8,
                        onPressed: (){},
                        child: Text('Contact: 17567483',style: mystyle(22,Colors.white,FontWeight.bold),),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

