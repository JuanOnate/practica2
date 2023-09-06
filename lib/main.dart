import 'package:flutter/material.dart';
import 'package:practica2/counter.dart';
import 'package:practica2/image_carousel.dart';

void main() {
  runApp(FirstScreen());
}

class FirstScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FirstScreen();
  }
}

class _FirstScreen extends State<FirstScreen> {
  bool _isFavorited = true;

  void _toggleFavorite() {
    setState(() {
      _isFavorited = !_isFavorited;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.amber[200],
          leading: Row(
            children: <Widget>[
              const SizedBox(
                width: 5.0,
              ),
              IconButton(
                color: Colors.white,
                icon: const Icon(
                  Icons.arrow_back,
                ),
                onPressed: () {},
              ),
            ],
          ),
          actions: <Widget>[
            IconButton(
              icon: const Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
            const SizedBox(
              width: 20.0,
            ),
          ],
        ),
        backgroundColor: Colors.amber[200],
        body: ListView(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                CarouselWithIndicatorDemo(),
                const SizedBox(
                  height: 50.0,
                ),
                Container(
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50.0),
                        topRight: Radius.circular(50.0),
                      )),
                  height: 600,
                  width: 500,
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          const SizedBox(
                            height: 20.0,
                          ),
                          const Text(
                            'Mango',
                            style: TextStyle(
                                fontSize: 30.0, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          const Text('1 each'),
                          const SizedBox(
                            height: 20.0,
                          ),
                          CounterDesign(),
                          const SizedBox(
                            height: 30.0,
                          ),
                          const Text(
                            'Product Description',
                            style: TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 15.0,
                          ),
                          const Text(
                            'A mango is a type of fruit. '
                            'The mango tree is native to South Asia, '
                            'from where it has been taken to become one of the most widely cultivated fruits in the tropics.'
                            'It is harvested in the month of march (summer season) till the end of May.',
                            style:
                                TextStyle(letterSpacing: 2.0, fontSize: 15.0),
                          ),
                          const SizedBox(
                            height: 30.0,
                          ),
                          Row(
                            children: <Widget>[
                              ButtonTheme(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                  side: const BorderSide(
                                    color: Color.fromARGB(255, 255, 224, 130)
                                  ),
                                ),
                                height: 70.0,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.white,
                                    elevation: 0.0
                                  ),
                                  onPressed: _toggleFavorite,
                                  child: IconButton(
                                      icon: _isFavorited
                                          ? Icon(
                                              Icons.favorite_border,
                                              color: Colors.amber[300],
                                            )
                                          : Icon(
                                              Icons.favorite,
                                              color: Colors.amber[300],
                                            ), onPressed: () {  },),
                                ),
                              ),
                              const SizedBox(
                                width: 20.0,
                              ),
                              ButtonTheme(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0)),
                                height: 70.0,
                                minWidth: 260.0,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.amber[200],
                                    elevation: 0.0
                                  ),
                                  onPressed: () {},
                                  child: const Text(
                                    'Add to cart',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}