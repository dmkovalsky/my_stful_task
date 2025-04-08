import 'package:flutter/material.dart';
import 'package:stful_task/counter_card.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  // State
  int _counter1 = 0;
  int _counter2 = 0;
  int _counter3 = 0;
  int _counter4 = 0;
  int _counter5 = 0;

  int get totalCount =>
      _counter1 + _counter2 + _counter3 + _counter4 + _counter5;

  void _incrementCounter(int index) {
    setState(() {
      switch (index) {
        case 1:
          _counter1++;
          break;
        case 2:
          _counter2++;
          break;
        case 3:
          _counter3++;
          break;
        case 4:
          _counter4++;
          break;
        case 5:
          _counter5++;
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 16,
          children: [
            CounterCard(
                counter: _counter1, onPressed: () => _incrementCounter(1)),
            CounterCard(
              counter: _counter2,
              onPressed: () => _incrementCounter(2),
            ),
            CounterCard(
              counter: _counter3,
              onPressed: () => _incrementCounter(3),
            ),
            CounterCard(
              counter: _counter4,
              onPressed: () => _incrementCounter(4),
            ),
            CounterCard(
              counter: _counter5,
              onPressed: () => _incrementCounter(5),
            ),
            Text('Die Summe alle Counters ist $totalCount'),
          ],
        ),
      ),
    );
  }
}
