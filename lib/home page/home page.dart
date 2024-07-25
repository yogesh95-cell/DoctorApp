import 'package:flutter/material.dart';
import 'package:untitled4/product%20list/dataclass.dart';

class Amazon extends StatelessWidget {
  const Amazon({super.key});

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        appBar: AppBar(
          title: Text("Amazon"),
          centerTitle: true,
          backgroundColor: Colors.yellow,
        ),
        body: SingleChildScrollView(
          // physics: NeverScrollableScrollPhysics(),
          // physics: BouncingScrollPhysics(),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: 200,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  // physics: NeverScrollableScrollPhysics(),
                  itemCount: allProduct.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.all(10),
                      height: 200,
                      width: 100,
                      color: Colors.blue,
                      child: Column(
                        children: [
                          Text("${allProduct[index].productName}"),
                          SizedBox(
                              height: 100,
                              child: Image.asset("${allProduct[index].imgUrl}")),
                          Text("${allProduct[index].rating}"),
                          Text("${allProduct[index].reviews}"),
                          Text("${allProduct[index].price}"),
                        ],
                      ),
                    );
                  },
                ),
              ),

              SizedBox(
                // height: 100,
                child: ListView.builder(
                  // scrollDirection: Axis.horizontal,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: allProduct.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.all(10),
                      height: 400,
                      width: double.infinity,
                      color: Colors.blue,
                      child: Column(
                        children: [
                          Text("${allProduct[index].productName}"),
                          Image.asset("${allProduct[index].imgUrl}",fit: BoxFit.cover,),

                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      );
  }
}