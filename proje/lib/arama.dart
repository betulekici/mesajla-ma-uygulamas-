import 'package:flutter/material.dart';
class Arama extends StatefulWidget {
  const Arama({Key? key}) : super(key: key);

  @override
  _AramaState createState() => _AramaState();
}

class _AramaState extends State<Arama> {
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
        child: Column(
          children: [
            Container(
              color: Colors.grey,
              padding: EdgeInsets.symmetric(horizontal: 24,vertical: 16),
              child:  Row(children: [
                Expanded(child: TextField(
                  decoration: InputDecoration(
                    hintText: "kullanıcı adı ara",
                    hintStyle: TextStyle(
                      color:Colors.black
                    ),
                    border: InputBorder.none
                    ),

                  ),
                ),
              ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
