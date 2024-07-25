import 'package:flutter/material.dart';
import 'package:untitled4/contsant.dart';
import 'package:untitled4/home%20page/hospital_Detail.dart';
import 'package:untitled4/product%20list/hospitalData.dart';

class Hospital_Page extends StatelessWidget {
  Hospital_Page({super.key});

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
                    style: mystyle(26, secondaryColor, FontWeight.bold)),
                TextSpan(
                  text: "+",
                  style: mystyle(26, primaryColor, FontWeight.bold),
                ),
              ]),
        ),
        centerTitle: true,
        actions: [Icon(Icons.more_vert_outlined)],
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(5),
          child: Column(
            children: [
              Center(
                  child: Text('Covid-19', style: mystyle(26, primaryColor, FontWeight.bold),
              )),
              GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: allHospitalData.length,
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 0.75,
                ),
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (builder) => hospital_detail_info(
                                hospitalmodel: allHospitalData[index],
                              )));
                    },
                    child: Card(
                      color: Colors.white,
                      shadowColor: Colors.blueAccent,
                      elevation: 8,
                      child: Container(
                        padding: EdgeInsets.all(5),
                        child: Column(
                          children: [
                            Container(
                              height: 100,
                              width: 250,
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.black, width: 2),
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(15),
                                      topRight: Radius.circular(15)),
                                  image: DecorationImage(
                                      image: AssetImage(
                                        "${allHospitalData[index].imgUrl}",
                                      ),
                                      fit: BoxFit.cover)),
                            ),
                            Text(
                              "${allHospitalData[index].name}",
                              style: mystyle(22, Colors.black, FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.location_on,color: Colors.blue,),
                                Text(
                                  "${allHospitalData[index].location}",
                                  style: mystyle(17, Colors.black,FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                            Container(
                              height: 40,
                              width: 60,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(90),
                                  color: Colors.blue),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.star,
                                    size: 20,
                                    color: Colors.yellow,
                                  ),
                                  Text("${allHospitalData[index].rating}"),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
