import 'package:flutter/material.dart';

class HomeCounter extends StatelessWidget {
  const HomeCounter({super.key});

  @override
  Widget build(BuildContext context) {
    const fontSize30 = TextStyle(fontSize: 30);
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Counter'),
        elevation: 10.0,
      ),
      body : Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text('Hola Mundo Home Counter', style: fontSize30),
            Text('Number 1', style: fontSize30, selectionColor: Color.fromARGB(235, 236, 28, 28)),
          ],
        ),
      ),
      //floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat, // For Deafult
      floatingActionButton:  FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: (){
          print('Hola mundo');
        },
      ),
    );
  }
}