import 'package:fashion_app/widgets/divider.dart';
import 'package:fashion_app/widgets/fashion_details.dart';
import 'package:fashion_app/widgets/haeder.dart';
import 'package:flutter/material.dart';

class Help extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 120),
              child: MyDivider(),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 150),
              child: MyDivider(),
            ),
            MyDivider(),
          ],
        ),
        Header(),
        FashionDetails(color: Colors.redAccent,),
      ],
    );
  }
}