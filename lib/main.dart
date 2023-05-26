import 'package:chapter_7_state_management/components/custom_elevated_button.dart';
import 'package:chapter_7_state_management/counter_change_notifier_provider.dart';
import 'package:chapter_7_state_management/inherited_widget/inherited_widget.dart';
import 'package:chapter_7_state_management/inherited_widget/pass_counter.dart';
import 'package:chapter_7_state_management/provider.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return PassCounter(
      counter: 0,
      child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: MyHomePage(),
          debugShowCheckedModeBanner: false,
          routes: {
            '/provider': (context) => MyProvider(),
            '/CounterChangeNotifierProvider': (context) =>
                MyCounterChangeNotifierProvider(),
            '/InheritedWidget': (context) => MyInheritedWidget()
          }),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

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
            CustomElevatedButton(
              path: '/provider',
              pathName: 'Provider',
            ),
            CustomElevatedButton(
              path: '/InheritedWidget',
              pathName: 'MyInheritedWidget',
            )
          ],
        ),
      ),
    );
  }
}
