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
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List images = [
    "https://i.pinimg.com/564x/33/17/47/331747bc6550a4f1045ec2326b597e1b.jpg"
  ]

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: <Widget>[
      Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/bg1.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: null),
      SafeArea(child: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 20.0), 
          child: Text(
            'Gallery', 
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))))),
      SafeArea(
          child: DraggableScrollableSheet(
              initialChildSize: 0.65,
              minChildSize: 0.65,
              maxChildSize: 1,
              builder: (context, scrollController) {
                return Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                    color: Colors.white,
                  ),
                  padding: const EdgeInsets.only(top: 10),
                  child: GridView.count(
                    controller: scrollController,
                    padding: const EdgeInsets.all(8.0),
                    crossAxisCount: 3,
                    children: List.generate(24, (index) {
                      return Padding(padding: const EdgeInsets.all(8.0), child: Image.network(images[0]));
                    }),
                  ),
                );
              })),
    ]));
  }
}
