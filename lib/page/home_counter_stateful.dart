import 'package:flutter/material.dart';

class HomeStatefulCounter extends StatefulWidget {
  const HomeStatefulCounter({super.key});

  @override
  State<HomeStatefulCounter> createState() => _HomeStatefulCounterState();
}

class _HomeStatefulCounterState extends State<HomeStatefulCounter> {

  int counter = 0;

  @override
  Widget build(BuildContext context) {
    const fontSize30 = TextStyle(fontSize: 30);
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Counter Stateful'),
        elevation: 10.0,
      ),
      body : Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Home Counter Stateful', style: fontSize30),
            Text('Number Stateful : $counter', style: fontSize30)
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked, // For Deafult
      floatingActionButton:  Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            child: const Icon(Icons.add),
            onPressed: (){
              counter++;
              //print('Hola mundo $counter');
              setState(() {});
            },
          ),
          //const SizedBox(width: 20),
          FloatingActionButton(
            child: const Icon(Icons.restart_alt),
            onPressed: (){
              counter = 0;
              //print('Hola mundo $counter');
              setState(() {});
            },
          ),
          //const SizedBox(width: 20),
          FloatingActionButton(
            child: const Icon(Icons.remove),
            onPressed: (){
              counter--;
              //print('Hola mundo $counter');
              setState(() {});
            },
          ),
        ],
      ),
    );
  }
}