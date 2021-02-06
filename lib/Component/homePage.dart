import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: ListView(
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
                  height: 40,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.4),
                      borderRadius: BorderRadius.circular(25)),
                  child: (TextField(
                    decoration: InputDecoration(
                        hintText: "Enter your destination",
                        contentPadding: EdgeInsets.symmetric(vertical: 5),
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.search)),
                  ))),
              SizedBox(height: 10),
              Container(
                color: Colors.grey.withOpacity(0.3),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 180,
                          width: 180,
                          child: Column(
                            children: [
                              Image.asset(""),
                              Text(
                                "Kumasi",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                              )
                            ],
                          ),
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.4),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          height: 180,
                          width: 180,
                          child: Column(
                            children: [
                              Image.asset(""),
                              Text(
                                "Accra",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                              )
                            ],
                          ),
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.4),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 180,
                          width: 180,
                          child: Column(
                            children: [
                              Image.asset(""),
                              Text(
                                "Cape Coast",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                              )
                            ],
                          ),
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.4),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          height: 180,
                          width: 180,
                          child: Column(
                            children: [
                              Image.asset(""),
                              Text(
                                "Kofiridua",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                              )
                            ],
                          ),
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.4),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 180,
                          width: 180,
                          child: Column(
                            children: [
                              Image.asset(""),
                              Text(
                                "Accra",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                              )
                            ],
                          ),
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.4),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          height: 180,
                          width: 180,
                          child: Column(
                            children: [
                              Image.asset(""),
                              Text(
                                "Accra",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                              )
                            ],
                          ),
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.4),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 200,
                      decoration: BoxDecoration(
                        color: Colors.black26,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
