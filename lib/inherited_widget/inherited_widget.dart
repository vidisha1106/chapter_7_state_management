import 'package:chapter_7_state_management/inherited_widget/go_to_next.dart';
import 'package:chapter_7_state_management/inherited_widget/pass_counter.dart';
import 'package:flutter/material.dart';

class MyInheritedWidget extends StatefulWidget {
  const MyInheritedWidget({Key? key}) : super(key: key);

  @override
  State<MyInheritedWidget> createState() => _MyInheritedWidgetState();
}

class _MyInheritedWidgetState extends State<MyInheritedWidget> {

  @override
  Widget build(BuildContext context) {
    final counter = PassCounter.of(context);
    debugPrint("Inherited Widget Build");
    return Scaffold(
      appBar: AppBar(
        title: Text("Inherited Widget"),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => GoToNext(),
                  ));
            },
            icon: Icon(Icons.navigate_next),
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("You have pushed the button this many times : ",
                style: TextStyle(fontSize: 19)),
            Text(
              counter.counter.toString(),
              style: TextStyle(fontSize: 25),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              counter.counter++;
            });
            // increment();
          },
          child: Icon(Icons.add)),
    );
  }
}
