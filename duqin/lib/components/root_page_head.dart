import 'package:duqin/config/app_colors.dart';
import 'package:flutter/material.dart';

class RootPageHead extends StatelessWidget {
  const RootPageHead({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Image.asset(
            'assets/images/common/app_logo.png',
            height: 30,),
          Expanded(child: _searchContent()),
          Image.asset(
            'assets/images/common/root_noti.png',
            height: 30,),
        ],
      ),
    );
  }

  Widget _searchContent() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15),
      height: 30,
      decoration: BoxDecoration(
        color: AppColors.page,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(left:6, right:2),
            child: Icon(
            Icons.search,
            size: 16,
            color: AppColors.un3active,
            ),
          ),
          Text(
            '搜索关键词',
            style: TextStyle(
              fontSize: 12,
              color: AppColors.un3active,
            ),
          )
        ],
      ),
    );
  }
}