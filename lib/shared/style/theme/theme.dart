import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';

var lightTheme = ThemeData(
    primarySwatch: Colors.blueGrey,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: HexColor('0F52BA'),
        elevation: 10.0,
        selectedIconTheme: const IconThemeData(color: Colors.black),
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white
    ),
    appBarTheme: AppBarTheme(
      toolbarHeight: 80,
        iconTheme:const IconThemeData(
            color: Colors.white
        ),
      systemOverlayStyle:  SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.dark,
        statusBarColor: Colors.grey[200]
      ),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(70),
          bottomRight: Radius.circular(70),
        )),
        centerTitle: true,
        color: HexColor('0F52BA'),
        elevation: 5.0,
        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        )));

var darkTheme = ThemeData(
    primarySwatch: Colors.blueGrey,
    scaffoldBackgroundColor: Colors.black,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: HexColor('0F52BA'),
        elevation: 10.0,
        selectedIconTheme: const IconThemeData(color: Colors.black),
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey[400]),
    appBarTheme: AppBarTheme(
      toolbarHeight: 80,
        systemOverlayStyle:  const SystemUiOverlayStyle(
            statusBarIconBrightness: Brightness.light,
            statusBarColor: Colors.transparent
        ),
        iconTheme:const IconThemeData(
            color: Colors.white
        ),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(70),
        )),
        centerTitle: true,
        color: HexColor('0F52BA'),
        elevation: 5.0,
        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        )));
