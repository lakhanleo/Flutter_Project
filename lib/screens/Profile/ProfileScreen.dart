import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tripbud/constants/Constants.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  TextEditingController nameTEC = TextEditingController();
  TextEditingController numberTEC = TextEditingController();
  TextEditingController emailTEC = TextEditingController();
  TextEditingController genderTEC = TextEditingController();
  List<String> genderRole = ['Male', 'Female', 'Other'];

  @override
  Widget build(BuildContext context) {
    double hieght = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(centerTitle: true,title: Text("Profile"),),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: () {
                  ///
                },
                child: const Center(
                    child: CircleAvatar(
                  radius: 50,
                  backgroundImage:
                      AssetImage("assets/images/profile_placeholder.png"),
                )),
              ),
              verticalSpace(49),

              ///name--
              Container(
                  margin: const EdgeInsets.only(left: 25, bottom: 5),
                  child: const Text(
                    "NAME",
                    style: TextStyle(fontFamily: "Yatra"),
                  )),
              Form(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(30)),
                  margin:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  padding: const EdgeInsets.only(left: 15, right: 5),
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintText: "Your Name", border: InputBorder.none),
                  ),
                ),
              ),
              verticalSpace(20),

              ///number--
              Container(
                  margin: const EdgeInsets.only(left: 25, bottom: 5),
                  child: const Text(
                    "NUNBER",
                    style: TextStyle(fontFamily: "Yatra"),
                  )),
              Form(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(30)),
                  margin:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  padding: const EdgeInsets.only(left: 15, right: 5),
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintText: "Your Name", border: InputBorder.none),
                  ),
                ),
              ),
              verticalSpace(20),

              ///email--
              Container(
                  margin: const EdgeInsets.only(left: 25, bottom: 5),
                  child: const Text(
                    "EMAIL",
                    style: TextStyle(fontFamily: "Yatra"),
                  )),
              Form(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(30)),
                  margin:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  padding: const EdgeInsets.only(left: 15, right: 5),
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintText: "Your Name", border: InputBorder.none),
                  ),
                ),
              ),
              verticalSpace(20),

              ///gender--
              Container(
                  margin: const EdgeInsets.only(left: 25, bottom: 5),
                  child: const Text(
                    "GENDER",
                    style: TextStyle(fontFamily: "Yatra"),
                  )),
              Form(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(30)),
                  margin:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  padding: const EdgeInsets.only(left: 15, right: 5),
                  child: DropdownButtonFormField(
                    items: genderRole
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (value) {
                      setState(() {
                        genderTEC.text = value!;
                      });
                    },
                    decoration: const InputDecoration(
                      hintText: 'Gender',
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(horizontal: 40),
                    ),
                  ),
                ),
              ),

              ///button
              verticalSpace(30),
              Center(
                child: Ink(
                  width: width / 2,
                  height: width / 7,
                  decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(30)),
                  child: Center(
                      child: Text(
                    "Save",
                    style: TextStyle(
                        color: Colors.white, fontSize: 18, fontFamily: "Yatra"),
                  )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
