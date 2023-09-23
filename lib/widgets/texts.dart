import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:yoolla_app/utils/app_tools.dart';

class Texts extends StatelessWidget {
  const Texts({super.key, required this.n, required this.text});

  final int n;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        n == 1
            ? SvgPicture.asset(
                AppIcons.arrow,
              )
            : SvgPicture.asset(
                AppIcons.greenArrow,
              ),
        const SizedBox(
          width: 10,
        ),
        Text(
          text,
          style: const TextStyle(
            color: Color(0xFFFFFFFF),
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w400,
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}
