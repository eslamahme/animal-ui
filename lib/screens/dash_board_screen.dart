import 'package:animal/common/custom-app-bar.dart';
import 'package:animal/utilties/string.dart';
import 'package:animal/utilties/textstyle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DashBoardScreen extends StatelessWidget {
  static const routeName = 'dashBoard';

  const DashBoardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return SafeArea(
        child: Scaffold(
      body: Stack(
        children: [
          Positioned(
              top: -180,
              left: -25,
              child: Image.asset(
                'assets/elephant.jpg',
                height: height,
                fit: BoxFit.fitHeight,
              )),
          const CustomAppBar(),
          Positioned(
              top: height / 8,
              left: (width - 350) / 2,
              right: (width - 350) / 2,
              child: Text(
                Strings.welcomeToAPlanet,
                style: TextStyles.readyToWatch,
              )),
          Positioned(
              top: height / 3.5,
              height: height,
              left: 0,
              right: 0,
              child: Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0xFFB98959),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      Strings.relatedToYou,
                      style: TextStyles.body,
                    ),
                    SizedBox(
                      height: height / 110,
                    ),
                    Expanded(
                        child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.asset(
                                  'assets/tiger.jpg',
                                  width: width / 2,
                                  fit: BoxFit.cover,
                                  height: height / 4,
                                ),
                              ),
                              SizedBox(
                                height: height / 110,
                              ),
                              Text(
                                Strings.lifeWithATiger,
                                style: TextStyles.body,
                              ),
                              SizedBox(
                                height: height / 110,
                              ),
                              Text(
                                Strings.loremIpsum,
                                style: TextStyles.tagLineTextStyle,
                              ),
                            ],
                          ),
                          SizedBox(
                            width: width / 40,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.asset(
                                  'assets/wild_animals.jpeg',
                                  width: width / 2,
                                  fit: BoxFit.cover,
                                  height: height / 4,
                                ),
                              ),
                              SizedBox(
                                height: height / 110,
                              ),
                              Text(
                                Strings.wildAnimals,
                                style: TextStyles.body,
                              ),
                              SizedBox(
                                height: height / 110,
                              ),
                              Text(
                                Strings.loremIpsum,
                                style: TextStyles.tagLineTextStyle,
                              ),
                            ],
                          )
                        ],
                      ),
                    )),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white
                      ),
                      child: Image.asset('assets/bear.png',width: width/7,fit: BoxFit.cover,height: height/7,),

                    )
                  ],

                ),

              )),
          Positioned(bottom: height/15,
              left: width/25,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(Strings.quickCategories,style: TextStyles.body,),
              SizedBox(height: height/110),
              SingleChildScrollView(scrollDirection: Axis.horizontal,
                  child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  buildColumn(width, height,'assets/bear.png',Strings.bear),
                  const SizedBox(width: 7,),
                  buildColumn(width, height,'assets/lion.png',Strings.lion),
                  const SizedBox(width: 7,),

                  buildColumn(width, height,'assets/reptiles.png',Strings.reptiles),
                  const SizedBox(width: 7,),
                  buildColumn(width, height,'assets/pets.png',Strings.pets),

                ],
              ))



            ],
          ))
        ],
      ),
    ));
  }

  Column buildColumn(double width, double height,String img,String text) {
    return Column(
                  //crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(1),
                      width: width/4,
                      height: height/9,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xFF8C5835)
                      ),
                      child: Image.asset(img,width: width/9,fit: BoxFit.cover,height: height/10,),
                    ),
                    SizedBox(height: height/110),
                    Text(text,style: TextStyles.body,textAlign: TextAlign.center,)
                  ],
                );
  }
}
