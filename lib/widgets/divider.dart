import 'package:flutter/material.dart';
class MyDivider extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Container(
      height:size.height ,
      width: 1,
      color: Colors.grey[700],
    );
  }
}
