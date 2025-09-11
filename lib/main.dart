import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Center(child: Text(style:TextStyle(color: Colors.white),'Dicee'),),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: 
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child:TextButton(
              onPressed: () {
                print('left button engaged');
              },
              child: Image.asset('images/dice1.png'),
            ),
          ),
  
              SizedBox(
                width: 20.0
              ),
          
          Expanded(
            child: TextButton(
              onPressed: () {
                print('Right button engaged');
              },
              child: Image.asset('images/dice1.png')),
          ),
        ],
      ),
    );
  }
}
