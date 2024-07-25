import 'package:flutter/material.dart';
import 'package:untitled4/contsant.dart';
import 'package:untitled4/model%20class/gridViewModelClass.dart';
class AboutDoctor extends StatelessWidget {
  DoctorsModel doctorsModel;
  AboutDoctor({super.key,required this.doctorsModel});

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
                    text: "Time",
                    style: mystyle(26,secondaryColor,FontWeight.bold)
                ),
                TextSpan(
                  text: "+",
                  style: mystyle(26,primaryColor,FontWeight.bold),
                ),
              ]
          ),
        ),
        centerTitle: true,
        actions: [Icon(Icons.more_vert_outlined)],
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.green,
          width: double.infinity,
          child: Column(
            children: [
              Hero(
                tag: "${doctorsModel.imgUrl}",
                child: Image(
                    image: AssetImage("${doctorsModel.imgUrl}")),
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topRight: Radius.circular(30),topLeft: Radius.circular(30)),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text("${doctorsModel.name}",style: mystyle(20,Colors.black,FontWeight.bold),),
                              Text("${doctorsModel.speciality}",style: mystyle(18,Colors.black,FontWeight.bold),),
                            ],
                          ),
                          Text("\$ ${doctorsModel.payment}",style: mystyle(18,secondaryColor,FontWeight.bold),)
                        ],
                      ),
                      SizedBox(height: 20,),
                      Text("About Doctor",style: mystyle(20,primaryColor,FontWeight.bold),),
                      Text("${doctorsModel.aboutDoc}",style: mystyle(16,Colors.black,FontWeight.bold),),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Card(
                            elevation: 4,
                            child: Container(
                              height: MediaQuery.of(context).size.height*0.06,
                              width: MediaQuery.of(context).size.width*0.25,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("Patients"),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Icons.person,size: 22,color: primaryColor,),
                                      Text("${doctorsModel.patientNo}",style: mystyle(18,primaryColor,FontWeight.bold),),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Card(
                            elevation: 4,
                            child: Container(
                              height: MediaQuery.of(context).size.height*0.06,
                              width: MediaQuery.of(context).size.width*0.25,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("Experince"),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Icons.shopping_bag,size: 22,color: primaryColor,),
                                      Text("${doctorsModel.experience}",style: mystyle(18,primaryColor,FontWeight.bold),),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Card(
                            elevation: 4,
                            child: Container(
                              height: MediaQuery.of(context).size.height*0.06,
                              width: MediaQuery.of(context).size.width*0.25,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("Rating"),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("${doctorsModel.rating}",style: mystyle(18,primaryColor,FontWeight.bold),),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20,),
                      Text("Available Time",style: mystyle(20,primaryColor,FontWeight.bold),),
                      SizedBox(
                        height: 95,
                        child: ListView.builder(
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: doctorsModel.appointmentDays.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context,index){
                              return Card(
                                elevation: 4,
                                child: Container(
                                  height: 40,
                                  width: MediaQuery.of(context).size.width*0.30,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(6.0),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text("${doctorsModel.appointmentDays[index]}",style: mystyle(16,primaryColor,FontWeight.bold),),
                                        Text("${doctorsModel.appointmentTime[index]}",style: mystyle(14,primaryColor,FontWeight.bold),),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            }
                        ),
                      ),
                      SizedBox(height: 30,),

                      Center(
                        child: MaterialButton(
                          color: primaryColor,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                          height: MediaQuery.of(context).size.height*0.05,
                          minWidth: MediaQuery.of(context).size.width*0.8,
                          onPressed: (){},
                          child: Text("Make an Appointment",style: mystyle(22,Colors.white,FontWeight.bold),),
                        ),
                      )
                    ],
                  ),
                ),

              )
            ],
          ),
        ),
      ),
    );
  }
}
