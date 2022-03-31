import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Belajar Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List images = [
    "https://i.pinimg.com/564x/33/17/47/331747bc6550a4f1045ec2326b597e1b.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRyDZB4go2krd2QFI9HQomfRP5pQ8sKc_W9sA&usqp=CAU"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Gallery')),
        body: GridView.builder(
            padding: const EdgeInsets.all(0.8),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
            ),
            itemCount: 24,
            itemBuilder: (context, index) {
              if (index > 2) {
                return Padding(padding: const EdgeInsets.all(0.8), child: Image.network(images[index % 3]));
              } else {
                return Padding(padding: const EdgeInsets.all(0.8), child: Image.network(images[index]));
              }
            }));
  }
}
