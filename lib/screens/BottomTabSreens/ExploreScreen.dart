import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:tripbud/constants/Constants.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  bool folded = true;

  List imageList = [
    {"id": 1, "image_path": "assets/images/one.jpg"},
    {"id": 2, "image_path": "assets/images/two.jpg"},
    {"id": 3, "image_path": "assets/images/three.jpg"},
  ];
  List<String> imageGrid = [
    "assets/images/beach.jpg",
    "assets/images/beach.jpg",
    "assets/images/beach.jpg",
    "assets/images/beach.jpg",
    "assets/images/beach.jpg",
    "assets/images/beach.jpg",
  ];

  final CarouselController carouselController = CarouselController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    double hieght = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 30,
                    backgroundImage:
                        AssetImage("assets/images/profile_placeholder.png"),
                  ),
                  horizontalSpace(10),
                  RichText(
                      text: const TextSpan(
                    text: "Hello, ",
                    style: TextStyle(color: Colors.black, fontSize: 18,fontFamily: "Outfit",),
                        children: [TextSpan(text: "Lakhan",style: TextStyle(color: Colors.black,fontFamily: "Outfit",fontWeight: FontWeight.bold, fontSize: 18),),]
                  ),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20,right: 20,top: 20,),
              child: Text(
                "Let's Plan a Trip Together Bud !",
                style: TextStyle(
                    fontFamily: "Outfit",
                    fontSize: 25,
                    fontWeight: FontWeight.w900),
              ),
            ),
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
            // AnimatedContainer(
            //   duration: const Duration(milliseconds: 400),
            //   width: folded ? MediaQuery.of(context).size.width : 60,
            //   decoration: BoxDecoration(
            //     borderRadius: BorderRadius.circular(30),
            //     color: Colors.white,
            //
            //   ),
            //   child: Expanded(child: Container(
            //     padding: EdgeInsets.only(left: 16),
            //     child: folded ? TextField(decoration: InputDecoration(
            //       hintText: "Search",
            //       hintStyle: TextStyle(color: Colors.grey.shade400),
            //       border: InputBorder.none
            //     )) : Container(),
            //   )
            // ),
            // ),
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Row(
                children: [
                  Text(
                    "Explore",
                    style: TextStyle(
                        fontFamily: "Outfit",
                        fontSize: 25,
                        fontWeight: FontWeight.w900),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                vertical: 5,
              ),
              padding: const EdgeInsets.symmetric(vertical: 15),
              // color: Colors.red,
              height: hieght / 2,
              child: ListView.builder(
                itemCount: 5,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    padding: const EdgeInsets.all(6),
                    // decoration: BoxDecoration(
                    //     color: Colors.white,
                    //     boxShadow: const [
                    //       BoxShadow(
                    //           color: Colors.black12,
                    //           spreadRadius: 5,
                    //           blurRadius: 5,
                    //           offset: Offset(4, -0.5))
                    //     ],
                    //     borderRadius: BorderRadius.circular(15)),
                    child: Material(elevation:  ,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                      child: Column(
                        children: [
                          ///picture
                          Container(margin: EdgeInsets.only(left: 5,right: 5,top: 5,),
                            height: hieght / 3,
                            width: width / 1.5,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              image: DecorationImage(
                                  image: AssetImage(
                                    "assets/images/beach.jpg",
                                  ),
                                  fit: BoxFit.fill),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Stack(
                              children: [
                                Positioned(
                                  right: 0,
                                  top: 4,
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 5, horizontal: 8),
                                    child: const Icon(
                                      CupertinoIcons.heart,
                                      color: CupertinoColors.destructiveRed,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  right: 0,
                                  bottom: 0,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 5, horizontal: 5),
                                    decoration: const BoxDecoration(
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.black12,
                                            spreadRadius: 0.01,
                                            blurRadius: 2,
                                            offset: Offset(-2, -3))
                                      ],
                                      borderRadius: BorderRadius.only(
                                        bottomRight: Radius.circular(12),
                                        topLeft: Radius.circular(4),
                                      ),
                                    ),
                                    child: Center(
                                        child: Row(
                                      children: [
                                        const Text(
                                          "4.4",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w700,
                                              fontSize: 12),
                                        ),
                                        horizontalSpace(4),
                                        Image.asset(
                                          "assets/images/star.png",
                                          height: 12,
                                          width: 12,
                                        ),
                                      ],
                                    )),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          verticalSpace(4),
                          ///info
                          Container(
                              padding: const EdgeInsets.only(
                                  left: 5, top: 10, bottom: 10),
                              // decoration: const BoxDecoration(color: Colors.red,borderRadius: BorderRadius.only(bottomRight: Radius.circular(20))),
                              width: width / 1.5,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    " [Place_Name] ",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w800,
                                        fontFamily: "TenorSans"),
                                  ),
                                  verticalSpace(5),
                                  const Text(
                                    " [Place_Description] ",
                                    style: TextStyle(fontFamily: "TenorSans"),
                                  ),
                                ],
                              )),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: Row(
                children: [
                  Text(
                    "Amazing Facts",
                    style: TextStyle(
                        fontFamily: "Outfit",
                        fontSize: 25,
                        fontWeight: FontWeight.w900),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                child: CarouselSlider(
                    items: imageList
                        .map((item) => Padding(
                              padding: const EdgeInsets.all(5),
                              child: Image.asset(
                                item["image_path"],
                                fit: BoxFit.cover,
                                width: width,
                              ),
                            ))
                        .toList(),
                    options: CarouselOptions(
                      scrollPhysics: BouncingScrollPhysics(),
                      autoPlay: true,
                      viewportFraction: 1,
                      aspectRatio: 2,
                      onPageChanged: (index, reason) {
                        setState(() {
                          currentIndex = index;
                        });
                      },
                    )),
              ),
            ),
            // Container(
            //   width: width,
            //   height: width,
            //   color: Colors.red,
            //   child: MasonryGridView.builder(
            //     itemCount: imageGrid.length,
            //     gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            //     itemBuilder: (context, index) =>
            //         Padding(padding: EdgeInsets.all(2),
            //         child: ClipRect(child: Image.asset(imageGrid[index],),),
            //         ),
            //   ),
            // ),
          ],
        ),
      ),
    ));
  }
}
