import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/button.dart';
import 'package:flutter_application_1/widgets/currency_card.dart';

void main() {
  runApp(App());
}

class App extends StatefulWidget{
  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  int counter = 0;
  void onClicked() {
    setState(() {
      counter = counter+1;
    }); 
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFFF4EDDB),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Text('Click count',
            style: TextStyle(fontSize: 36,fontWeight: FontWeight.w300),),
            Text('$counter',
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.w300),),
            IconButton(onPressed: onClicked, icon: Icon(Icons.add),iconSize: 30,)
          ],
          ),
        ),

        ),
    );
  }
}
  
