import 'dart:io';
import 'package:proje/isimAl.dart';
import 'package:flutter/material.dart';

class Mesajlasma extends StatefulWidget {

  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Mesajlasma> {
  TextEditingController messageEditingController = new TextEditingController();


  addMessage() {
    if (messageEditingController.text.isNotEmpty) {
      Map<String, dynamic> mesajlasmaBilgileri = {
        "gonderenKisi": Constants.myName,
        "mesaj": messageEditingController.text,
        'zaman': DateTime
            .now()
            .millisecondsSinceEpoch,
      };
      setState(() {
        messageEditingController.text = "";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100),
        child: Container(
            color: Colors.red
        ),
      ),
      body: Container(
        child: Stack(
          children: [
            Container(alignment: Alignment.bottomCenter,
              width: MediaQuery
                  .of(context)
                  .size
                  .width,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 24),
                color: Color(0x54FFFFFF),
                child: Row(
                  children: [
                    Expanded(
                        child: TextField(
                          controller: messageEditingController,
                          decoration: InputDecoration(
                              hintText: "Message ...",
                              hintStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                              border: InputBorder.none
                          ),
                        )),
                    SizedBox(width: 16,),
                    GestureDetector(
                      onTap: () {
                        addMessage();
                      },
                      child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  colors: [
                                    const Color(0x36FFFFFF),
                                    const Color(0x0FFFFFFF)
                                  ],
                                  begin: FractionalOffset.topLeft,
                                  end: FractionalOffset.bottomRight
                              ),
                              borderRadius: BorderRadius.circular(40)
                          ),
                          padding: EdgeInsets.all(12),
                          child: Image.asset("assets/images/gonder.png",
                            height: 25, width: 25,)),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

}

class MesajKutusu extends StatelessWidget {
  final String mesaj;
  final bool benimMesaj;
  MesajKutusu({required this.mesaj, required this.benimMesaj});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
          top: 8,
          bottom: 8,
          left: benimMesaj ? 0 : 24,
          right: benimMesaj ? 24 : 0),
      alignment: benimMesaj ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
          margin: benimMesaj
              ? EdgeInsets.only(left: 30)
              : EdgeInsets.only(right: 30),
          padding: EdgeInsets.only(
              top: 17, bottom: 17, left: 20, right: 20),
          decoration: BoxDecoration(
            borderRadius:BorderRadius.only(
                topLeft: Radius.circular(23),
                topRight: Radius.circular(23),
                bottomLeft: Radius.circular(23)
            ):
            BorderRadius.only(
                topLeft: Radius.circular(23),
                topRight: Radius.circular(23),
                bottomRight: Radius.circular(23)),
            gradient: LinearGradient(
                colors: benimMesaj ? [
                const Color(0xF34848),
                const Color(0xF34848)
                ]
                : [
                const Color(0xF34848),
                const Color(0xE76558)
            ],
          )
      ),
      child: Text(mesaj,
          textAlign: TextAlign.start,
          style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontFamily: 'RobotoMono',
              fontWeight: FontWeight.w300)),
    ),
    );
  }
}