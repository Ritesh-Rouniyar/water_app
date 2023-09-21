import 'package:another_carousel_pro/another_carousel_pro.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: AppBar(
        title: Text('Home page'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 100,
            width: double.infinity,
            child: AnotherCarousel(
              images:[
                AssetImage('assets/images/1.png',),
                AssetImage('assets/images/4.jpg'),
                NetworkImage("https://www.google.com/url?sa=i&url=https%3A%2F%2Fstock.adobe.com%2Fsearch%3Fk%3Dlion&psig=AOvVaw2KJEUXqNCldLkxKoDuqdqc&ust=1695222117060000&source=images&cd=vfe&ved=0CBAQjRxqFwoTCJDLjtj4toEDFQAAAAAdAAAAABAD",)
              ],
              
              dotSize: 6,
              indicatorBgPadding: 5,

              ),
          )
        ],

      ),
    );
  }
}