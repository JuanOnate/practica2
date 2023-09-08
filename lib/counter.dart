import 'package:flutter/material.dart';

class CounterDesign extends StatefulWidget {
  const CounterDesign({super.key});

  @override
  State<StatefulWidget> createState() {
    return _CounterDesign();
  }
}

class _CounterDesign extends State<CounterDesign> {
  int _n = 0;
  int _amt = 0;
  void add() {
    setState(() {
      _n++;
      _amt = _amt + 950;
    });
  }

  void minus() {
    setState(() {
      if (_n != 0) { 
        _n--;
      _amt = _amt - 950;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          width: 155.0,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 60, 60, 60),
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              IconButton(
                icon: const Icon(
                  Icons.add,
                  color: Color.fromARGB(255, 243, 230, 0),
                ),
                onPressed: () {
                  add();
                },
              ),              
              Text('$_n', style: const TextStyle(fontSize: 30.0, color: Color.fromARGB(255, 243, 230, 0))),
              IconButton(
                icon: const Icon(
                  Icons.remove,
                  color: Color.fromARGB(255, 243, 230, 0),
                ),
                onPressed: () {
                  minus();
                },
              ),
              const SizedBox(
                width: 0.0,
              ),
            ],
          ),
        ),
        const SizedBox(
          width: 40.0,
        ),
        Text(
          '€\$ $_amt',
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24.0,
          ),
        ),
      ],
    );
  }
}