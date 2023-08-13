import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:healthy/constants/colors.dart';
import 'package:healthy/constants/font_size.dart';
import 'package:healthy/screens/addPicture_screen.dart';
import 'package:healthy/screens/menu_screen.dart';
import 'package:healthy/screens/profile_screen.dart';

import '../constants/method/navigator.dart';
import '../constants/widget/container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  final int index = 1;
  static const routes = '/HomeScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(FontAwesomeIcons.bars),
          color: green,
          onPressed: () {
            Navigator.pushNamed(context, MenuScreen.routes);
          },
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
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            //text field
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
              "Top Rated",
              style: TextStyle(
                fontFamily: "Inter",
                fontSize: 18,
                fontWeight: w700,
                color: black,
              ),
            ),
            SizedBox(
              height: 17,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ContainerTopRated(
                    image: 'Thai Red Lentil Soup [vegan] 1.png',
                  ),
                  ContainerTopRated(
                    image: 'Sticky Asian Grilled Chicken 2.png',
                  ),
                  ContainerTopRated(
                    image: 'Pesto Quinoa Wraps 3.png',
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              "Categories",
              style: const TextStyle(
                fontFamily: "Inter",
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: Color(0xff000000),
                height: 20 / 18,
              ),
            ),
            SizedBox(
              height: 19,
            ),
            ContainerCategories(
              image: 'Creamy Vanilla Matcha Oatmeal 1.png',
              tital: 'Breakfast',
            ),
            ContainerCategories(
              image: 'Guidelines 2.png',
              tital: 'Lunch & Dinner',
            ),
            ContainerCategories(
              image: '3.png',
              tital: 'Desserts',
            ),
            ContainerCategories(
              image: 'Drink 4.png',
              tital: 'Drinks',
            ),
          ]),
        ),
      ),
      // bottomNavigationBar: const BottomNavBar(),
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(15),
          topLeft: Radius.circular(15),
        ),
        child: BottomNavigationBar(
            backgroundColor: green,
            selectedItemColor: white,
            type: BottomNavigationBarType.fixed,
            currentIndex: index,
            onTap: (value) {
              if (value == 0) {
                navPush(context: context, screen: AddPicture());
              } else if (value == 1) {
                navPush(context: context, screen: HomeScreen());
              } else if (value == 2) {
              } else if (value == 3) {
                navPush(context: context, screen: ProfileScreen());
              }
            },
            items: const [
              BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.circlePlus),
                label: 'Add',
              ),
              BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.house),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.heart),
                label: 'Loves',
              ),
              BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.circleUser),
                label: 'User',
              ),
            ]),
      ),
    );
  }
}
