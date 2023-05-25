import 'package:flutter/material.dart';

class MyCounterChangeNotifierProvider extends StatelessWidget {
  const MyCounterChangeNotifierProvider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: true,
        title: Text("ChangeNotifierProvider"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("You have pushed the button this many times : ")
          ],
        ),
      ),
    );
  }
}
