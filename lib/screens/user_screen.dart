import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:healthy/constants/colors.dart';
import '../constants/font_size.dart';
import '../constants/widget/El_button.dart';
import '../constants/widget/bottom_bar.dart';
import '../constants/widget/container.dart';
import '../constants/widget/main_drawer.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({super.key});
  static const routes = "/UserScreen";
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
      drawer: MainDrawer(),
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
      body: Padding(
        padding: const EdgeInsets.all(13),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            //code in box padding
            Padding(
              padding: EdgeInsets.all(8),
              child: Column(children: [
                Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  CircleAvatar(
                    backgroundImage: AssetImage(
                      'assets/images/saif .png',
                    ),
                    radius: 50,
                  ),
                  Padding(
                    padding: EdgeInsets.all(15),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Seif EL-Den Sameh",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: w600,
                            ),
                          ),
                          SizedBox(
                            height: 11,
                          ),
                          Row(children: [
                            Image.asset('assets/icons/location.png'),
                            SizedBox(
                              width: 7,
                            ),
                            Text(
                              "Egypt",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: w600,
                              ),
                            ),
                          ]),
                          SizedBox(
                            height: 16,
                          ),
                          Container(
                            width: 190,
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
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElButton(
                        onPressed: UserScreen(),
                        width: 130,
                        height: 26,
                        color: green,
                        name: 'Follow',
                        fontSize: 20.0,
                        textcolor: white,
                        FontWeight: w600,
                        sideColor: green,
                      ),
                      ElButton(
                        onPressed: UserScreen(),
                        width: 130,
                        height: 26,
                        color: white,
                        name: 'Unfollow',
                        fontSize: 20.0,
                        textcolor: black,
                        FontWeight: w600,
                        sideColor: black,
                      ),
                    ],
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
                SizedBox(
                  height: 7,
                ),
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
            SizedBox(
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
          ]),
        ),
      ),
      bottomNavigationBar: BottomNavBar(index: 2),
    );
  }
}
