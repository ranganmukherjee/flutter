import 'package:flutter/material.dart';

class Home_page extends StatelessWidget {
  final int days = 30;
  final String name = "Rangan Mukherjee";

  @override
  Widget build(BuildContext context) {
    return Scaffold(//scaffold contains the head body and foot part like that of html
      appBar: AppBar(//appBar is the head part
        title: Text("Catalog App"),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome to $days'st day of flutter $name"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
