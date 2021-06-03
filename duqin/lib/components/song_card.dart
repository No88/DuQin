import 'package:duqin/components/avatar_role_name.dart';
import 'package:duqin/config/app_colors.dart';
import 'package:flutter/material.dart';

class SongCard extends StatelessWidget {
  const SongCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        color: Colors.white,
        padding: EdgeInsets.all(20),
        child: Row(
          children: [
            _songCover(),
            SizedBox(
              width: 8,
            ),
            _songContent(),
          ],
        ),
      ),
    );
  }

  Widget _songContent() {
    return Expanded(
        child: SizedBox(
      height: 75,
      child: Stack(
        children: [
          Text(
            '标题标题标题',
            style: TextStyle(
              fontSize: 14,
              color: AppColors.active,
            ),
          ),
          Positioned(
            child: Text(
              '子标题子标题子标题',
              style: TextStyle(
                fontSize: 12,
                color: AppColors.un3active,
              ),
            ),
            top: 20,
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Row(
              children: [
                AvatarRoleName(),
              ],
            ),
          ),
        ],
      ),
    ));
  }

  Widget _songCover() {
    return SizedBox(
      width: 75,
      height: 75,
      child: Stack(
        fit: StackFit.expand,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: FadeInImage.assetNetwork(
              placeholder: 'assets/images/common/lazy-1.jpeg',
              image:
                  'https://pic.rmb.bdstatic.com/652c905f3d0a43ce2166ed3248c3e628.jpeg',
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: Image.asset('assets/images/icons/play.png'),
          )
        ],
      ),
    );
  }
}
