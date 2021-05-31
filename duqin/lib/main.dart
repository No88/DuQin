import 'package:duqin/transit_page.dart';
import 'package:flutter/material.dart';

import 'config/app_theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '读琴',
      home: TransitPage(),
      theme: themeData,
    );
  }
}
