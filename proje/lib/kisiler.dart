import 'package:flutter/material.dart';
import 'package:proje/arama.dart';
import 'package:proje/girisYap.dart';
class Kisiler extends StatefulWidget {
  const Kisiler({Key? key}) : super(key: key);

  @override
  _KisilerState createState() => _KisilerState();
}

class _KisilerState extends State<Kisiler> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          GestureDetector(
            onTap: (){
              Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>GirisYap()));
            },
          )
        ],
      ),
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.search),
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder:(context)=>Arama()));
            }),
           
    );
  }
}
