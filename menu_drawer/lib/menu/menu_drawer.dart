import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:menu_drawer/views/constant.dart';


class MenuDrawer extends StatelessWidget {

  Widget _createHeader(BuildContext context) {
    return DrawerHeader(
      margin: EdgeInsets.zero,
      padding: EdgeInsets.zero,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.white,
            Theme.of(context).primaryColor
          ],
          begin: Alignment.centerLeft,
          end: Alignment.bottomRight,
        )
      ),
      child: Stack(
        children: [
              Positioned(
                bottom: 12.0,
                left: 16.0,
                child: Text('Janine Tavares - janine.h201@gmail.com',
                style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
              ),
              ),
          Positioned(
            top: 45.0,
            left: 16.0,
            child: Icon(Icons.person, size: 100,),
          )
            ],
      ),
    );



  }

  Widget _createDrawerItem({required IconData icon, required String text, required GestureTapCallback onTap}) {
    return ListTile(
      title: Row(
        children: [
          Icon(icon),
          Padding(
              padding: EdgeInsets.only(left: 8.0),
            child: Text(text),
          ),
        ],
      ),
      onTap: onTap,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          _createHeader(context),
          SizedBox(height: 10.0,),
          _createDrawerItem(
              icon: Icons.home,
              text: Constant.MENU_HOME,
              onTap: () {
                Navigator.of(context).pop();
              }
          ),
          SizedBox(height: 10.0,),
          Divider(),
            _createDrawerItem(
          icon: Icons.list,
           text: Constant.MENU_SCREEN1,
            onTap: () {
             Navigator.of(context).pop();
    }
    ),
          Divider(),
          _createDrawerItem(
              icon: Icons.home,
              text: Constant.MENU_SCREEN2,
              onTap: () {
                Navigator.of(context).pop();
              }
          ),
          Divider(),
          _createDrawerItem(
              icon: Icons.home,
              text: Constant.MENU_ABOUT,
              onTap: () {
                Navigator.of(context).pop();
              }
          ),
          Divider(),
          _createDrawerItem(
              icon: Icons.home,
              text: Constant.MENU_EXIT,
              onTap: () {
                if(Platform.isAndroid) {
                    SystemNavigator.pop();
                }else if(Platform.isIOS) {
                  exit(0);
                }
              }
          ),
        ]
    )
    );


  }

}