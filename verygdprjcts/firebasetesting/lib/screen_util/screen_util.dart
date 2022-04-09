import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class ScreenUtilPage extends StatelessWidget {
  const ScreenUtilPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
            color: Colors.amber,
            width: 0.9.sw,
            height: 100.h,
            child: Column(
              children: [
                const Icon(
                  FontAwesomeIcons.ambulance, //fontawesome package install
                  size: 50,
                ),
                Text(
                  'EMERGENCY',
                  style: GoogleFonts.sofia(),//googlefonts package
                ),
              ],
            )),
      ),
    );
  }
}
