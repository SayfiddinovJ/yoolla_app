import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:yoolla_app/utils/app_tools.dart';
import 'package:yoolla_app/widgets/button.dart';
import 'package:yoolla_app/widgets/tabbar.dart';

import '../../widgets/listview.dart';
class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xFF3A0CA3),
      appBar: AppBar(
        backgroundColor: const Color(0xFF3A0CA3),
        elevation: 0,
        actions: [
          SafeArea(
            child: Row(
              children: [
                Container(
                    height: height*(50/812),
                    width: height*(50/812),
                    decoration: BoxDecoration(
                      color: const Color(0xFFF72585),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Center(child: Image.asset(AppIcons.account,height: 24,width: 24,))
                ),
                Container(
                  margin: EdgeInsets.only(left: width*(6.5/375),top: height*(10/812)),
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Text('Hoşgeldin',style: TextStyle(
                      color: const Color(0xFFFFFFFF).withOpacity(0.6),
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      // fontFamily: 'Rubik'
                    ),),
                    const Text('Doğukan Erel',style: TextStyle(
                      color: Color(0xFFFFFFFF),
                      // fontFamily: 'Rubik',
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),)
                  ],),
                ),
                SizedBox(width: width*(149/375),),
                SvgPicture.asset(AppIcons.settings),
                SizedBox(width: width*(28/375),),
              ],),
          ),
        ],),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: height*(35/812),),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width*(25/375)),
              child: Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        height: height*(24/812),
                        width: width*(327/375),
                        decoration: BoxDecoration(
                          color: const Color(0xFFFFFFFF),
                          borderRadius: BorderRadius.circular(40)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                          const Text('250',style: TextStyle(
                            color: Color(0xFF000000),
                            fontSize: 8,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'Montserrat',
                            letterSpacing: -0.165,
                          ),),
                          SizedBox(width: width*(8/375),),
                        ],),
                      ),
                      Positioned(
                          child: Container(
                            height: height*(24/812),
                            width: width*(253/375),
                            decoration: BoxDecoration(
                                color: const Color(0xFFF72585),
                                borderRadius: BorderRadius.circular(40)
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(width: width*(8/375),),
                                const Text('200',style: TextStyle(
                                  color: Color(0xFFFFFFFF),
                                  fontSize: 8,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'Montserrat',
                                  letterSpacing: -0.165,
                                ),),
                              ],),
                          ),
                      ),
                    ],),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text('İndirim kuponu için son 50 puan!',style: TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w400,
                        fontSize: 8,
                        letterSpacing: -0.165,
                      ),)
                    ],),
                  SizedBox(height: height*(46/812),),

                  Button(),

                  SizedBox(height: height*(47/812),),


              ],),
            ),

            const Listviews(),

            Container(
              height: height*(73/812),
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color(0xFF3A0CA3),
              ),
              child: const TabBarr(),
            ),

            SizedBox(height: height*(18/812),),
          ],),
      ),
    );
  }
}