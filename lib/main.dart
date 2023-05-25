import 'package:chapter_7_state_management/counter_change_notifier_provider.dart';
import 'package:chapter_7_state_management/provider.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  MyHomePage(),
      debugShowCheckedModeBanner: false,
      routes: {
        '/provider' : (context) => MyProvider(),
        '/CounterChangeNotifierProvider' : (context) => MyCounterChangeNotifierProvider()
    }
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key,});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("State Management"),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: ElevatedButton(onPressed: () {
                Navigator.pushNamed(context,'/provider');
              }, child: Text("Provider",style: TextStyle(fontSize: 15)),),
            )
          ],
        ),
      ),
    );
  }
}
