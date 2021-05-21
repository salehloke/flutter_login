import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  static const routeName = '/Login';
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   backgroundColor: Color(0xFFE7004C),
      //   centerTitle: true,
      //   title: Text(
      //     "Login",
      //   ),
      // ),
      body: Stack(
        children: [
          /// the first box, semi rounded corner on bottom right
          Align(
            alignment: Alignment.topCenter,
            child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.3,
                decoration: BoxDecoration(
                  color: Color(0xFFE7004C),
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.elliptical(100, 60),
                  ),
                ),
                child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 50, vertical: 3),
                          )
                        ],
                      )
                    ])),
          ),
          Align(
            alignment: Alignment.topCenter * .75,
            child: Text(
              "Login",
              style: TextStyle(fontSize: 50, color: Colors.white),
            ),
          ),

          /// top left arc
          Align(
              alignment: Alignment.topLeft,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.3,
                height: MediaQuery.of(context).size.height * 0.5,
                decoration: BoxDecoration(
                  color: Color(0xFFE7004C),
                  borderRadius: BorderRadius.only(),
                ),
              )),

          /// the bottom left arc
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.7,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius:
                    BorderRadius.only(topLeft: Radius.elliptical(100, 80)),
              ),
            ),
          ),

          /// main body
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: MediaQuery.of(context).size.width * 0.3,
              height: MediaQuery.of(context).size.height * 0.6,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius:
                    BorderRadius.only(topLeft: Radius.elliptical(100, 100)),
              ),
              child: Container(
                padding: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                    // boxShadow: [
                    //   BoxShadow(
                    //     color: Color(0xFFE7004C),
                    //     offset: Offset(0, 10),
                    //     blurRadius: 20.0,
                    //   )
                    // ],
                    ),
                child: Column(
                  children: [
                    SizedBox(),
                    Container(
                      padding: EdgeInsets.all(8.0),
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Username",
                            hintStyle: TextStyle(color: Colors.grey[400])),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(8.0),
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "password",
                            hintStyle: TextStyle(color: Colors.grey[400])),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
