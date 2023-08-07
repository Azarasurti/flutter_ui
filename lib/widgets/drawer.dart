import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 100,
      child: Container(
        // padding: EdgeInsets.zero,
        color: Color(0xFF415A53),
        child: ListView(
          // padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  accountName: Text('Azara Surti'),
                  accountEmail: Text('surtiazara@gmail.com'),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/profile.jpg'),
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xFF415A53), // Replace with your desired darker green shade color\
                  ),
                ),
            ),
            SizedBox(
              height: 20,
            ),
            ListTile(
              leading: Icon(CupertinoIcons.home,color: Color(0xFFF0EBE3),size: 25,),
              title: Container(
                margin: EdgeInsets.fromLTRB(0, 1.2, 100, 0),
                child: Text('HOME',
                style: TextStyle(
                  color: Color(0xFFF0EBE3),
                  fontSize: 20.0 ,
                  fontWeight: FontWeight.normal,
                  letterSpacing: 2.0,
                ),),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            ListTile(
              leading: Icon(CupertinoIcons.circle_grid_3x3,color: Color(0xFFF0EBE3),size: 25,),
              title: Container(
                margin: EdgeInsets.fromLTRB(0, 1.2, 0, 0),
                child: Text('CATEGORIES',
                  style: TextStyle(
                    color: Color(0xFFF0EBE3),
                    fontSize: 20.0 ,
                    fontWeight: FontWeight.normal,
                    letterSpacing: 2.0,
                  ),),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            ListTile(
              leading: Icon(CupertinoIcons.profile_circled,color: Color(0xFFF0EBE3),size: 25,),
              title: Container(
                margin: EdgeInsets.fromLTRB(0, 1.2, 100, 0),
                child: Text('PROFILE',
                  style: TextStyle(
                    color: Color(0xFFF0EBE3),
                    fontSize: 20.0 ,
                    fontWeight: FontWeight.normal,
                    letterSpacing: 2.0,
                  ),),
              ),
            )
          ],
        ),
      ),
    );
  }
}

