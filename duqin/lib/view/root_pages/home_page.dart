import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  final List<Widget> _tabs = [
    Tab(text: '歌曲'),
    Tab(text: '推荐'),
    Tab(text: '歌手'),
    Tab(text: '小视频'),
    Tab(text: '文章'),
    Tab(text: '视频'),
  ];

  final List<Widget> _pages = [
    Text('歌曲'),
    Text('推荐'),
    Text('歌手'),
    Text('小视频'),
    Text('文章'),
    Text('视频'),
  ];

  TabController _tabController;

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    _tabController = TabController(
      length: _tabs.length,
      vsync: this,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('首页'),
        bottom: TabBar(
          tabs: _tabs,
          controller: _tabController,
          isScrollable: true,
        ),
      ),
      body: TabBarView(
        children: _pages,
        controller: _tabController,
      ),
    );
  }
}
