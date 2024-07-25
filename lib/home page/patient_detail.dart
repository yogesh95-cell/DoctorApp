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
              style: mystyle(26, primaryColor, FontWeight.bold),
              children: [
                TextSpan(
                  text: "Doc",
                ),
                TextSpan(
                    text: "Time",
                    style: mystyle(26, secondaryColor, FontWeight.bold)
                ),
                TextSpan(
                  text: "+", style: mystyle(26, primaryColor, FontWeight.bold),
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
            Column(
              children: [
                Text("Patient Details",
                    style: mystyle(26, primaryColor, FontWeight.bold)),
              ],
            ),
            CircleAvatar(
              maxRadius: 90,
              backgroundImage:AssetImage("assets/image/boy img1.png") ,
            ),
            Container(
              margin: EdgeInsets.all(10),
              width: double.infinity,
              height: 360,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.blue),
                borderRadius: BorderRadius.all(Radius.circular(30)),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.person, color: Colors.blue),
                                SizedBox(width: 10,),
                                Text("Name: Mr.Akash Ekka", style: mystyle(
                                    24, Colors.black, FontWeight.bold),),
                              ],
                            ),
                            SizedBox(height: 10,),
                            Row(
                              children: [
                                Icon(Icons.person, color: Colors.blue),
                                SizedBox(width: 10,),
                                Text("Age: 25years.", style: mystyle(
                                    20, Colors.black, FontWeight.bold),),
                              ],
                            ),
                            SizedBox(height: 10,),
                            Row(
                              children: [
                                Icon(Icons.male, color: Colors.blue),
                                SizedBox(width: 10,),
                                Text("Gender: Male.", style: mystyle(
                                    20, Colors.black, FontWeight.bold),),
                              ],
                            ),
                            SizedBox(height: 10,),
                            Row(
                              children: [
                                Icon(Icons.maps_home_work_rounded,
                                    color: Colors.blue),
                                SizedBox(width: 10,),
                                Text("Address: Samtse.",
                                  style: mystyle(20, Colors.black,FontWeight.bold),),
                              ],
                            ),
                            SizedBox(height: 10,),
                            Row(
                              children: [
                                Icon(Icons.phone_enabled_outlined,
                                    color: Colors.blue),
                                SizedBox(width: 10,),
                                Text("Contact: 17567845", style: mystyle(
                                    20, Colors.black, FontWeight.bold),),
                              ],
                            ),
                            SizedBox(height: 10,),
                            Row(
                              children: [
                                Icon(Icons.alternate_email, color: Colors.blue),
                                SizedBox(width: 10,),
                                Text("Email: akashekka@gmail.com.",
                                  style: mystyle(
                                      20, Colors.black, FontWeight.bold),),
                              ],
                            ),
                            SizedBox(height: 10,),
                            Text(
                              "Disease: Mr.Akash is suffering from a Cardiovascular diseases affect the heart and blood vessels .",
                              style: mystyle(
                                  20, Colors.black, FontWeight.bold),),

                          ],
                        ),

                      ],
                    ),

                  ],
                ),
              ),
            ),
            SizedBox(height: 3,),
            Container(
              child: MaterialButton(
                color: primaryColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                height: MediaQuery
                    .of(context)
                    .size
                    .height * 0.05,
                minWidth: MediaQuery
                    .of(context)
                    .size
                    .width * 0.8,
                onPressed: () {},
                child: Text("Log Out",
                  style: mystyle(22, Colors.white, FontWeight.bold),),
              ),
            ),
          ],
        ),
      ),
    );
  }
  }