import 'package:flutter/material.dart';
import 'package:untitled4/product%20list/overViewData.dart';
import 'package:untitled4/product%20list/whatsappData.dart';

import 'messagesOverView.dart';
class WhatsApp extends StatefulWidget {
  const WhatsApp({super.key});

  @override
  State<WhatsApp> createState() => _WhatsAppState();
}

class _WhatsAppState extends State<WhatsApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("WhatsApp", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black,),),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.builder(
                itemCount: allMessages.length,
                shrinkWrap: true,
                // physics: NeverScrollableScrollPhysics(),
                //scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (builder) =>Detail(overViewClass:allMessage[index],)),
                      );
                    },
                    child: Container(
                      child: Column(
                        children: [
                          ListTile(
                            leading: Container(
                              height: 70,
                              width: 70,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image: AssetImage("${allMessages[index].imgUrl}"), fit: BoxFit.cover),
                              ),
                            ),
                            title: Text(
                              "${allMessages[index].name}",
                              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black,
                              ),
                            ),
                            subtitle: Text("${allMessages[index].messages}", style: TextStyle(fontSize: 20, color: Colors.black,fontWeight: FontWeight.bold),
                            ),
                            trailing: Text("12:00AM",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),

                            ),
                          ),
                          Divider(
                            height: 70,
                            thickness: 4,
                            color: Colors.black,
                          )
                        ],
                      ),
                    ),
                  );
                })
          ],
        ),
      ),
    );
  }
}


