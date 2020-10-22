import 'package:flutter/material.dart';
import 'package:myapp/pages/contact_page.dart';
import 'package:myapp/pages/home.dart';

void main() => runApp(MaterialApp(
  
  initialRoute: '/',

  routes: {
    '/' : (context) => Home(),
    '/contact' : (context) => Contact()
  },
));

