import 'package:flutter/material.dart';
import 'package:untitled4/contsant.dart';
import 'package:untitled4/product%20list/covidData.dart';
class CovidPage extends StatelessWidget {
  const CovidPage({super.key});

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
        child: Container(
          margin: EdgeInsets.all(5),
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Center(child: Text('History of Covid-19',style: mystyle(26,primaryColor,FontWeight.bold),)),
              SizedBox(
                height: 20,
              ),
              GridView.builder(
                padding: EdgeInsets.all(5),
                physics: NeverScrollableScrollPhysics(),
                itemCount: allCovidData.length,
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  childAspectRatio: 0.9,
                ),
                itemBuilder: (context, index) {
                  return Card(
                    color: Colors.white,
                    shadowColor: Colors.blueAccent,
                    elevation: 8,
                    child: Container(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Container(
                            height: 250,
                            width: MediaQuery.of(context).size.width*0.9,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.white ,width: 2),
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15)),
                                image: DecorationImage(image: AssetImage("${allCovidData[index].imgUrl}",),fit:BoxFit.cover)
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text("${allCovidData[index].country}", style: mystyle(30, Colors.black, FontWeight.bold), textAlign: TextAlign.center,),
                          Text("Infected: ${allCovidData[index].infected}", style: mystyle(22, Colors.black, FontWeight.bold), textAlign: TextAlign.center,),
                          Text("Death: ${allCovidData[index].number_died}", style: mystyle(22, Colors.black, FontWeight.bold), textAlign: TextAlign.center,),
                        ],
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

