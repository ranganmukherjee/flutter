import 'package:flutter/material.dart';
import 'package:flutter_catalog/Util/routes.dart';

class Loginpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors
            .white, //image ka rang white hay to app ka background vi white bana diye
        child: SingleChildScrollView(
            //single child scroll view page ko scroll view me dal deta hay agar aapka phone ka size chota ho toh ye scroll karneyy mey aapki madat karta hay
            child: Column(
          children: [
            Image.asset("assets/images/login.png",
                fit: BoxFit
                    .cover), //fit indicates how to adjust the image in the apptype "fit." to find its different use caes
            SizedBox(
              height: 20.0,
            ),
            Text(
              "Welcome",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: "Enter Username", labelText: "Username"),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Enter Password",
                      labelText: "Password",
                    ),
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  ElevatedButton(
                    child: Text("Login"),
                    style: TextButton.styleFrom(minimumSize: Size(150, 40)),
                    onPressed: () {
                      Navigator.pushNamed(context, MyRoutes.homeRoute);
                    },
                  )
                ],
              ),
            )
          ],
          // Center(
          //   child: Text("Login Page",style: TextStyle(
          //     fontSize: 20,
          //     color: Colors.blue,
          //     fontWeight: FontWeight.bold,
          //   ),)
          // ),
        )));
  }
}
