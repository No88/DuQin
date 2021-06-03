import 'dart:async';

import 'package:duqin/root_page.dart';
import 'package:flutter/material.dart';

class TransitPage extends StatefulWidget {
  TransitPage({Key key}) : super(key: key);

  @override
  _TransitPageState createState() => _TransitPageState();
}

class _TransitPageState extends State<TransitPage> {
  int _currentTime = 6;
  Timer _time;
  @override
  @override
  void initState() {
    super.initState();
    _time = Timer.periodic(Duration(milliseconds: 1000), (timer) {
      setState(() {
        _currentTime--;
      });

      if (_currentTime <= 0) {
        _jumpRootPage();

        return;
      } else {}
    });
  }

  void _jumpRootPage() {
    _time.cancel();
    Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (BuildContext builder) => RootPage()),
        (route) => false);
  }

  Widget build(BuildContext context) {
    var scaffold = Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/common/ls_bg.png',
            fit: BoxFit.cover,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
          ),
          Positioned(
            top: MediaQuery.of(context).padding.top + 10,
            right: 10,
            child: InkWell(
              child: _clipButton(),
              onTap: _jumpRootPage,
            ),
          ),
        ],
      ),
    );
    return scaffold;
  }

  Widget _clipButton() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(50),
      child: Container(
        width: 50,
        height: 50,
        color: Colors.black.withOpacity(0.5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '跳过',
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
              ),
            ),
            Text(
              '${_currentTime}s',
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
