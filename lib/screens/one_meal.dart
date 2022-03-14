import 'package:flutter/material.dart';
import 'package:meal_app/screens/cart.dart';

var isPressed = false;
List<String> steps = ['cut', 'Boil', ' ', '', '', ''];
List<String> ingredients = [
  '4 Tomatoes',
  '1 Tabelspoon ',
  '1 Onion',
  'Spices',
  'Cheese (optional)'
];

class OneMeal extends StatefulWidget {
  const OneMeal({
    Key? key,
  }) : super(key: key);

  @override
  _OneMealState createState() => _OneMealState();
}

class _OneMealState extends State<OneMeal> {
  Widget _createSectionTitle(BuildContext context, String title) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Text(
        title,
        style: Theme.of(context).textTheme.headline6,
      ),
    );
  }

  Widget _createSectionContainer(Widget child) {
    return Container(
      width: 320,
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: Colors.grey,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Spaghetti with Tomato Sauce'),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 300,
              width: double.infinity,
              child: Image.network(
                'https://th.bing.com/th/id/R.a53d487d99e076bd5e250b52e9b4fd96?rik=jPl0elHEmuIKow&pid=ImgRaw&r=0',
                fit: BoxFit.cover,
              ),
            ),
            _createSectionTitle(context, 'Ingredients'),
            _createSectionContainer(
              ListView.builder(
                shrinkWrap: true,
                itemCount: ingredients.length,
                itemBuilder: (ctx, index) {
                  return Card(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 5,
                          horizontal: 10,
                        ),
                        child: Text(ingredients[index]),
                      ),
                      color: Colors.white10);
                },
              ),
            ),
            _createSectionTitle(context, 'Steps'),
            _createSectionContainer(
              ListView.builder(
                shrinkWrap: true,
                itemCount: steps.length,
                itemBuilder: (ctx, index) {
                  return Column(
                    children: [
                      ListTile(
                        leading: CircleAvatar(
                          child: Text('${index + 1}'),
                        ),
                        title: Text(steps[index]),
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.shopping_cart),
          backgroundColor: isPressed ? Colors.red : Colors.yellow,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Cart()),
            );
          }

          // => setState(() => isPressed = !isPressed),
          ),
    );
  }
}
