import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:healthy/constants/colors.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});
  static int index = 2;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topRight: Radius.circular(15),
        topLeft: Radius.circular(15),
      ),
      child: BottomNavigationBar(
          backgroundColor: green,
          selectedItemColor: white,
          type: BottomNavigationBarType.fixed,
          currentIndex: 1,
          onTap: (value) {
            if (value == 0) {
              index = value;
              // navPush(context: context, screen: LoginScreen());
            } else if (value == 1) {
              index = value;
              // navPush(context: context, screen: HomeScreen());
            } else if (value == 2) {
              index = value;
            } else if (value == 3) {
              index = value;
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
    );
  }
}

// class BottomNavBar extends StatelessWidget {
//   BottomNavBar({super.key, this.selectedItemColor});
//   static int index = 3;
//   Color? selectedItemColor;
//   @override
//   Widget build(BuildContext context) {
//     return ClipRRect(
//       borderRadius: BorderRadius.only(
//           topLeft: Radius.circular(10), topRight: Radius.circular(10)),
//       child: BottomNavigationBar(
//         backgroundColor: Color.fromARGB(48, 145, 145, 145),
//         unselectedItemColor: grey,
//         selectedItemColor: selectedItemColor ?? orange,
//         onTap: (value) {
//           if (value == 0) {
//             index = value;
//             navPushReplacement(context: context, screen: HomeScreen());
//           } else if (value == 1) {
//             index = value;
//             navPushReplacement(context: context, screen: MyFriendsScreen());
//           } else if (value == 2) {
//             index = value;
//             navPushReplacement(context: context, screen: GroupsScreen());
//           } else if (value == 3) {
//             index = value;
//             navPushReplacement(context: context, screen: ProfileScreen());
//           }
//         },
//         type: BottomNavigationBarType.fixed,
//         currentIndex: index,
//         items: [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: 'home',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(FontAwesomeIcons.globe),
//             label: 'net',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(FontAwesomeIcons.userGroup),
//             label: 'group',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(FontAwesomeIcons.user),
//             label: "user",
//           ),
//         ],
//       ),
//     );
//   }
// }
