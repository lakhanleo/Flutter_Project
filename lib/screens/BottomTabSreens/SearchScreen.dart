import 'package:flutter/cupertino.dart';
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
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          // padding: const EdgeInsets.only(left: 20, right: 5),
          // height: 60,
          // decoration: BoxDecoration(
          //   color: Colors.grey.shade100,
          //   borderRadius: BorderRadius.circular(15),
          // ),
          child: Material(elevation: 5,borderRadius: BorderRadius.circular(15),
            child: Padding(
              padding: const EdgeInsets.only(left: 25),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: "Search for places",
                    hintStyle: TextStyle(color: Colors.grey.shade600),
                    border: InputBorder.none,
                    suffixIcon: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          CupertinoIcons.search,
                          color: Colors.grey.shade600,
                        ))),
              ),
            ),
          ),
        ),

      ],
    ),
        ));
  }
}
