import 'package:flutter/material.dart';
import 'package:meal_app/utils/main_drawer.dart';
import 'package:meal_app/utils/constant.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart'),
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.restaurant_rounded))
        ],
      ), //AppBar
      body: Column(
        children: <Widget>[
          Flexible(
            child: ListView.builder(
                itemCount: 1,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: 220,
                    width: 370,
                    decoration: const BoxDecoration(
                      color: yellow,
                      borderRadius: BorderRadius.all(Radius.circular(18)),
                      boxShadow: [BoxShadow(blurRadius: 5)],
                    ),
                    alignment: Alignment.topCenter,
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Container(
                          height: 150,
                          width: 340,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(18)),
                          ),
                          alignment: Alignment.centerLeft,
                          padding: const EdgeInsets.only(left: 10),
                          child: const Text(
                            "4 Tomatoes \n 1 Tablespoon of Olive Oil "
                            "\n 1 Onion \n 250g Spaghetti \n Spices"
                            "\n Cheese (optional)",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(Icons.fastfood_sharp),
                            Text("Spaghetti with Tomato Sauce")
                          ],
                        ),
                      ],
                    ),
                  );
                }),
          ),

          /*     SizedBox(
             height: 350,
           ),*/
          MaterialButton(
            onPressed: () {},
            child: const Text("Checkout!"),
            color: pink,
          )
        ],
      ),

      drawer: const MainDrawer(),
    );
  }
}
