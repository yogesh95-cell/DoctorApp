import 'package:flutter/material.dart';
import 'package:untitled4/contsant.dart';
import 'package:untitled4/home%20page/ambulancePage.dart';
import 'package:untitled4/home%20page/covidPage.dart';
import 'package:untitled4/home%20page/hospitalPage.dart';
import 'package:untitled4/home%20page/medicineShopsPage.dart';
import 'package:untitled4/home%20page/patient_detail.dart';
import 'package:untitled4/home%20page/doctorPage.dart';
import 'package:untitled4/product%20list/gridViewData.dart';
class Doctor extends StatelessWidget {
  const Doctor({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(10),
            child: Column(
              children: [
                /// app bar
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.menu),
                    Container(
                      child: Row(
                        children: [
                          RichText(
                              text: TextSpan(
                                style: mystyle(20, primaryColor, FontWeight.bold),
                                children: [
                                  TextSpan(
                                    text: 'Doc',
                                  ),
                                  TextSpan(
                                    text: 'Time',
                                    style:
                                    mystyle(20, secondaryColor, FontWeight.bold),
                                  ),
                                  TextSpan(
                                    text: '+',
                                  )
                                ],
                              )),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>PatientDetails()));
                      },
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: primaryColor),
                          image: DecorationImage(
                              image: AssetImage('assets/image/doctor1.png')),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.25,
                      width: MediaQuery.of(context).size.width * 0.45,
                      decoration: BoxDecoration(
                        border: Border.all(color: primaryColor),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20)),
                        image: DecorationImage(
                            image: AssetImage('assets/image/doctors.jpg'),
                            fit: BoxFit.cover),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(20),
                      width: MediaQuery.of(context).size.width * 0.49,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Stay Healthy',
                              style: mystyle(20, Colors.black, FontWeight.bold)),
                          Text('Stay Safe',
                              style: mystyle(18, Colors.black, FontWeight.bold)),
                          Text(
                              'A person skilled or specializing in healing arts. especially : one (as a physician, dentist, or veterinarian)'),
                          Row(
                            children: [
                              Icon(
                                Icons.video_call,
                                size: 35,
                                color: primaryColor,
                              ),
                              Text(
                                'Meet Online',
                                style:
                                mystyle(20, secondaryColor, FontWeight.bold),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Services',
                        style: mystyle(25, primaryColor, FontWeight.bold)),
                    Text('See all')
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (builder)=>CovidPage()),
                        );
                      },
                      child: Column(
                        children: [
                          Image(image: AssetImage("assets/animations/virus.gif")),
                          Text('Covid-19'),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (builder)=>Hospital_Page()),
                        );
                      },
                      child: Column(
                        children: [
                          Image(
                              image: AssetImage("assets/animations/hospital.gif")),
                          Text('Hospital'),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (builder)=>Ambulancepage()),
                        );
                      },
                      child: Column(
                        children: [
                          Image(
                              image: AssetImage("assets/animations/ambulance.gif")),
                          Text('Ambulance'),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>MedicalShops()));
                      },
                      child: Column(
                        children: [
                          Image(
                              image: AssetImage("assets/animations/medicine.gif")),
                          Text('Medicine'),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Top Rated Doctor',
                        style: mystyle(25, primaryColor, FontWeight.bold)),
                    Text('See all')
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: allDetail.length,
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 5,
                    childAspectRatio: 0.7,
                  ),
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: (){
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (builder)=>AboutDoctor(doctorsModel:allDetail[index],))
                        );
                      },
                      child: Card(
                        elevation: 4,
                        child: Container(
                          child: Column(
                            children: [
                              Hero(
                                tag:"${allDetail[index].imgUrl}",
                                child: CircleAvatar(
                                  maxRadius: 50,
                                  backgroundImage:
                                  AssetImage("${allDetail[index].imgUrl}"),
                                ),
                              ),
                              Text("${allDetail[index].name}", style: mystyle(22, Colors.black, FontWeight.bold), textAlign: TextAlign.center,),
                              Text("${allDetail[index].speciality}", style: mystyle(16, Colors.black,FontWeight.bold), textAlign: TextAlign.center,),
                              Container(
                                height: 40,
                                width: 75,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: Colors.white
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.star, size: 20, color: Colors.yellow,),
                                    Text("${allDetail[index].rating}"),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
