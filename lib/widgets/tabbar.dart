import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../utils/app_tools.dart';

class TabBarr extends StatelessWidget {
  const TabBarr({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: width * (35 / 375)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset(AppIcons.home),
          SvgPicture.asset(AppIcons.menu),
          SvgPicture.asset(AppIcons.basket),
          SvgPicture.asset(AppIcons.accountIcon),
        ],
      ),
    );
  }
}
