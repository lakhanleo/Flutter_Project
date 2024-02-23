import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Constants {
  static snackBarWidget(String text, Color color) {
    Fluttertoast.showToast(
        msg: text,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: color,
        textColor: Colors.white,
        fontSize: 16.0);
  }
}

const regularTextStyle = TextStyle(
  fontSize: 15.0,
);
const subHeaderTextStyle = TextStyle(
  fontSize: 20.0,
);
const headerTextStyle = TextStyle(
  fontSize: 25.0,
);
const subRegularTextStyle = TextStyle(
  fontSize: 10.0,
);

const primaryColor = Color(0xff659AFA);
const secondaryColor = Color(0xff8a5971);
TextStyle title1 = const TextStyle(
  fontFamily: 'Poppins',
  fontSize: 24,
  fontWeight: FontWeight.w600,
  color: primaryColor,
);

Widget strip = Container(
  width: double.infinity,
  height: 10,
  color: secondaryColor,
);
Widget verticalSpace(double hieght){
  return SizedBox(height: hieght,);
}
Widget horizontalSpace(double width){
  return SizedBox(width: width,);
}


