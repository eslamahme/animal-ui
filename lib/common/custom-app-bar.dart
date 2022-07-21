import 'package:animal/utilties/textstyle.dart';
import 'package:flutter/material.dart';

import '../utilties/string.dart';
class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 40, left: 16, right: 16),
      child:  Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(Strings.appName,style: TextStyles.appNameTextStyle,),
              Text(Strings.tagLine,style: TextStyles.tagLineTextStyle,),
            ],
          ),
          const Icon(Icons.menu,
            color: Colors.white,)
        ],
      ),
    );
  }
}
