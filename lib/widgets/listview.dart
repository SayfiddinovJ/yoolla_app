import 'package:flutter/material.dart';
import 'package:yoolla_app/widgets/texts.dart';

class Listviews extends StatelessWidget {
  const Listviews({super.key,});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Expanded(
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width*(25/375)),
              child: Container(
                width: double.infinity,
                color: const Color(0xFF4229A2),

                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: width*(20/375)),
                  child: Container(
                    margin: EdgeInsets.only(top: height*(13/812)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Text('Son Siparişlerim',style: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          // fontFamily: 'Rubik',
                          letterSpacing: -0.165,
                        ),),
                        SizedBox(height: height*(19/812),),
                        Texts(n: 1, text: 'Sandy Ridge Camping Canton'),
                        SizedBox(height: height*(18/812),),
                        Texts(n: 1, text: 'Sandy Ridge Camping Canton'),
                        SizedBox(height: height*(18/812),),
                        Texts(n: 1, text: 'Sandy Ridge Camping Canton'),
                        SizedBox(height: height*(29/812),)

                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: height*(32/812),),


            Padding(
              padding: EdgeInsets.symmetric(horizontal: width*(25/375)),
              child: Container(
                width: double.infinity,
                color: const Color(0xFF4229A2),

                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: width*(20/375)),
                  child: Container(
                    margin: EdgeInsets.only(top: height*(13/812)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                         const Text('Adreslerim',style: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          // fontFamily: 'Rubik',
                          letterSpacing: -0.165,
                        ),),
                        SizedBox(height: height*(19/812),),
                        Texts(n: 2, text: 'Ev Adresi, Muğla/Menteşe'),
                        SizedBox(height: height*(18/812),),
                        Texts(n: 2, text: 'İş Adresi, Muğla/Menteşe'),
                        SizedBox(height: height*(18/812),),
                        Texts(n: 2, text: 'Adres, Ankara/Yenimahalle'),
                        SizedBox(height: height*(29/812),)
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
      )
    );
  }
}
