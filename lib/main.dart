import 'package:flutter/material.dart';
import 'package:water_app/pages/loading.dart';
import 'package:water_app/pages/home.dart';
import 'package:water_app/pages/record.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/loading': (context) => const Loading(),
      '/': (context) => Home(),
      '/record': (context) => const Record(),
    },
  ));
}

