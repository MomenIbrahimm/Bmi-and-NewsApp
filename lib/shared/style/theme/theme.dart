import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';

var lightTheme = ThemeData(
    primarySwatch: Colors.blueGrey,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: HexColor('D1E8E4'),
        elevation: 10.0,
        selectedIconTheme: const IconThemeData(color: Colors.black),
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white
    ),
    appBarTheme: AppBarTheme(
        iconTheme:const IconThemeData(
            color: Colors.black
        ),
      systemOverlayStyle:  SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.dark,
        statusBarColor: Colors.grey[200]
      ),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(15),
        )),
        centerTitle: true,
        color: HexColor('D1E8E4'),
        elevation: 5.0,
        titleTextStyle: const TextStyle(
          color: Colors.black,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        )));

var darkTheme = ThemeData(
    primarySwatch: Colors.blueGrey,
    scaffoldBackgroundColor: Colors.black,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: HexColor('D1E8E4'),
        elevation: 10.0,
        selectedIconTheme: const IconThemeData(color: Colors.black),
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey[400]),
    appBarTheme: AppBarTheme(
        iconTheme:const IconThemeData(
            color: Colors.black
        ),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(20),
        )),
        centerTitle: true,
        color: HexColor('D1E8E4'),
        elevation: 5.0,
        titleTextStyle: const TextStyle(
          color: Colors.black87,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        )));
