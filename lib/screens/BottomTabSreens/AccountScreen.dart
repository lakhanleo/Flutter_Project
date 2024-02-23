import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:tripbud/constants/Constants.dart';

import '../Profile/ProfileScreen.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    double hieght = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              Colors.green.shade200,
              Colors.green.shade100,
              Colors.white
            ])),
        child: SingleChildScrollView(
          child: Column(
            children: [
              verticalSpace(MediaQuery.of(context).size.height / 7),
              ///profile picture
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                    boxShadow: [BoxShadow(color: Colors.black12,offset: Offset(1, 0),blurRadius: 10)]
                ),
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  radius: width / 6,
                  backgroundColor: Colors.white,
                  backgroundImage: const AssetImage("assets/images/profile_placeholder.png"),
                ),
              ),
              verticalSpace(20),
              ///account Info
              Container(
                width: width,
                height: hieght / 4,
                margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  boxShadow: [BoxShadow(color: Colors.black26,offset: Offset(1, 0),blurRadius: 15)]
                ),
                child: Stack(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text("Lakhan Singh",style: TextStyle(fontFamily: "Julius", fontWeight: FontWeight.w700),),
                        Divider(
                          color: Colors.grey.shade300,
                        ),
                        const Text(
                          "8077866460", style: TextStyle(fontFamily: "Julius", fontWeight: FontWeight.w700),
                        ),
                        Divider(
                          color: Colors.grey.shade300,
                        ),
                        const Text("lkhn.sngh@gmail.com",style: TextStyle(fontFamily: "Julius", fontWeight: FontWeight.w700),),
                      ],
                    ),
                    Positioned(
                      bottom: 0,right: 0,
                      child: IconButton(onPressed: () {
                        Get.to(ProfileScreen(),transition: Transition.circularReveal,duration: Duration(milliseconds: 700) );
                      }, icon: Icon(Icons.edit,color: Colors.black,)),
                    ),
                  ],
                ),

              ),
              verticalSpace(10),
              ///other options
              Container(
                width: width,
                height: hieght / 4,
                margin: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [BoxShadow(color: Colors.black26,offset: Offset(1, 0),blurRadius: 15)]
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      Icon(Icons.email_outlined),
                      SizedBox(width: 10,),
                      Text("Write to Us",style: TextStyle(fontFamily: "Julius", fontWeight: FontWeight.w700),),
                    ],),
                    Divider(
                      color: Colors.grey.shade300,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      Icon(Icons.logout_outlined),
                      SizedBox(width: 10,),
                      Text("Logout",style: TextStyle(fontFamily: "Julius", fontWeight: FontWeight.w700),),
                    ],),
                    Divider(
                      color: Colors.grey.shade300,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      Icon(Icons.delete_outline_outlined,color: Colors.red,),
                      SizedBox(width: 10,),
                      Text("Delete Account",style: TextStyle(fontFamily: "Julius", fontWeight: FontWeight.w700,color: Colors.red),),
                    ],),
                  ],
                ),

              ),

            ],
          ),
        ),
      ),
    );
  }
}
