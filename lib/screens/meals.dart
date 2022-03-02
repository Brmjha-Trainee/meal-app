import 'package:flutter/material.dart';
import 'package:meal_app/screens/one_meal.dart';

import '../utils/constant.dart';
import '../utils/photo_items.dart';

class MealScreen extends StatelessWidget {
  const MealScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<PhotoItem> imgList = [
      PhotoItem('images/burger.jpg', 'Burgers', 'Grilled beef burger'),
      PhotoItem(
          'images/spaghetti.jpg', 'Spaghetti', 'Spaghetti with tomato sauce'),
      PhotoItem('images/toast.jpg', 'Quick & easy', 'Toast Hawaii'),
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text('meals'),
        backgroundColor: pink,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back)),
      ), //App

      body: ListView.builder(
          itemCount: imgList.length,
          itemBuilder: (context, index) {
            return Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              width: double.maxFinite,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                elevation: 5,
                clipBehavior: Clip.antiAlias,
                child: Column(
                  children: [
                    Stack(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const OneMeal()),
                            );
                          },
                          child: Image.asset(
                            imgList[index].image,
                            fit: BoxFit.contain,
                          ),
                        ),
                        Positioned(
                          // The Positioned widget is used to position the text inside the Stack widget
                          bottom: 10,
                          right: 10,

                          child: Container(
                            // We use this Container to create a black box that wraps the white text so that the user can read the text even when the image is white
                            width: 200,
                            color: Colors.black54,
                            padding: const EdgeInsets.all(10),
                            child: Text(
                              imgList[index].description,
                              style: const TextStyle(
                                  fontSize: 20, color: Colors.white),
                            ),
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.access_time,
                            size: 18,
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 5.0),
                            child: Text(
                              '20 min',
                              style: TextStyle(
                                color: grey,
                                fontWeight: FontWeight.normal,
                                fontSize: 14,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          const Icon(
                            Icons.shopping_bag_sharp,
                            size: 18,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5.0),
                            child: Text(
                              'Simple',
                              style: TextStyle(
                                color: Colors.grey.shade800,
                                fontWeight: FontWeight.normal,
                                fontSize: 14,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          const Icon(
                            Icons.attach_money_outlined,
                            size: 18,
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 5.0),
                            child: Text(
                              'Affordable',
                              style: TextStyle(
                                color: grey,
                                fontWeight: FontWeight.normal,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
