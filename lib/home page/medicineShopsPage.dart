import 'package:flutter/material.dart';
import 'package:untitled4/contsant.dart';
import 'package:untitled4/home%20page/medicinePage.dart';
import 'package:untitled4/model%20class/medicine2Data.dart';
import 'package:untitled4/model%20class/medicineModel.dart';
import 'package:untitled4/product%20list/medicineData.dart';

class MedicalShops extends StatelessWidget {
  const MedicalShops({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
        physics: BouncingScrollPhysics(),
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Center(
                  child: Image.asset(
                "assets/image/medicine img.webp",
                height: 80,
              )),
              Text(
                "Medical Shops",
                style: mystyle(26, primaryColor, FontWeight.bold),
              ),
              GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: allShop.length,
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  childAspectRatio: 0.99,
                ),
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>MedicineProducts(medicines: allMedicine[index])));
                    },
                    child: Container(
                      padding: EdgeInsets.all(20),
                      child: Card(
                        shadowColor: Colors.white,
                        elevation: 7,
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.all(5),
                              height: 200,
                              width: 350,
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.white, width: 2),
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(15),
                                      topRight: Radius.circular(15)),
                                  image: DecorationImage(
                                      image: AssetImage("${allShop[index].shopUrl}",
                                      ),
                                      fit: BoxFit.cover)),
                            ),
                            Text(
                              "${allShop[index].shopName}",
                              style: mystyle(24, Colors.black, FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.location_on,color: Colors.blue,),
                                Text(
                                  "${allShop[index].Location}", style: mystyle(20, Colors.black,FontWeight.bold),

                                ),
                              ],
                            ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Icons.phone,color: Colors.green,),
                                      Text("${allShop[index].contactNo}", style: mystyle(16, Colors.black,FontWeight.bold,),
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
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
