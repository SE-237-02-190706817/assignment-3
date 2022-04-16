import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'new App',
      theme: ThemeData(
          primarySwatch:Colors.purple
      ),
      home: const MyHomePage(title: 'HomeWork3'),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  /*void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }*/
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("HomeWork3"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'push the button:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            ],
            ),
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){setState(() {_counter++;});},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
      );
     }
}