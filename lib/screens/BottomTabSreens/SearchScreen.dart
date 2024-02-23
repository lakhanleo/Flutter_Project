import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tripbud/constants/Constants.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {

  @override
  Widget build(BuildContext context) {
    double hieght = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        // backgroundColor: Colors.green,
        body: SafeArea(
            child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Spacer(),
        SvgPicture.asset(
          height: hieght/2,
          "assets/svg/Trip-pana.svg",
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
          child: Text(
            "Explore Your Travel Journey only with Us",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 22, fontFamily: "TenorSans"),
          ),
        ),
        verticalSpace(15),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
          child: Text(
            "All your travel time , leave the rest of worry to us",
            textAlign: TextAlign.center,
            style: TextStyle(fontFamily: "TenorSans"),
          ),
        ),
        const Spacer(),
        ElevatedButton(onPressed: () {},
            style: ElevatedButton.styleFrom(shape: const StadiumBorder(),padding: EdgeInsets.symmetric(vertical: 10,horizontal: width/3)),
          child: const Text("Get Started")
        )
      ],
    ),
        ));
  }
}
