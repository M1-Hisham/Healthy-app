import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:healthy/constants/method/navigator.dart';
import 'package:healthy/screens/user_screen.dart';

import '../constants/colors.dart';
import '../constants/font_size.dart';
import '../constants/widget/bottom_bar.dart';
import '../constants/widget/main_drawer.dart';

class RecipesScreen extends StatelessWidget {
  const RecipesScreen({super.key});
  static const routes = "/RecipesScreen";
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
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            width: double.infinity,
            height: 255,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/Lentil Soup .png"),
                fit: BoxFit.cover,
              ),
              // shape: BoxShape.circle,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Text("Lentil soup",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: w700,
                    )),
                Row(
                  children: [
                    Image.asset(
                      "assets/icons/Star 1.png",
                      width: 17,
                      height: 15,
                    ),
                    Image.asset(
                      "assets/icons/Star 1.png",
                      width: 17,
                      height: 15,
                    ),
                    Image.asset(
                      "assets/icons/Star 1.png",
                      width: 17,
                      height: 15,
                    ),
                    Image.asset(
                      "assets/icons/Star 1.png",
                      width: 17,
                      height: 15,
                    ),
                    Image.asset(
                      "assets/icons/Star 1.png",
                      width: 17,
                      height: 15,
                    ),
                  ],
                ),
                const Icon(
                  FontAwesomeIcons.heart,
                  size: 20,
                ),
              ]),
              const SizedBox(
                height: 33,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Icon(
                    FontAwesomeIcons.fire,
                    color: green,
                    size: 18,
                  ),
                  Text("150",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: w500,
                      )),
                  const Icon(
                    FontAwesomeIcons.stopwatch,
                    color: green,
                    size: 18,
                  ),
                  Text("15m",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: w500,
                      )),
                  const Icon(
                    FontAwesomeIcons.userGroup,
                    color: green,
                    size: 15,
                  ),
                  Text("2",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: w500,
                      )),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () =>
                    navPushReplacement(context: context, screen: const UserScreen()),
                child: SizedBox(
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const CircleAvatar(
                          backgroundImage: AssetImage(
                            'assets/images/saif .png',
                          ),
                          radius: 25,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Seif EL-Den Sameh",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: w500,
                                    ))
                              ]),
                        ),
                      ]),
                ),
              ),
              //////////////
              const SizedBox(
                height: 20,
              ),
              Text("Ingredients:",
                  style: TextStyle(
                    color: green,
                    fontSize: 18,
                    fontWeight: w700,
                  )),
              const SizedBox(
                height: 10,
              ),
              /////////////
              SizedBox(
                width: 300,
                child: Column(
                  children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset('assets/icons/PUL004 1.png'),
                              const Text(" 200gm yellow lentil",
                                  style: TextStyle(
                                    color: green,
                                    fontWeight: FontWeight.bold,
                                  )),
                            ],
                          ),
                          Row(children: [
                            Image.asset('assets/icons/R 1.png'),
                            const Text(" 3 Carrots",
                                style: TextStyle(
                                  color: green,
                                  fontWeight: FontWeight.bold,
                                )),
                          ]),
                        ]),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                  'assets/icons/cup-of-blue-water-th 1.png'),
                              const Text(" 200ml water",
                                  style: TextStyle(
                                    color: green,
                                    fontWeight: FontWeight.bold,
                                  )),
                            ],
                          ),
                          Row(children: [
                            Image.asset('assets/icons/OIP 2.png'),
                            const Text("  3 Tomatoes",
                                style: TextStyle(
                                  color: green,
                                  fontWeight: FontWeight.bold,
                                )),
                          ]),
                        ]),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset('assets/icons/OIF 1.png'),
                              const Text("  2 Large Onions",
                                  style: TextStyle(
                                    color: green,
                                    fontWeight: FontWeight.bold,
                                  )),
                            ],
                          ),
                          Row(children: [
                            Image.asset('assets/icons/OIP (1) 1.png'),
                            const Text(" 1tps salt",
                                style: TextStyle(
                                  color: green,
                                  fontWeight: FontWeight.bold,
                                )),
                          ]),
                        ]),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset('assets/icons/GEB2255 1.png'),
                              const Text("  200gm yellow lentil",
                                  style: TextStyle(
                                    color: green,
                                    fontWeight: FontWeight.bold,
                                  )),
                            ],
                          ),
                        ]),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Preperation:",
                style: TextStyle(
                  color: green,
                  fontSize: 18,
                  fontWeight: w700,
                ),
              ),

              const SizedBox(
                height: 20,
              ),
              const RowText(
                icon: FontAwesomeIcons.one,
                text:
                    "Heat oil in a large pot over medium heat. Add garlic and onion, cook for 2 minutes.",
              ),
              const SizedBox(
                height: 20,
              ),
              const RowText(
                  icon: FontAwesomeIcons.two,
                  text:
                      "Add celery and carrot.Cook for 7 - 10 minutes or until softened and the onion is sweet. Don't rush this step, it is key to the flavour base of the soup."),
              const SizedBox(
                height: 20,
              ),
              const RowText(
                icon: FontAwesomeIcons.three,
                text:
                    "Add all remaining ingredients except the lemon and salt. Stir. ",
              ),
              const SizedBox(
                height: 20,
              ),
              const RowText(
                icon: FontAwesomeIcons.four,
                text:
                    "Increase heat and bring to simmer. Scoop scum on the surface off and discard (do this again during cooking if required). Place lid on and turn heat down to medium low. Simmer for 35 - 40 minutes or until lentils are soft.",
              ),
              const SizedBox(
                height: 20,
              ),
              const RowText(icon: FontAwesomeIcons.five, text: "Remove bay leaves."),
              const SizedBox(
                height: 20,
              ),
              const RowText(
                icon: FontAwesomeIcons.six,
                text:
                    "Thicken Soup: Using a stick blender, do 2 or 3 quick whizzes to thicken the soup (see video below). Or transfer 2 cups to a blender, let it cool slightly, then hold lid with tea towel and blend then transfer back into pot.",
              ),
            ]),
          )
        ]),
      ),
      bottomNavigationBar: BottomNavBar(index: 2),
    );
  }
}

class RowText extends StatelessWidget {
  const RowText({
    super.key,
    required this.icon,
    required this.text,
  });
  final IconData icon;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(
          icon,
          color: green,
          size: 25,
        ),
        Expanded(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 15,
              fontWeight: w500,
            ),
            textAlign: TextAlign.start,
          ),
        ),
      ],
    );
  }
}
