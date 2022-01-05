import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class DefaultTextButton extends StatefulWidget {
  final bool selected;
  final Function onTap;
  final String text;

  const DefaultTextButton({Key key, this.selected, this.onTap, this.text})
      : super(key: key);
  @override
  _DefaultTextButtonState createState() => _DefaultTextButtonState();
}

class _DefaultTextButtonState extends State<DefaultTextButton> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
          onTap: () {
            widget.onTap();
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Row(
              children: [
                Text(
                  widget.text,
                  style: TextStyle(
                    color: widget.selected ? Colors.white : Colors.white60,
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                ResponsiveBuilder(
                  builder: (context, sizingInformation) {
                    if (sizingInformation.deviceScreenType ==
                        DeviceScreenType.desktop) {
                      return Container(
                        width: 110,
                        height: 2,
                        color:
                            widget.selected ? Colors.white : Colors.transparent,
                      );
                    }
                    if (sizingInformation.deviceScreenType ==
                        DeviceScreenType.tablet) {
                      return Container(
                        width: 80,
                        height: 2,
                        color:
                            widget.selected ? Colors.white : Colors.transparent,
                      );
                    }
                    return Container(
                      width: 50,
                      height: 2,
                      color:
                          widget.selected ? Colors.white : Colors.transparent,
                    );
                  },
                ),
              ],
            ),
          )),
    );
  }
}
