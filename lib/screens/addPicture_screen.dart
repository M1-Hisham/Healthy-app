import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:healthy/constants/colors.dart';
import '../constants/font_size.dart';
import '../constants/widget/El_button.dart';
import '../constants/widget/bottom_bar.dart';
import '../constants/widget/main_drawer.dart';

class AddPicture extends StatelessWidget {
  const AddPicture({super.key});
  static const routes = "/AddPicture";
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
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 50),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const Center(
              child: Icon(
                FontAwesomeIcons.circlePlus,
                color: gray,
                size: 150,
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            Center(
              child: Text(
                "Add picture of your dish and preperation video",
                style: TextStyle(
                  fontSize: h2,
                  fontWeight: w500,
                  color: green,
                ),
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            const Divider(
              color: green,
              thickness: 1.2,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 17),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedTextField(width: 100, height: 25),
                  const SizedBox(
                    height: 30,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        FontAwesomeIcons.fire,
                        color: green,
                        size: 18,
                      ),
                      SizedTextField(width: 28, height: 20),
                      Icon(
                        FontAwesomeIcons.stopwatch,
                        color: green,
                        size: 18,
                      ),
                      SizedTextField(width: 28, height: 20),
                      Icon(
                        FontAwesomeIcons.userGroup,
                        color: green,
                        size: 15,
                      ),
                      SizedTextField(width: 28, height: 20),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Ingredients:",
                    style: TextStyle(
                      color: green,
                      fontSize: 18,
                      fontWeight: w700,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 16),
                    child: RowText(
                      icon: FontAwesomeIcons.one,
                      height: 25,
                      width: 150,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 16),
                    child: RowText(
                      icon: FontAwesomeIcons.two,
                      height: 25,
                      width: 150,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 16),
                    child: RowText(
                      icon: FontAwesomeIcons.three,
                      height: 25,
                      width: 150,
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
                    height: 100,
                    width: 230,
                  ),
                  const RowText(
                    icon: FontAwesomeIcons.two,
                    height: 100,
                    width: 230,
                  ),
                  const RowText(
                    icon: FontAwesomeIcons.three,
                    height: 100,
                    width: 230,
                  ),
                  const RowText(
                    icon: FontAwesomeIcons.four,
                    height: 100,
                    width: 230,
                  ),
                  const RowText(
                    icon: FontAwesomeIcons.five,
                    height: 100,
                    width: 230,
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElButton(
                  onPressed: const AddPicture(),
                  width: 130,
                  height: 26,
                  color: white,
                  name: 'Cancel',
                  fontSize: 20.0,
                  textcolor: black,
                  FontWeight: w600,
                  sideColor: black,
                ),
                ElButton(
                  onPressed: const AddPicture(),
                  width: 130,
                  height: 26,
                  color: green,
                  name: 'Shaer',
                  fontSize: 20.0,
                  textcolor: white,
                  FontWeight: w600,
                  sideColor: green,
                ),
              ],
            ),
          ]),
        ),
      ),
      bottomNavigationBar: BottomNavBar(index: 1),
    );
  }
}

class SizedTextField extends StatelessWidget {
  const SizedTextField(
      {super.key, required this.width, required this.height, this.text});
  final double width;
  final double height;
  final String? text;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: TextField(
        cursorColor: green,
        keyboardType: TextInputType.name,
        decoration: InputDecoration(
          labelText: text ?? '',
          labelStyle: TextStyle(
            color: gray,
            fontFamily: "Inter",
            fontSize: 14,
            fontWeight: w600,
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: gray,
            ),
          ),
          focusedBorder: const OutlineInputBorder(
              //borderSide: BorderSide(color: gray, width: 2),
              ),
        ),
      ),
    );
  }
}

class RowText extends StatelessWidget {
  const RowText({
    super.key,
    required this.icon,
    required this.width,
    required this.height,
  });
  final IconData icon;
  final double width;
  final double height;
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
        const SizedBox(
          width: 5,
        ),
        SizedTextField(width: width, height: height)
      ],
    );
  }
}
