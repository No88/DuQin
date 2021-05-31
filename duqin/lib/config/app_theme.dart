import 'package:duqin/config/app_colors.dart';
import 'package:flutter/material.dart';

final ThemeData themeData = ThemeData(
  /// 页面背景色
  scaffoldBackgroundColor: AppColors.page,

  /// 主题色
  primaryColor: AppColors.primary,

  /// 文字颜色
  textTheme: TextTheme(
    bodyText2: TextStyle(
      color: AppColors.unactive,
    ),
  ),

  /// 底部按钮主题
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: AppColors.nav,
      selectedItemColor: AppColors.active,
      unselectedItemColor: AppColors.unactive,
      selectedLabelStyle: TextStyle(
        fontSize: 12,
      )),

  /// 取消水波纹效果
  splashColor: Colors.transparent,

  /// 取消水波纹效果
  highlightColor: Colors.transparent,
);
