import "package:flutter/material.dart";
import 'package:carousel_slider/carousel_slider.dart';
import 'package:tract_app/models/widgets.dart';

TextStyle footerStyle = TextStyle(fontSize: 16,);

Widget homeScreen() {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          physics: AlwaysScrollableScrollPhysics(),
          children: [
            CarouselSlider(
                options: CarouselOptions(
                  height: 120,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 5),
                ),
                items: [
                  "asset/images/jaysam1.jpg",
                  "asset/images/jaysam2.jpg",
                  "asset/images/delete.jpg"
                ].map((e) {
                  return Builder(builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(),
                      child: Image.asset(e),
                    );
                  });
                }).toList()),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 40),
              height: 40,
              decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.4),
                  borderRadius: BorderRadius.circular(25)),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Enter your destination",
                    contentPadding: EdgeInsets.symmetric(vertical: 5),
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.search)),
              ),
            ),
            SizedBox(height: 10),
            Container(
              color: Colors.grey.withOpacity(0.1),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      homeContainer("Accra", ""),
                      SizedBox(
                        width: 20,
                      ),
                      homeContainer("Kumasi", "")
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      homeContainer("Cape Coast", ""),
                      SizedBox(
                        width: 20,
                      ),
                      homeContainer("Koforidua", "")
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      homeContainer("Kasoa", ""),
                      SizedBox(
                        width: 20,
                      ),
                      homeContainer("Ho", "")
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 150,
                    decoration: BoxDecoration(
                      color: Colors.black26,
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 20),
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 5,
                                  ),
                                  GestureDetector(
                                      child: Text(
                                    "About",
                                    style: footerStyle,
                                  )),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  GestureDetector(
                                      child: Text(
                                    "Billing Policy",
                                    style: footerStyle,
                                  )),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  GestureDetector(
                                      child: Text(
                                    "Help center",
                                    style: footerStyle,
                                  )),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  GestureDetector(
                                      child: Text("Terms and Conditions",
                                          style: footerStyle)),
                                ],
                              ),
                            ),
                            SizedBox(width: 50),
                            Column(children: [
                              SizedBox(
                                height: 5,
                              ),
                              GestureDetector(
                                  child: Text(
                                "FAQ",
                                style: footerStyle,
                              )),
                              SizedBox(
                                height: 5,
                              ),
                              GestureDetector(
                                  child: Text(
                                "Contact Us",
                                style: footerStyle,
                              )),
                              SizedBox(
                                height: 5,
                              ),
                              GestureDetector(
                                  child: Text(
                                "Privacy",
                                style: footerStyle,
                              ))
                            ]),
                          ],
                        ),
                        Container()
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        )));}