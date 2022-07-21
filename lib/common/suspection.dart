import 'package:animal/utilties/textstyle.dart';
import 'package:flutter/material.dart';
class SubScription extends StatelessWidget {
  String text,imagePath,amount;
   SubScription(this.imagePath,this.amount,this.text,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.asset(imagePath,
          height: height*.6/4,
          width: width-30,
          fit: BoxFit.fitWidth,),
        ),
        Positioned(
          top: 0,
            bottom: 0,
            left: 48,
            right: 48,
            child: Row(
              children: [
                Text(text,style: TextStyles.body,),
                const Spacer(),
                Text('\$$amount',style: const TextStyle(color: Colors.white,fontSize: 20,fontWeight:FontWeight.bold),)
              ],
            ))
      ],
    );
  }
}
