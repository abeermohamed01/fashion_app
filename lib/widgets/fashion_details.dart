import 'package:fashion_app/styles/text_style.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';

class FashionDetails extends StatelessWidget {
  Color color ;
  FashionDetails({this.color});
  // const FashionDetails({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        var textAlignment =
        sizingInformation.deviceScreenType == DeviceScreenType.desktop
            ? TextAlign.left
            : TextAlign.center;

        return Container(
          width: 700,
          child: Padding(
            padding: const EdgeInsets.only(left: 135 , bottom: 100),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Buy less, choose well',
                  style: titleTextStyle(sizingInformation.deviceScreenType),
                  textAlign: textAlignment,
                ),
                SizedBox(height: 20,),
                Text(
                  'Be Fashioned',
                  style: titleTextStyle(sizingInformation.deviceScreenType),
                  textAlign: textAlignment,
                ),
                SizedBox(
                  height: 50,
                ),
                Text(
                  'Discover the collection as styled by fashion icon polly kuzin in our new season campaign',
                  style: descriptionTextStyle(sizingInformation.deviceScreenType),
                  textAlign: textAlignment,
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  width: 160,
                  height: 40,
                  color:color,
                  child: Center(child: Text('READ MORE' , style: GoogleFonts.ptSans(color: Colors.white60),)),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}