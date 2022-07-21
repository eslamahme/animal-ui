import 'package:animal/common/custom-app-bar.dart';
import 'package:animal/common/suspection.dart';
import 'package:animal/screens/dash_board_screen.dart';
import 'package:animal/utilties/textstyle.dart';
import 'package:flutter/material.dart';

import '../utilties/string.dart';
class ChoosePlan extends StatelessWidget {
  static const routeName = '/choose';

  const ChoosePlan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: const Color(0xFFB98959),
      body: Stack(

        children: [
          ListView(
            padding: const EdgeInsets.all(10),
            children: [
              const CustomAppBar(),
              const SizedBox(height: 10,),
              Text(Strings.chooseAPlan,style: TextStyles.body,),
              const SizedBox(height: 20,),
              SubScription('assets/weekly.jpg', '15', Strings.weekSubscription),
              const SizedBox(height: 10,),
              SubScription('assets/monthly.jpg', '15', Strings.oneMonthSubscription),
              const SizedBox(height: 10,),
              SubScription('assets/3monthly.jpg', '15', Strings.threeMonthSubscription),
              const SizedBox(height: 10,),
              SubScription('assets/6monthly.jpg', '15', Strings.sixMonthSubscription),
            ],
          ),
          Positioned(
            bottom: 40,
            left: 35,
            child:Text(Strings.LAST_STEP_TO_ENJOY,style: TextStyles.body,),
          ),
          Positioned(
              bottom: -20,
              right: -30,
              child:InkWell(
                onTap: (){
                  Navigator.of(context).pushNamed(DashBoardScreen.routeName);
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

        ],
      )


    ));
  }
}
