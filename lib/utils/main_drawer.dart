import 'package:flutter/material.dart';
import 'package:meal_app/screens/meals.dart';
import 'package:meal_app/screens/sign_in_page.dart';
import 'package:meal_app/utils/constant.dart';

class MainDrawer extends StatefulWidget {
  const MainDrawer({Key? key}) : super(key: key);

  @override
  _MainDrawerState createState() => _MainDrawerState();
}

class _MainDrawerState extends State<MainDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            color: darkYellow,
            width: double.infinity,
            child: SizedBox(
              height: 150,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Text(
                    "Hi Chef !",
                    style: TextStyle(
                      fontSize: 28,
                      color: pink,
                    ),
                  )
                ],
              ),
            ),
          ),
          ListTile(
            leading: const Icon(
              Icons.restaurant_outlined,
            ),
            title: const Text(
              'Meals',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const MealScreen(),
                ),
              );
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.settings,
            ),
            title: const Text(
              'Filters',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            onTap: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) => Page Name(),
              //   ),
              // );
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.pin_drop,
            ),
            title: const Text(
              'Location',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            onTap: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) => ManageSessionsPage(),
              //   ),
              // );
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.door_front_door_outlined,
            ),
            title: const Text(
              'LogOut',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SignInPage(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
