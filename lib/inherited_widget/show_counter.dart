import 'package:chapter_7_state_management/inherited_widget/pass_counter.dart';
import 'package:flutter/material.dart';

class ShowCounter extends StatefulWidget {
  const ShowCounter({Key? key}) : super(key: key);
  @override
  State<ShowCounter> createState() => _ShowCounterState();
}

class _ShowCounterState extends State<ShowCounter> {
  @override
  Widget build(BuildContext context) {
    debugPrint("Show Counter Build");
    return Scaffold(
      appBar: AppBar(
        title: Text("Show Counter"),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        leading: IconButton(
          onPressed: () {
            Navigator.popUntil(
                context, ModalRoute.withName('/InheritedWidget'));
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              PassCounter.of(context).counter++;
            });
            // increment();
          },
          child: Icon(Icons.add)),
      body: Center(
        child: Text("Counter : ${PassCounter.of(context).counter}",
            style: TextStyle(fontSize: 25)),
      ),
    );
  }
}
