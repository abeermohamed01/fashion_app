import 'package:fashion_app/pages/help.dart';
import 'package:fashion_app/pages/home.dart';
import 'package:fashion_app/pages/about.dart';
import 'package:fashion_app/pages/profile.dart';
import 'package:fashion_app/pages/setting.dart';
import 'package:fashion_app/widgets/default_text_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  final String page;
  final String extra;

  const HomeView({Key key, this.page, this.extra}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List<String> pages = [
    'home',
    'about',
    'profile',
    'settings',
    'help',
  ];
  List<String> text = ['01', '02', '03', '04', '05'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Row(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.9,
            child: IndexedStack(
              index: pages.indexOf(widget.page),
              children: [
                Home(),
                About(),
                Profile(),
                Settings(),
                Help(),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.1,
            color: Colors.black,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: text.map((e) {
                return DefaultTextButton(
                  selected: text.indexOf(e) == pages.indexOf(widget.page),
                  text: e,
                  onTap: () {
                    if (text.indexOf(e) == 1) {
                      Navigator.pushNamed(
                          context, '/main/${pages[text.indexOf(e)]}/Allison');
                    } else {
                      Navigator.pushNamed(
                          context, '/main/${pages[text.indexOf(e)]}');
                    }
                  },
                );
              }).toList(),
            ),
          )
        ],
      ),
    );
  }
}
