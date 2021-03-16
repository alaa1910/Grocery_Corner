import 'package:flutter/material.dart';



class Result extends StatefulWidget {
  @override
  _ResultState createState() => _ResultState();
}

class _ResultState extends State<Result> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.black, size: 20.0),
        title: Text(
          'Result',
          style: TextStyle(color: Colors.black, fontSize: 20.0, fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        // actions: [
        //   IconButton(
        //   icon: Icon(Icons.arrow_forward_ios),
        //   onPressed: () {
        //     Navigator.pushReplacement(context, MaterialPageRoute(builder: (_){return ShoppingCart();}));
        //   },
        // ),
        // ],
      ),
      backgroundColor: Colors.grey[100],
    );
  }
}