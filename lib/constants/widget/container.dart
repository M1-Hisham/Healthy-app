import 'package:flutter/material.dart';
import 'package:healthy/constants/method/navigator.dart';
import 'package:healthy/screens/home2_screen.dart';
import 'package:healthy/screens/recipes_screen.dart';
import '../colors.dart';
import '../font_size.dart';

class ContainerCategories extends StatelessWidget {
  const ContainerCategories({
    super.key,
    required this.tital,
    required this.image,
  });
  final String tital;
  final String image;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, HomeTScreen.routes),
      child: Center(
        child: Container(
          margin: EdgeInsets.only(bottom: 10, top: 10),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: black.withAlpha(50),
                //spreadRadius: 1,
                blurRadius: 10,
                offset: Offset(0, 4), // changes position of shadow
              ),
            ],
            //color: white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Stack(alignment: Alignment.center, children: [
            Image.asset('assets/images/$image'),
            Text(
              tital,
              style: TextStyle(
                fontFamily: "Inter",
                fontSize: h1,
                fontWeight: w800,
                color: white,
              ),
            )
          ]),
        ),
      ),
    );
  }
}

class ContainerTopRated extends StatelessWidget {
  ContainerTopRated({
    super.key,
    required this.image,
  });
  final String image;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => navPush(context: context, screen: RecipesScreen()),
      child: Container(
        margin: EdgeInsets.all(10),
        width: 152,
        height: 171,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: black.withAlpha(80),
              //spreadRadius: 1,
              blurRadius: 10,
              offset: Offset(0, 8), // changes position of shadow
            ),
          ],
          color: white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Image.asset('assets/images/$image'),
          Text(
            "Lentil soup",
            style: TextStyle(
              fontFamily: "Inter",
              fontSize: 12,
              fontWeight: w700,
              color: black,
              height: 2,
            ),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            Image.asset('assets/icons/Star 1.png'),
            Text(
              "4.8",
              style: const TextStyle(
                fontFamily: "Inter",
                fontSize: 13,
                fontWeight: FontWeight.w500,
                color: black,
              ),
            ),
            Image.asset('assets/icons/Vector 2.png'),
            Text(
              "15m",
              style: const TextStyle(
                fontFamily: "Inter",
                fontSize: 13,
                fontWeight: FontWeight.w500,
                color: black,
              ),
            ),
            Image.asset('assets/icons/Group3.png'),
            Text(
              "2",
              style: const TextStyle(
                fontFamily: "Inter",
                fontSize: 13,
                fontWeight: FontWeight.w500,
                color: black,
              ),
            ),
          ]),
        ]),
      ),
    );
  }
}
