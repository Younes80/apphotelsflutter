import 'package:flutter/material.dart';
import 'package:hotels/homepage/homepage_view.dart';
// import 'package:google_fonts/google_fonts.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hotels Booking',
      home: Homepage(),
    );
  }
}

