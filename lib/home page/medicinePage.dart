import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled4/contsant.dart';

import '../model class/medicineModel.dart';

class MedicineProducts extends StatelessWidget {
  List medicines = [];

  MedicineProducts({super.key, required this.medicines});

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
        physics: BouncingScrollPhysics(),
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.only(top: 10, bottom: 10),
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Text("All Medicines",
                style: mystyle(24, primaryColor, FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              GridView.builder(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 0.55,
                ),
                physics: NeverScrollableScrollPhysics(),
                itemCount: medicines.length,
                itemBuilder: (context, index) {
                  Medicine medicine = medicines[index];
                  return Card(
                    elevation: 4,
                    margin: EdgeInsets.all(10),
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white),
                      padding: EdgeInsets.all(10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(medicine.medicineUrl,
                            width: 100,
                            height: 100,
                            fit: BoxFit.contain,
                          ),
                          SizedBox(height: 10),
                          Text(
                            medicine.medicineName,
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text("${medicine.weight}", style: mystyle(16,primaryColor,FontWeight.bold),
                          ),
                          SizedBox(height: 5),
                          Text("Price: \$${medicine.price}", style: TextStyle(fontSize: 16),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          InkWell(

                            child: Container(
                              width: 100,
                              height: 40,
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: primaryColor),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("Buy", style: mystyle(16, Colors.white, FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
