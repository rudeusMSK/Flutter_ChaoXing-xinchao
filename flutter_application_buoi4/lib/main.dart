import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        body: Center(
          child:  Column(
children: [
  const Spacer(),
   Center(
     child: Padding(
      padding: const EdgeInsets.all(8),
       child: TextButton(
                  onPressed: () {
                    print('object');
                  },
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.blueGrey,
                    backgroundColor: Colors.cyanAccent,
                    padding: const EdgeInsets.all(10),
                  ),
                  child: const Text(
                    'textbox button',
                    style: TextStyle(fontSize: 28),
                  ),
                ),
     ),
   ),
            TextButton.icon (
              onPressed: () {
                print('object');
              },
              style: TextButton.styleFrom(
                foregroundColor: Colors.blueGrey,
                backgroundColor: Colors.cyanAccent,
                padding: const EdgeInsets.all(10),
              ),
              icon: const Icon(Icons.add_a_photo,size: 30,),
              label: const Text("button icon", style:  TextStyle(fontSize: 30,),),
            ),
            const Padding( padding:EdgeInsets.all(8), ),
            TextButton.icon(
              onPressed: null,
              style: TextButton.styleFrom(
                foregroundColor: Colors.blueGrey,
                backgroundColor: Colors.cyanAccent,
                padding: const EdgeInsets.all(10),
              ),
              icon: const Icon(
                Icons.add_a_photo,
                size: 30,
              ),
              label: const Text(
                "disable button",
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
            ),

const Spacer(),
],
          )
        ),
      ),
    );
  }
}
