import 'package:flutter/material.dart';

class Loginpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors
            .white, //image ka rang white hay to app ka background vi white bana diye
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
                    height: 20.0,
                  ),
                  ElevatedButton(
                    child: Text("Login"),
                    style: TextButton.styleFrom(),
                    onPressed: () {
                      print("Hi Rangan");
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
        ));
  }
}
