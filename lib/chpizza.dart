import 'package:flutter/material.dart';

class Chpizza extends StatelessWidget {
  const Chpizza({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Row(
            children: [
              const Text(
                'Cheese Pizza',
                style: TextStyle(fontSize: 20.0),
              ),
              const SizedBox(width: 100.0),
              Container(
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '3');
                  },
                  child: Image.asset(
                    'assets/Twitter.png',
                    fit: BoxFit.contain,
                    height: 38.0,
                  ),
                ),
              ),
              const SizedBox(width: 100.0),
              Container(
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '4');
                  },
                  child: Image.asset(
                    'assets/face.png',
                    fit: BoxFit.contain,
                    height: 38.0,
                  ),
                ),
              ),
            ],
          ),
        ),
        body: SafeArea(
          child: Column(
            children: <Widget>[
              OverflowBar(
                alignment: MainAxisAlignment.center,
                children: [
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        shape: const StadiumBorder(),
                        side: const BorderSide(color: Colors.red), // To set the border color
                    ),
                    child: const Text(
                      'Vegetable Pizza',
                      style: TextStyle(fontSize: 20.0, color: Colors.orange),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '0');
                    },
                  ),
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        shape: const StadiumBorder(),
                        side: const BorderSide(color: Colors.red), // To set the border color
                    ),
                    child: const Text(
                      'Cheese Pizza',
                      style: TextStyle(fontSize: 20.0, color: Colors.orange),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '1');
                    },
                  ),
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        shape: const StadiumBorder(),
                        side: const BorderSide(color: Colors.red), // To set the border color
                    ),
                    
                    child: const Text(
                      'Fries',
                      style: TextStyle(fontSize: 20.0, color: Colors.orange),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '2');
                    },
                  ),
                ],
              ),
              Center(
                child: Column(
                  children: [
                    Image.asset(
                      'assets/cheesePz.png',
                      height: 300.0,
                      width: 400.0,
                    ),
                    const Text(
                      "Welcome to Cheese Pizza Home, Order Now?",
                      style: TextStyle(fontSize: 30.0),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
    );
  }
}
