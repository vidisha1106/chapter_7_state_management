import 'package:chapter_7_state_management/inherited_model/inherited_model.dart';
import 'package:flutter/material.dart';

class ShowCounter extends StatefulWidget {
  const ShowCounter({Key? key}) : super(key: key);
  @override
  State<ShowCounter> createState() => _ShowCounterState();
}

class _ShowCounterState extends State<ShowCounter> {
  @override
  Widget build(BuildContext context) {
    final ancestor=InheritedModel.inheritFrom<PassCounterInheritedModel>(context,aspect: 'counter2');
    debugPrint("Show Counter Build");
    return Scaffold(
      appBar: AppBar(
        title: Text("Show Counter"),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        leading: IconButton(
          onPressed: () {
           /* Navigator.popUntil(
                context, ModalRoute.withName('/InheritedWidget'));*/
            Navigator.popUntil(
                context, ModalRoute.withName('/InheritedModel'));
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Text("Counter 1 : ${PassCounterInheritedModel.of(context,'counter1')?.counter1}",
                style: TextStyle(fontSize: 25)),
            Text("Counter 2 : ${ancestor?.counter2}",
                style: TextStyle(fontSize: 25)),
          ],
        ),
      ),
    );
  }
}
