import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';

/// Returns the style for a page title based on the [deviceScreenType] passed in.
TextStyle titleTextStyle(DeviceScreenType deviceScreenType) {
  double titleSize = deviceScreenType == DeviceScreenType.mobile ? 30 : 50;
  return GoogleFonts.merriweather(
    fontStyle: FontStyle.normal,
      height: 0.9, fontSize: titleSize, color: Colors.white);
}

/// Return the style for description text on a page based on the [deviceScreenType] passed in.
TextStyle descriptionTextStyle(DeviceScreenType deviceScreenType) {
  double descriptionSize =
      deviceScreenType == DeviceScreenType.mobile ? 14 : 18;

  return GoogleFonts.libreFranklin(
  fontStyle: FontStyle.normal,
    fontSize: descriptionSize,
    height: 1.7,
    color: Colors.white60,
  );
}
