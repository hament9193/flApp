import 'package:first_app/utils/MyRoutes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  final imgUrl =
      "https://scontent.fblr2-1.fna.fbcdn.net/v/t39.30808-6/212695364_4617498288264357_7783660717709135858_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=Ph3AbVxHtPwAX8W2kjL&_nc_ht=scontent.fblr2-1.fna&oh=00_AfB83lxJpl-V7HRnGg229uYqVI3vvA1o23S7-0m3KN5Wmw&oe=63FD3A4C";
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.deepPurple,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imgUrl),
                ),
                accountEmail: Text("phantom@gmail.com"),
                margin: EdgeInsets.zero,
                accountName: Text("Phantom"),
              )),
          ListTile(
            iconColor: Colors.white,
            textColor: Colors.white,
            leading: Icon(CupertinoIcons.home),
            title: Text("Home"),
            onTap: () {
              Navigator.pushNamed(context, MyRoutes.homeRoute);
            },
          ),
          ListTile(
            iconColor: Colors.white,
            textColor: Colors.white,
            leading: Icon(CupertinoIcons.profile_circled),
            title: Text("Profile"),
            onTap: () {},
          ),
          ListTile(
            iconColor: Colors.white,
            textColor: Colors.white,
            leading: Icon(CupertinoIcons.mail),
            title: Text("Send Email"),
            onTap: () {},
          )
        ],
      ),
    );
  }
}
