
import 'package:fashion_app/models/header_model.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  HeaderModel headerModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 80),
          child: Container(
            width: 220,
            height: 25,
            color: Colors.blue[800],
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Text(
                  'april 28',
                    style: TextStyle(color: Colors.white60),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
