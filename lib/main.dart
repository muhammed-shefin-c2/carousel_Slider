import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // This widget is the root of your application.
  final curousal_items = [
    {
      'image': 'assets/images/banner/black-sedan-car-driving-bridge-road.jpg'
    },
    {
      'image': 'assets/images/banner/mini-coupe-parking-highway-bridge.jpg'
    },
    {
      'image': 'assets/images/banner/white-coupe-sport-car-parking-bridge.jpg'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Text('Demo Slide'),
          ),
          body: SingleChildScrollView(
            child: Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(9.0),
                  child: CarouselSlider(items: curousal_items.map((item){
                    return Card(
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              item['image']!,
                              fit: BoxFit.cover,
                              width: double.infinity,
                              height: double.infinity,
                            ),
                          )
                        ],
                      ),
                    );
                  }).toList(),
                      options: CarouselOptions(
                    height: 200,
                    autoPlay: true,
                    enlargeCenterPage: true,
                    viewportFraction: 0.8,
                    autoPlayInterval: Duration(seconds: 3),
                    autoPlayAnimationDuration: Duration(milliseconds: 1000),
                    pauseAutoPlayOnTouch: true,
                    initialPage: 0,
                    onPageChanged: (index, reason) {
                      print('Page changed to: $index');
                      },
                      ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Image.asset(
                            'assets/images/banner/white-coupe-sport-car-parking-bridge.jpg'),
                        SizedBox(
                          height: 30,
                        ),
                        Image.asset('assets/images/banner/mini-coupe-parking-highway-bridge.jpg'),
                        SizedBox(
                          height: 30,
                        ),
                        Image.asset('assets/images/banner/black-sedan-car-driving-bridge-road.jpg'),
                        SizedBox(
                          height: 30,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          )
      ),
    );
  }
}
