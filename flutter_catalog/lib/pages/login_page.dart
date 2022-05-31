// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_catalog/Util/routes.dart';

class Loginpage extends StatefulWidget {
  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  //loginpagestate has a underscore before its name in dart this means that we are declaring something private
  String name = "";
  bool changebutton = false;
  final _formKey = GlobalKey<FormState>();
  movetohome(BuildContext context)async{
    if(_formKey.currentState!.validate()){
      setState(() {
        changebutton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(
      context, MyRoutes.homeRoute);
      setState(() {
        changebutton = false;
      });
    }
    
                              
  }
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors
            .white, //image ka rang white hay to app ka background vi white bana diye
        child: SingleChildScrollView(
            //single child scroll view page ko scroll view me dal deta hay agar aapka phone ka size chota ho toh ye scroll karneyy mey aapki madat karta hay
            child: Form(
              key: _formKey,
          child: Column(
            children: [
              Image.asset("assets/images/login.png",
                  fit: BoxFit
                      .cover), //fit indicates how to adjust the image in the apptype "fit." to find its different use caes
              SizedBox(
                height: 20.0,
              ),
              Text(
                "Welcome $name",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 32.0),
                
                  child: Column(
                    children: [
                      TextFormField(
                          decoration: InputDecoration(
                              hintText: "Enter Username",
                              labelText: "Username"),
                              validator: (value){
                                if(value!.isEmpty){
                                  return "Username cannot be empty";
                                }
                                
                                return null;
                              },
                          onChanged: (Value) {
                            name = Value;
                            setState(() {});
                          }),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: "Enter Password",
                          labelText: "Password",
                        ),
                         validator: (value){
                                if(value!.isEmpty){
                                  return "Password cannot be empty";
                                } else if (value.length<6){
                                  return "Password length should be atleast 6";
                                }
                                
                                 return null;
                              },
                      ),
                      SizedBox(
                        height: 40.0,
                      ),
                      Material(//ink well is wrapped with material to get the ripple effect while using animated container
                        borderRadius: BorderRadius.circular(changebutton? 50: 8) ,//when we create the container initially at that time its edges were sharp but this property "boxradious" gives them rounded edges
                        color: Colors.amber,
                          child: InkWell(
                              // splashColor: Colors.red,
                               onTap: () => movetohome(context),/*() async {*/
                              //   setState(() {
                              //     changebutton = true;
                              //   });
                              //   await Future.delayed(Duration(seconds: 1));
                              //   await Navigator.pushNamed(
                              //       context, MyRoutes.homeRoute);
                              //   setState(() {
                              //     changebutton = false;
                              //   });
                              // },
                              child: AnimatedContainer /*Ink*/(//ink is used instead of animated container to bring the ripple effect
                                //creating a custom button where we can design a button//animated container can create some animation in the button animated container must contain a duration or else it will give error

                                duration: Duration( seconds:1), //duration for which the animation will run as we click or hover in the button
                                width: changebutton ? 50  : 150, //width of the button
                                height: 50, //height of the button

                                alignment: Alignment.center,
                                child: changebutton
                                    ? Icon(Icons.done, color: Colors.white)
                                    : Text(
                                        //this where the text is written
                                        "Login", //the login text in the button
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18),
                                      ),
                                // decoration: BoxDecoration(
                                //     //remember if you are using the decoration property of container always use the box color feature inside box decoration

                                //     color: Colors.amber, //by default the colur of the button is white so we have to change it
                                //     // shape: changebutton?BoxShape.circle:BoxShape.rectangle,//if change button = true then box shape = circle else rectangle and if we use this propety we cannot use the border radius property
                                    
                                //     ),
                              )))
                    ],
                  ),
                ),
              
            ],
            // Center(
            //   child: Text("Login Page",style: TextStyle(
            //     fontSize: 20,
            //     color: Colors.blue,
            //     fontWeight: FontWeight.bold,
            //   ),)
            // ),
          ),
        )));
  }
}
