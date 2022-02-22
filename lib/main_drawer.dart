import 'package:flutter/material.dart';

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
            padding:const EdgeInsets.all(20),
          //  color: roseQuartz,
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
            leading:const Icon(
              Icons.home_outlined,
      //        color: lightSerenity,
            ),
            title: const Text(
              'Home',
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
              Icons.query_builder_rounded,
             // color: lightSerenity,
            ),
            title: const Text(
              'Session Requests',
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
            leading:const Icon(
              Icons.margin,
              //color: lightSerenity,
            ),
            title: const Text(
              'Manage sessions',
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
            leading:const Icon(
              Icons.app_registration,
             // color: lightSerenity,
            ),
            title: const Text(
              'Manage Registerations',
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
              Icons.file_copy_outlined,
             // color: lightSerenity,
            ),
            title: const Text(
              'Tutoring Requests',
              style:  TextStyle(
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
