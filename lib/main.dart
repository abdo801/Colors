import 'package:flutter/material.dart';
import 'package:task_ui_app/blue.dart';
import 'package:task_ui_app/green.dart';
import 'package:task_ui_app/readWrite.dart';
import 'package:task_ui_app/red.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const Home());
}
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyApp(),title: "phlan",);
  }
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  var nameController = TextEditingController();


  @override
  void initState()
  {
    print(getString("name"));
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
    title: Text("Colors",
    style: TextStyle(color: Colors.black)
        ,)
        ,
    ),
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
           ElevatedButton(
              onPressed:(){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=> const BlueScreen()),
                );
              },
             child: Text("Blue"),
           ),
          ElevatedButton(
              onPressed:(){
                setString("name",nameController.text);
                Navigator.push(context,
                    MaterialPageRoute(builder:(context)=> const RedScreen()),
                );
              },
            style: ElevatedButton.styleFrom(
          backgroundColor: Colors.red,
          ),
               child: Text("Red")
          ),
          ElevatedButton(
            onPressed:(){
              Navigator.push(context,
                MaterialPageRoute(builder: (context)=> const GreenScreen()),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
            ),
            child: Text("Green"),
          ),
          TextFormField(
           decoration: InputDecoration(
             border:OutlineInputBorder(),
             label: Text("Name:")
           ),
            controller: nameController,
            textInputAction: TextInputAction.go,
            onFieldSubmitted: (name) => setString("name",name),

          )
        ],
        ),
      )
    );
  }
}