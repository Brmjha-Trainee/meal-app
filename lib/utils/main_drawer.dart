import 'package:flutter/material.dart';
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
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            color: yellow,
            child: Column(
              children: const <Widget>[
                SizedBox(
                  width: 200,
                  height: 60,
                )
              ],
            ),
          ),
          ListTile(
            leading: const Icon(
              Icons.restaurant_outlined,
              //        color: lightSerenity,
            ),
            title: const Text(
              'Meals',
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
              Icons.settings,
              // color: lightSerenity,
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
              //color: lightSerenity,
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
              // color: lightSerenity,
            ),
            title: const Text(
              'LogOut',
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
        ],
      ),
    );
  }
}
