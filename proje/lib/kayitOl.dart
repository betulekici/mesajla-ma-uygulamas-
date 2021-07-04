import 'package:flutter/material.dart';
class KayitOl extends StatefulWidget {
  const KayitOl({Key? key}) : super(key: key);

  @override
  _KayitOlState createState() => _KayitOlState();
}

class _KayitOlState extends State<KayitOl> {

  TextEditingController kullaniciAdiTextEdit= new TextEditingController();
  TextEditingController emailTextEdit= new TextEditingController();
  TextEditingController sifreTextEdit= new TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100),
        child: Container(
            color: Colors.red
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height-50,//yukarıdan padding
          alignment: Alignment.bottomCenter,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child:Column(
              mainAxisSize: MainAxisSize.min,
              children: [
            TextField(
              controller: kullaniciAdiTextEdit,
              style: TextStyle(
                  color: Colors.grey
              ),
              decoration: InputDecoration(
                hintText: "Kullanıcı Adı",
                hintStyle: TextStyle(
                  color: Colors.black38,
                ),
              ),
            ),

                TextField(
                  controller: emailTextEdit,
                  style: TextStyle(
                      color: Colors.grey
                  ),
                  decoration: InputDecoration(
                      hintText: "email",
                      hintStyle: TextStyle(
                        color: Colors.black38,
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      )
                  ),
                ),
                TextField(
                  controller: sifreTextEdit,
                  style: TextStyle(
                      color: Colors.grey
                  ),
                  decoration: InputDecoration(
                      hintText: "şifre",
                      hintStyle: TextStyle(
                        color: Colors.black38,
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      )
                  ),
                ),
                SizedBox(height: 8, ),
                Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.symmetric(vertical: 20),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [
                            const Color(0xF08080),
                            const Color(0xCD5C5C)
                          ]
                      )
                  ),
                  child: Text("Kayıt Ol",style: TextStyle(color: Colors.black,fontSize: 18),),
                ),
                SizedBox(height: 16,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Giriş yap",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          decoration: TextDecoration.underline
                      ),
                    )
                  ],
                ),
                SizedBox(height: 50,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
