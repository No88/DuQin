import 'package:duqin/config/app_colors.dart';
import 'package:duqin/view/root_pages/home_page.dart';
import 'package:duqin/view/root_pages/message_page.dart';
import 'package:duqin/view/root_pages/mine_page.dart';
import 'package:duqin/view/root_pages/music_page.dart';
import 'package:flutter/material.dart';

class RootPage extends StatefulWidget {
  RootPage({Key key}) : super(key: key);

  @override
  RrootPageState createState() => RrootPageState();
}

const Map<String, String> bottomNames = {
  'home': '首页',
  'music': '音乐',
  'add': '',
  'msg': '消息',
  'mine': '我的',
};

class RrootPageState extends State<RootPage> {
  int _currentIndex = 0;
  final List<Widget> _list = [
    HomePage(),
    MusicPage(),
    Container(),
    MessagePage(),
    MinePage(),
  ];
  final List<BottomNavigationBarItem> _bottomNavItemList = [];

  @override
  void initState() {
    super.initState();
    bottomNames.forEach((key, value) {
      _bottomNavItemList.add(_bottomNavBarItem(key: key, value: value));
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: _list[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: _bottomNavItemList,
        onTap: _onClickTab,
        type: BottomNavigationBarType.fixed,

        /// 显示文字
      ),
      floatingActionButton: _addButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  void _onAdd() {
    print('_onAdd');
  }

  void _onClickTab(int index) {
    if (index == 2) {
      _onAdd();
      return;
    }
    setState(() {
      _currentIndex = index;
    });
  }

  Widget _addButton() {
    return Container(
      margin: EdgeInsets.only(top: 52),
      height: 48,
      width: 48,
      child: FloatingActionButton(
        backgroundColor: AppColors.nav,
        child: Image.asset(
          'assets/images/icons/add.png',
        ),
        onPressed: _onAdd,
      ),
    );
  }

  BottomNavigationBarItem _bottomNavBarItem({String key, String value}) {
    return BottomNavigationBarItem(
        icon: Image.asset(
          'assets/images/icons/${key}.png',
          height: 24,
          width: 24,
        ),
        activeIcon: Image.asset(
          'assets/images/icons/${key}_a.png',
          height: 24,
          width: 24,
        ),
        label: value,
        tooltip: '');
  }
}
