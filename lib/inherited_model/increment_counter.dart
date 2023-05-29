import 'package:chapter_7_state_management/inherited_model/inherited_model.dart';
import 'package:chapter_7_state_management/inherited_widget/go_to_next.dart';
import 'package:flutter/material.dart';

class MyIncrementCounter extends StatefulWidget {
  const MyIncrementCounter({Key? key}) : super(key: key);

  @override
  State<MyIncrementCounter> createState() => _MyIncrementCounterState();
}

class _MyIncrementCounterState extends State<MyIncrementCounter> {

  @override
  Widget build(BuildContext context) {
    final counter=PassCounterInheritedModel.of(context,'counter2');
    debugPrint("Increment Counter Build");
    return Scaffold(
      appBar: AppBar(
        title: Text("Inherited Model"),
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
              counter!.counter1.toString(),
              style: TextStyle(fontSize: 25),
            ),
            Text(
              counter.counter2.toString(),
              style: TextStyle(fontSize: 25),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              counter.counter1++;
              counter.counter2++;
            });
            // increment();
          },
          child: Icon(Icons.add)),
    );
  }
}
