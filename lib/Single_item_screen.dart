import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SingleItemScreen extends StatelessWidget {
  // String imgList;
  String img;

  SingleItemScreen(this.img, {super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: SafeArea(
              child: Padding(
        padding: EdgeInsets.only(top: 30, bottom: 20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: EdgeInsets.only(left: 25),
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back_ios_new,
                color: Colors.black.withOpacity(0.5),
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Center(
            child: Image.asset(
              "images/$img.png",
              width: MediaQuery.of(context).size.width / 1.2,
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Padding(
              padding: EdgeInsets.only(left: 25, right: 40),
              child: Column(
                children: [
                  Text(
                    "BEST COFFEE",
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.4),
                      letterSpacing: 3,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    img,
                    style: TextStyle(
                      fontSize: 30,
                      letterSpacing: 1,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.all(15),
                          width: 120,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black.withOpacity(0.2),
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                CupertinoIcons.minus,
                                size: 18,
                                color: Colors.brown,
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Text(
                                "2",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Icon(
                                CupertinoIcons.minus,
                                size: 18,
                                color: Colors.black,
                              ),
                            ],
                          ),
                        ),
                        Text(
                          "\$30.20",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Cofffee is a major many healthh sk hdksd hsjhds dgdbd",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.black.withOpacity(0.4)),
                  ),
                  Row(children: [
                    Text(
                      "Volume",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(width: 10),
                    Text(
                      "60 ml",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                  ]),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 20, horizontal: 50),
                          decoration: BoxDecoration(
                              color: Colors.brown,
                              borderRadius: BorderRadius.circular(18)),
                          child: Text(
                            "Add to Cart",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                letterSpacing: 1),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              )),
        ]),
      ))),
    );
  }
}
