import 'package:flutter/material.dart';
import 'package:meal_app/utils/main_drawer.dart';
import 'package:meal_app/utils/constant.dart';
import 'package:meal_app/utils/photo_items.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<PhotoItem> imgList = [
    PhotoItem('images/burger.jpg', 'Burgers'),
    PhotoItem('images/spaghetti.jpeg', 'Spaghetti'),
    PhotoItem('images/toast.jpg', 'Quick & easy'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Categories'),
        backgroundColor: pink,
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.restaurant_rounded))
        ],
      ), //AppBar
      body: GridView.builder(
          shrinkWrap: true,
          padding: const EdgeInsets.all(10),
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 1.3,
            crossAxisSpacing: 2,
            mainAxisSpacing: 2,
          ),
          itemCount: imgList.length,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                Card(
                  clipBehavior: Clip.antiAlias,
                  child: SizedBox(
                    height: 120,
                    width: 150,
                    child: Column(
                      children: [
                        Image.asset(
                          imgList[index].image,
                          fit: BoxFit.fitWidth,
                          height: 100,
                        ),
                        Text(imgList[index].name),
                      ],
                    ),
                  ),
                ),
              ],
            );
          }),
      drawer: const MainDrawer(),
    );
  }
}
