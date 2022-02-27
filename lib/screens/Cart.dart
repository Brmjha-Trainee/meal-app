import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meal_app/screens/home_page.dart';
import 'package:meal_app/utils/Bottom_Navigation.dart';
import 'package:meal_app/utils/main_drawer.dart';
import 'package:meal_app/utils/constant.dart';
import 'package:meal_app/utils/photo_items.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  _CartState createState() => _CartState();
}

class  _CartState extends State<Cart> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart'),
        backgroundColor: pink,
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.restaurant_rounded))
        ],
      ), //AppBar
      body:

    Column(

         children:<Widget> [
        Flexible(child:
           ListView.builder(
      itemCount: 1,
      itemBuilder: (BuildContext context, int index) {
           return Container(
            height: 220,
            width: 370,
            decoration: BoxDecoration(

              color: yellow,
              borderRadius: BorderRadius.all(Radius.circular(18)),
              boxShadow: const[BoxShadow(blurRadius: 5)],
            ),
             alignment: Alignment.topCenter,
             padding: EdgeInsets.all(10),
             child: Column(
             children:[

               Container(
               height: 150,
               width: 340,

               decoration: BoxDecoration(
                 color: Colors.white,
                 borderRadius: BorderRadius.all(Radius.circular(18)),

               ),
                 alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(left: 10),
                 child: Text(
                 "4 Tomatoes \n 1 Tablespoon of Olive Oil "
                     "\n 1 Onion \n 250g Spaghetti \n Spices"
                     "\n Cheese (optional)",
                 style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),

               ),
               ),
               SizedBox(
                 height: 25,
               ),
               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                  Icon(Icons.fastfood_sharp),
                   Text("Spaghetti with Tomato Sauce")
                 ],
               ),




         ],),
       );}),),

      /*     SizedBox(
             height: 350,
           ),*/
           RaisedButton(
             onPressed: (){},
             child: Text("Checkout!"),
             color: pink,
           )
         ],),






      drawer: const MainDrawer(),

    );
  }
}
