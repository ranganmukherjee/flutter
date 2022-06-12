import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final img_url = "https://icoders.github.io/classes/assets/img/testimonials/Rangan.jpg";
    return Drawer(
      child: Container(
        color: Colors.amber,
        child: ListView(
          children: [
            DrawerHeader(
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  
                  accountName: Text("Rangan Mukherjee"),
                  accountEmail: Text("justlikethatrangan@gmail.com"),
                  // currentAccountPicture: Image.network(img_url),//Takes the image from the above given image it takes it from the network
                  currentAccountPicture: CircleAvatar(backgroundImage: NetworkImage(img_url),
                  ),
                ),
              ),
              ListTile(
                leading:Icon(
                  CupertinoIcons.home,color:Colors.white,),
                  title: Text("Home",
                  textScaleFactor:1.2,
                  style: TextStyle(color: Colors.white),
                  ),
                  
              ),
              ListTile(
                leading:Icon(
                  CupertinoIcons.profile_circled,color:Colors.white,),
                  title: Text("Profile",
                  textScaleFactor:1.2,
                  style: TextStyle(color: Colors.white),
                  ),
                  
              ),
              ListTile(
                leading:Icon(
                  CupertinoIcons.mail,color:Colors.white,),
                  title: Text("Email me",
                  textScaleFactor:1.2,
                  style: TextStyle(color: Colors.white),
                  ),
                  
              ),
          ],
        ),
      ),
    );
  }
}
