import 'package:flutter/material.dart';
import 'package:flutter_catalog/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int days = 1;
    String name = "Rangan";
    // num v =45.5; //it determines the type of number it is automatically means on declaring num as a detatype you can provide integer,float,long any value in it
    // const pi =3.14; //it's value will never change now as it is declared constant
    // var b = "RanganM";//var detatype can take any value like string int
    // var c = 45;
    // there is another detatype called final we can change stuff in final but in constant we can't do that

    return MaterialApp(
      home: Home_page(),
    );
  }
}
