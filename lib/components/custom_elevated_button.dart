import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {

  final String path;
  final String pathName;

  const CustomElevatedButton({
    super.key, required this.path, required this.pathName,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(onPressed: () {
        Navigator.pushNamed(context,path);
      }, child: Text(pathName,style: TextStyle(fontSize: 15)),),
    );
  }
}