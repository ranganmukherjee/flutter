import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/home_page.dart';
import 'package:flutter_catalog/pages/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {//here co ntext is a pice of information which helps us to know which thing lies where like wher is the homepage() where is he material app etc
    int days = 1;
    String name = "Rangan";
    // num v =45.5; //it determines the type of number it is automatically means on declaring num as a detatype you can provide integer,float,long any value in it
    // const pi =3.14; //it's value will never change now as it is declared constant
    // var b = "RanganM";//var detatype can take any value like string int
    // var c = 45;
    // there is another detatype called final we can change stuff in final but in constant we can't do that
    bringvegetables(thaila:true,rupees:50);//here we have provided the value of thaila and rupees as parameter so the function will take the value of thaila and rupees as provided in the parameter but if we leave the parameter section empty then it will take the default value of thaila and rupees which is false and 100 provided inside the curly of actual function below
    return MaterialApp(//home,themeMode,theme is the properties of material app
      // home: Home_page(),
      themeMode: ThemeMode.light,//theme mode has three property dark light and system if we give thememode.light then it will be light if .dark then it will be dark
      theme: ThemeData(//if there is normal "theme:" then in this case the colour will be yellow as we have set it inside as we did for theme and dark theme we can't do for system as it will automatically take which is the defaulttheme for system
        primarySwatch: Colors.amber//primary swatch automatically set all the colur like colur of text colur of button  etc
      ),
      darkTheme: ThemeData(brightness: Brightness.dark//here the brightness is p
       ),
       initialRoute: "/Login",
      routes: {
        "/":(context) => Loginpage(),//by default whatever page is given on "/"that page is shown n the emulator
        "/Login":(context) => Loginpage(),//this is a object of login page but as the compiler of dart is smart that iswhy we dont have to give new key word if we want we can give new key word
        "/home":(context) => Home_page(),
      },      //when you app is started your app has multiple screen routs helps us to go to different routes route takes map map takes key and a value

    );
  }

  bringvegetables({@required bool thaila=false,int rupees = 100}) {//curly in the parameter section is given to initialize default value for rupees in general if we dont give the value of rupees while calling the function then by default it will take 100//if we add @required before any of the parameter then it is mandatory to pass the parameter in the function call
    // something inside the function
  }
}
