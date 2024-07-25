import 'package:flutter/material.dart';
import 'package:untitled4/contsant.dart';
class MedicalShop extends StatelessWidget {
  const MedicalShop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 170,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(bottomLeft: Radius.elliptical(500,200)),
            color: secondaryColor.withOpacity(0.6)
        ),
        child: Container(
          height: 400,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(bottomLeft: Radius.elliptical(100,200)),
              color: primaryColor.withOpacity(0.4)
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.of(context).pop();
                    },
                    child: Container(
                        margin: EdgeInsets.all(30),
                        height: 40,
                        width: 80,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white
                        ),
                        child: Row(
                          children: [
                            Icon(Icons.arrow_back),
                            Text("Back",style: mystyle(21,primaryColor,FontWeight.bold),),
                          ],
                        )
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.all(30),
                      height: 40,
                      width: 150,
                      decoration: BoxDecoration(
                      ),
                      child: Text("Pharmacy",style: mystyle(30,Colors.white,FontWeight.bold),)
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.all(3),
                height: 50,
                width: 340,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: primaryColor),
                    color: Colors.white
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.search,color: primaryColor,size: 30,),
                          SizedBox(width: 20,),
                          Text("Search",style: mystyle(18,Colors.black,FontWeight.bold),),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
