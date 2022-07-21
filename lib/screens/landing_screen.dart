import 'package:animal/screens/choose_plan.dart';
import 'package:animal/utilties/string.dart';
import 'package:animal/utilties/textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../common/custom-app-bar.dart';

class LandingScreen extends StatelessWidget {
  static const routeName = '/';
  const LandingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height;
    return SafeArea(
        child: Scaffold(
      body: SafeArea(
          child: Stack(children: [
        Image.asset(
          'assets/elephant.jpg',
          height: _height,
          fit: BoxFit.fitHeight,
        ),
        Column(
          children: const [CustomAppBar()],
        ),
        Positioned(
            bottom: 150,
            left: 35,
            child: Text(
              Strings.readyToWatch,
              style: TextStyles.readyToWatch,
            )),
        Positioned(
            bottom: 70,
            left: 35,
            child: Text(
              Strings.readyToWatchDesc,
              style: TextStyles.readyToWatchDesc,
            )),
            Positioned(
                bottom: 40,
                left: 35,
                child:Text(Strings.START_ENJOYING,style: TextStyles.body,),
            ),
            Positioned(
              bottom: -20,
              right: -30,
              child:InkWell(
                onTap: (){
                  Navigator.of(context).pushNamed(ChoosePlan.routeName);
                },
                child: Container(
                  width: 100,
                  height: 100,
                  decoration:  BoxDecoration(
                    shape:BoxShape.circle,

                    color: Colors.white.withOpacity(.8)
                  ),
                  child: const Icon(Icons.forward,color: Colors.white,size: 40,),

                ),
              )
            ),
      ])
      ),
    ));
  }
}
