import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:lottie/lottie.dart';
import 'package:practica2/counter.dart';
import 'package:practica2/image_carousel.dart';

void main() {
  runApp(const FirstScreen());
}

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _FirstScreen();
  }
}

class _FirstScreen extends State<FirstScreen> {
  double value = 3.5;
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
          title: Image.asset(
            'images/cyberpunk2077.png', 
            fit: BoxFit.cover),
          elevation: 0,
          backgroundColor: const Color.fromARGB(255, 60, 60, 60),
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
        backgroundColor:const Color.fromARGB(255, 60, 60, 60),
        body: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              bottom: 455,
              right: 0,
              child: Transform.scale(
                scale: 1,
                child: Lottie.asset('animation/bg.json')
              )
            ),
            ListView(
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    CarouselWithIndicatorDemo(),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: [Color.fromARGB(255, 60, 60, 60), Color.fromARGB(255, 243, 230, 0)]
                          ),
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
                                'Cyberware - Arms',
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
                                'Unlock a world of possibilities with arms cyberware in Cyberpunk 2077.'
                                'From the crushing power of Gorilla Arms™ to the deadly stealth of the Monowire,'
                                'choose your path to supremacy in Night City. Customize your arms and master your destiny. Make it yours today!',
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
                                        color: Color.fromARGB(255, 243, 230, 0)
                                      ),
                                    ),
                                    //height: 70.0,
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: const Color.fromARGB(255, 60, 60, 60),
                                        elevation: 0.0,
                                        side: const BorderSide(color: Color.fromARGB(255, 243, 230, 0), width: 2),
                                        minimumSize: const Size(80, 50)
                                      ),
                                      onPressed: (){
                                        setState(() {
                                          _isFavorited = !_isFavorited;
                                        });
                                      },
                                      child: Icon(
                                          _isFavorited
                                              ? Icons.favorite
                                              : Icons.favorite_border,
                                          color: Color.fromARGB(255, 243, 230, 0),
                                      ),
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
                                        backgroundColor: const Color.fromARGB(255, 243, 230, 0),
                                        elevation: 0.0,
                                        minimumSize: const Size(110, 50)
                                      ),
                                      onPressed: () {},
                                      child: const Text(
                                        'Add to cart',
                                        style:
                                            TextStyle(
                                              fontWeight: FontWeight.w900,
                                              color: Color.fromARGB(255, 60, 60, 60)
                                            ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Center(
                                child: RatingBar(
                                  initialRating: 4.5,
                                  direction: Axis.horizontal,
                                  allowHalfRating: true,
                                  itemCount: 5,
                                  itemSize: 40.0,
                                  ratingWidget: RatingWidget(
                                    full: Icon(Icons.star, color: Color.fromARGB(255, 243, 230, 0)), 
                                    half: Icon(Icons.star_half, color:Color.fromARGB(255, 243, 230, 0)), 
                                    empty: Icon(Icons.star_border, color: Color.fromARGB(255, 243, 230, 0))
                                  ),
                                  onRatingUpdate: (value) {
                                  },
                                ),
                              ),
                              const Center(
                                child: 
                                Text(
                                  'Rate this items', 
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 243, 230, 0)
                                  )
                                )
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
          ],
        ),
      ),
    );
  }
}