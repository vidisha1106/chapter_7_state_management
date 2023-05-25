import 'package:flutter/material.dart';

class MyProvider extends StatefulWidget {
  const MyProvider({Key? key}) : super(key: key);

  @override
  State<MyProvider> createState() => _MyProviderState();
}

class _MyProviderState extends State<MyProvider> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Provider", style: TextStyle(fontSize: 20)),
        automaticallyImplyLeading: true,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context,'/CounterChangeNotifierProvider');
                },
                child: Text("ChangeNotifierProvider",
                    style: TextStyle(fontSize: 15)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
