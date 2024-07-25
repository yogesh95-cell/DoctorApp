import 'package:flutter/material.dart';
import 'package:untitled4/product%20list/dc.dart';
class Book extends StatelessWidget {
  const Book({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Book Store", style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,),),
        centerTitle: true,
        backgroundColor: Colors.orange,
      ),

      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            SizedBox(
              height: 350,
              child: ListView.builder(
                itemCount: 10,
                shrinkWrap: true,
                // physics: NeverScrollableScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index){
                  return Container(
                    margin: EdgeInsets.all(10),
                    height: 200,
                    width: 300,
                    color: Colors.blueGrey,
                    child: Column(
                      children: [
                        Text("${allBook[index].bookName}", style: TextStyle(color: Colors.white, fontSize: 25),),
                        SizedBox(
                          height: 100,
                          child: Image.asset("${allBook[index].imgUrl}"),
                        ),
                        Text("${allBook[index].author}", style: TextStyle(color: Colors.white, fontSize: 25),),
                        Text("${allBook[index].rating}", style: TextStyle(color: Colors.white, fontSize: 25),),
                        Text("${allBook[index].genre}", style: TextStyle(color: Colors.white, fontSize: 25),),
                        Text("${allBook[index].reviews}", style: TextStyle(color: Colors.white, fontSize: 25),),
                      ],
                    ),
                  );
                },
              ),

            ),

            ListView.builder(
              itemCount: allBook.length,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              // scrollDirection: Axis.horizontal,
              itemBuilder: (context, index){
                return Container(
                  margin: EdgeInsets.all(10),
                  height: MediaQuery.of(context).size.height*0.3,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage("${allBook[index].imgUrl}"), fit: BoxFit.cover),
                  ),
                  child: Column(
                    children: [
                      Text("${allBook[index].bookName}", style: TextStyle(color: Colors.white, fontSize: 25),),
                      Text("${allBook[index].author}", style: TextStyle(color: Colors.white, fontSize: 25),),
                      Text("${allBook[index].rating}", style: TextStyle(color: Colors.white, fontSize: 25),),
                      Text("${allBook[index].genre}", style: TextStyle(color: Colors.white, fontSize: 25),),
                      Text("${allBook[index].reviews}", style: TextStyle(color: Colors.white, fontSize: 25),),

                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}