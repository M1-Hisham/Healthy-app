import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:healthy/constants/colors.dart';
import 'package:healthy/constants/font_size.dart';
import 'package:healthy/constants/widget/bottom_bar.dart';
import 'package:healthy/constants/widget/container.dart';

class HomeTScreen extends StatelessWidget {
  const HomeTScreen({super.key});
  static const routes = '/HomeTScreen';
  static List<String> img = [
    'Thai Red Lentil Soup [vegan] 1.png',
    'Sticky Asian Grilled Chicken 2.png',
    'Pesto Quinoa Wraps 3.png',
    'Little Cravings 1.png',
    'Vegane Rezepte.png',
    'Weekend 1.png',
    'Thai Red Lentil Soup [vegan] 1.png',
    'Sticky Asian Grilled Chicken 2.png',
    'Pesto Quinoa Wraps 3.png',
    'Little Cravings 1.png',
    'Vegane Rezepte.png',
    'Weekend 1.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          color: green,
          // <-- SEE HERE
        ),
        backgroundColor: white2,
        shadowColor: green,
        elevation: 2,
        actions: [
          IconButton(
            icon: Icon(FontAwesomeIcons.solidBell),
            color: green,
            onPressed: () {},
          ),
        ],
        title: Center(
          child: Text(
            'HEALTHY',
            style: TextStyle(
              fontFamily: "Inter",
              fontSize: h1,
              fontWeight: w700,
              color: green,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                cursorColor: green,
                decoration: InputDecoration(
                  prefixIcon: const Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Icon(
                      FontAwesomeIcons.magnifyingGlass,
                      color: green,
                    ),
                  ),
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 16, horizontal: 26),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: green, width: 2.0),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: green, width: 1.5),
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
              SizedBox(
                height: 17,
              ),
              Text(
                "Lunch & Dinner",
                style: TextStyle(
                  fontFamily: "Inter",
                  fontSize: 18,
                  fontWeight: w700,
                  color: black,
                ),
              ),
              GridView.builder(
                itemCount: img.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  //crossAxisSpacing: 20.0,
                  crossAxisCount: 2,
                ),
                itemBuilder: (context, index) {
                  return ContainerTopRated(
                    image: img.toList()[index],
                  );
                },
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                //padding: EdgeInsets.all(20),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavBar(index: 2),
    );
  }
}
