import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:task_ui_app/readWrite.dart';

import 'main.dart';


class RedScreen extends StatefulWidget {
  const RedScreen({Key? key}) : super(key: key);

  @override
  State<RedScreen> createState() => _RedScreenState();
}

class _RedScreenState extends State<RedScreen> {
  String name="";
  Future<void> getName() async {
    name = await getString("name");
    setState(() {
    });
  }
  @override
  void initState()
  {
    super.initState();
    getName();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.red,
        title: Text("Red"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(name,
          style: TextStyle(fontSize: 30),),
          SizedBox(
            height: 30,
          ),
          Center(
            child: ElevatedButton(
              onPressed: (){
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
              ),
              child: Text("BACK")),

            ),
        ],
      ),

      );

  }
}


