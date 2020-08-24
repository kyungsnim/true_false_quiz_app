import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
//      home: CachedTest(),
    );
  }
}

class CachedTest extends StatefulWidget {
  @override
  _CachedTestState createState() => _CachedTestState();
}

class _CachedTestState extends State<CachedTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: CachedNetworkImage(
            imageUrl: 'https://images.unsplash.com/photo-1595280253358-5e5ceac5f7b7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
            width: MediaQuery.of(context).size.width * 0.9,
            height: MediaQuery.of(context).size.height * 0.5,
            fit: BoxFit.cover
          )
        )
      )
    );
  }
}
