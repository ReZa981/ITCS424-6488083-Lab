import 'package:flutter/material.dart';
import 'theme.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 50,
        backgroundColor: Theme.of(context).colorScheme.background,
        title: Align(
            alignment: Alignment.centerLeft,
            child: Row(
              mainAxisAlignment:
                  MainAxisAlignment.spaceBetween, // Add this line
              children: [
                Image.asset(
                  "./asset/logo.png",
                  height: 30,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ClipOval(
                        child: SizedBox.fromSize(
                          size: Size.fromRadius(15), // Image radius
                          child: Image.asset('./asset/profile.png',
                              fit: BoxFit.cover),
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child:
                              Text('guragura', style: TextStyle(fontSize: 16)))
                    ],
                  ),
                ),
              ],
            )),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
