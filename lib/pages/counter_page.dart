import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  //variable
  int _counter = 0;
  //method
  void _increamentCounter(){
    setState(() {
      _counter++;
    });
  }
  //UI
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('you push the button this many times'),
            Text(_counter.toString(),style: const TextStyle(fontSize: 500),),
            ElevatedButton(onPressed: _increamentCounter, child: const Text('Increase!!'))
          ],
        ),
      ),
    );
  }
}