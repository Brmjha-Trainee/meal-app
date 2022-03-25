import 'package:flutter/material.dart';
import 'package:meal_app/screens/one_meal.dart';

import '../utils/constant.dart';
import '../utils/photo_items.dart';

class MealScreen extends StatelessWidget {
  const MealScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
              padding: const EdgeInsets.all(8),
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
                          bottom: 10,
                          right: 10,
                          child: Container(
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
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          minutes(),
                          mealType(),
                          affordable(),
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

  Row affordable() {
    return Row(
      children: const [
        Icon(
          Icons.attach_money_outlined,
          size: 18,
        ),
        Padding(
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
    );
  }

  Row mealType() {
    return Row(
      children: [
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
      ],
    );
  }

  Row minutes() {
    return Row(
      children: const [
        Icon(
          Icons.access_time,
          size: 18,
        ),
        Padding(
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
      ],
    );
  }
}
