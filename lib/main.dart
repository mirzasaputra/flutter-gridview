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
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRyDZB4go2krd2QFI9HQomfRP5pQ8sKc_W9sA&usqp=CAU",
    "https://id-static.z-dn.net/files/dcc/6d7cce9ec9388ce3ce0938d237b00406.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJFAYm5hkFI69YRWmwcUO_rblt0l3sY8aeNw&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQpPjo5FUmNaKP_Y2_lnK5oFpWDy9anoYT-YA&usqp=CAU",
    "https://pbs.twimg.com/media/FJjoceeUcAEuKoT.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Gallery', textAlign: TextAlign.center)),
        body: GridView.builder(
            padding: const EdgeInsets.all(8.0),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
            ),
            itemCount: 24,
            itemBuilder: (context, index) {
              if (index > 5) {
                return Padding(padding: const EdgeInsets.all(8.0), child: Image.network(images[index % 6]));
              } else {
                return Padding(padding: const EdgeInsets.all(8.0), child: Image.network(images[index]));
              }
            }));
  }
}
