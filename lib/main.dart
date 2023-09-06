import 'package:flutter/material.dart';
import 'package:practica2/image_carousel.dart';

void main() {
  runApp(FirstScreen());
} 
class FirstScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FirstScreen();
  }
} 
class _FirstScreen extends State<FirstScreen> { 
 @override 
 Widget build(BuildContext context) {
  return MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.amber[200],
        leading: Row(
          children: <Widget>[
            SizedBox(
              width: 5.0,
            ),
            IconButton(
              color: Colors.white,
              icon: const Icon(
                Icons.arrow_back,
              ),
              onPressed: () {},
            ),
          ],
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          SizedBox(
            width: 20.0,
          ),
        ],
      ),
      backgroundColor: Colors.amber[200],
      
      body: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              CarouselWithIndicatorDemo(), 
            ],
          ),
        ],
      ),
    ),
  );
}
}
