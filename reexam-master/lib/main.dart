import 'package:e_commersc_exem/screen/carte/carte_screen.dart';
import 'package:e_commersc_exem/screen/home/home_screen.dart';
import 'package:e_commersc_exem/screen/produect/product_screen.dart';
import 'package:flutter/material.dart';
void main()
{
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/':(context) => HomeScreen(),
      'product':(context) => ProductScreen(),
      'cart':(context) => CarteScreen()
    }
  ),);
}