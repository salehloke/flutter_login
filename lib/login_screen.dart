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
      resizeToAvoidBottomInset: false,
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

          Align(
            alignment: Alignment.topCenter * .75,
            child: Container(
              // width: MediaQuery.of(context).size.width,
              child: Text(
                "eSR Login",
                style: TextStyle(fontSize: 50, color: Colors.white),
              ),
            ),
          ),

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
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.6,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius:
                    BorderRadius.only(topLeft: Radius.elliptical(100, 100)),
              ),
              child: Container(
                padding: EdgeInsets.all(8.0),
                decoration: BoxDecoration(),
                child: Column(
                  children: [
                    SizedBox(),

                    /// USERNAME INPUT
                    Container(
                      padding: EdgeInsets.all(8.0),
                      child: TextField(
                        /// DECORATION
                        decoration: InputDecoration(
                          fillColor: Colors.grey[300],
                          filled: true,
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.transparent,
                            ),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.transparent,
                            ),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          hintText: "Username",
                          hintStyle: TextStyle(color: Colors.grey[400]),
                          prefixIcon: Icon(Icons.account_circle),
                        ),
                      ),
                    ),

                    /// USERNAME INPUT
                    Container(
                      padding: EdgeInsets.all(8.0),
                      child: TextField(
                        keyboardType: TextInputType.visiblePassword,

                        /// DECORATION
                        decoration: InputDecoration(
                          fillColor: Colors.grey[300],
                          filled: true,
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.transparent,
                            ),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.transparent,
                            ),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          hintText: "Password",
                          hintStyle: TextStyle(color: Colors.grey[400]),
                          prefixIcon: Icon(Icons.vpn_key_rounded),
                        ),
                      ),
                    ),

                    /// LOGIN BUTTON
                    Container(
                      child: ElevatedButton(
                        child: Text("Login"),
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
