import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:healthy/constants/colors.dart';
import '../constants/font_size.dart';
import '../constants/widget/El_button.dart';
import '../constants/widget/bottom_bar.dart';
import '../constants/widget/container.dart';
import '../constants/widget/main_drawer.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});
  static const routes = "/ProfileScreen";
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
      drawer: const MainDrawer(),
      appBar: AppBar(
        leading: const BackButton(
          color: green,
          // <-- SEE HERE
        ),
        backgroundColor: white2,
        shadowColor: green,
        elevation: 2,
        actions: [
          IconButton(
            icon: const Icon(FontAwesomeIcons.solidBell),
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
      body: Padding(
        padding: const EdgeInsets.all(13),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            //code in box padding
            Padding(
              padding: const EdgeInsets.all(8),
              child: Column(children: [
                Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  const CircleAvatar(
                    backgroundImage: AssetImage(
                      'assets/images/mohamed.JPEG',
                    ),
                    radius: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Mohamed Hisham",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: w600,
                            ),
                          ),
                          const SizedBox(
                            height: 11,
                          ),
                          Row(children: [
                            Image.asset('assets/icons/location.png'),
                            const SizedBox(width: 7),
                            Text(
                              "Egypt",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: w600,
                              ),
                            ),
                          ]),
                          const SizedBox(height: 16),
                          SizedBox(
                            width: 150,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset(
                                  "assets/icons/linkedin.png",
                                ),
                                Image.asset(
                                  "assets/icons/instagram.png",
                                ),
                                Image.asset(
                                  "assets/icons/facebook2.png",
                                ),
                                Image.asset(
                                  "assets/icons/X.png",
                                ),
                              ],
                            ),
                          ),
                        ]),
                  ),
                ]),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 22, horizontal: 55),
                  child: ElButton(
                    height: 28,
                    color: green,
                    name: 'Edit Profile',
                    fontSize: 20.0,
                    textcolor: white,
                    FontWeight: w600,
                    sideColor: green,
                    onPressed: const ProfileScreen(),
                  ),
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Recipes",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: w500,
                        ),
                      ),
                      Text(
                        "Followers",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: w500,
                        ),
                      ),
                      Text(
                        "Following",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: w500,
                        ),
                      ),
                    ]),
                const SizedBox(height: 7),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "44",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: w700,
                        ),
                      ),
                      Text(
                        "444",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: w700,
                        ),
                      ),
                      Text(
                        "444",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: w700,
                        ),
                      ),
                    ]),
              ]),
            ),
            const SizedBox(
              height: 17,
            ),
            Text(
              "Recipes",
              style: TextStyle(
                fontFamily: "Inter",
                fontSize: 18,
                fontWeight: w700,
                color: black,
              ),
              textAlign: TextAlign.start,
            ),
            GridView.builder(
              itemCount: img.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                //crossAxisSpacing: 20.0,
                crossAxisCount: 2,
              ),
              itemBuilder: (context, index) {
                return ContainerTopRated(
                  image: img.toList()[index],
                );
              },
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              //padding: EdgeInsets.all(20),
            ),
          ]),
        ),
      ),
      bottomNavigationBar: BottomNavBar(index: 4),
    );
  }
}
