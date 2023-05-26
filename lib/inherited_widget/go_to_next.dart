import 'package:chapter_7_state_management/inherited_widget/show_counter.dart';
import 'package:flutter/material.dart';

class GoToNext extends StatefulWidget {
  const GoToNext({Key? key}) : super(key: key);

  @override
  State<GoToNext> createState() => _GoToNextState();
}

class _GoToNextState extends State<GoToNext> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Go To Next"),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: () {
            Navigator.push(context,MaterialPageRoute(builder: (context) => ShowCounter(),));
          }, icon: Icon(Icons.navigate_next),)
        ],
      ),
    );
  }
}
