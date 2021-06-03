import 'package:duqin/config/app_colors.dart';
import 'package:flutter/material.dart';

class AvatarRoleName extends StatelessWidget {
  final String type;
  final bool showType;

  const AvatarRoleName({Key key, this.type, this.showType = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 110,
      child: Row(
        children: [
          _avatar(),
          Offstage(
            offstage: !showType,
            child: _role(),
          ),
          _name(),
        ],
      ),
    );
  }

  Widget _role() {
    return Container(
      margin: EdgeInsets.only(left: 6, right: 6),
      padding: EdgeInsets.only(left: 2, right: 2, top: .5, bottom: 2),
      decoration: BoxDecoration(
          color: Colors.black, borderRadius: BorderRadius.circular(4)),
      child: Text(
        type ?? '未知',
        style: TextStyle(fontSize: 12, color: Colors.white),
      ),
    );
  }

  Widget _avatar() {
    return SizedBox(
      height: 20,
      width: 20,
      child: ClipOval(
        child: FadeInImage.assetNetwork(
            placeholder: 'assets/images/common/lazy-1.jpeg',
            image:
                'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Falcdn.img.xiaoka.tv%2F20161019%2F7e9%2F304%2F34561699%2F7e930479e72e9d3c31e8cdebfa4668e3.jpg%401e_1c_0o_0l_640h_640w_90q_1pr.jpg&refer=http%3A%2F%2Falcdn.img.xiaoka.tv&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1625217852&t=f0cbe58190b075b7f30effcb4805247c'),
      ),
    );
  }

  Widget _name() {
    return Expanded(
      child: Text(
        '用户名称',
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
          fontSize: 12,
          color: AppColors.un2active,
        ),
      ),
    );
  }
}
