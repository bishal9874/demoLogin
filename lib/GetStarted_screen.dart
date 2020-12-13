import 'dart:async';
import 'package:demologin/slide_amination_data/slide_dots.dart';
import 'package:demologin/slide_amination_data/slide_item.dart';
import 'package:demologin/slide_amination_data/slider_data.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class GetStarted extends StatefulWidget {
  @override
  _GetStartedState createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  TextEditingController numController = new TextEditingController();

  int _currentPage = 0;
  final PageController _pageController = PageController(initialPage: 0);

  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 5), (Timer timer) {
      if (_currentPage < 2) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }

      _pageController.animateToPage(
        _currentPage,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    });
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  _onPageChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    print(context.mdWindowSize);
    return Scaffold(
      body: Container(
        color: Colors.white,
        height: double.infinity,
        child: VStack(
          [
            Expanded(
              child: Stack(
                //alignment: AlignmentDirectional.bottomCenter,
                alignment: AlignmentDirectional.bottomStart,
                children: <Widget>[
                  PageView.builder(
                    scrollDirection: Axis.horizontal,
                    controller: _pageController,
                    onPageChanged: _onPageChanged,
                    itemCount: slideList.length,
                    itemBuilder: (ctx, i) => SlideItem(i),
                  ),
                  Container(
                    height: height * 0.55,
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: height * 0.05,
                          child: Row(
                            /// mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,

                            children: <Widget>[
                              for (int i = 0; i < slideList.length; i++)
                                if (i == _currentPage)
                                  SlideDots(true)
                                else
                                  SlideDots(false),
                            ],
                          ),
                        ),
                        Text(
                          "By tapping Log In,you are agree with our",
                          style: GoogleFonts.raleway(
                              color: Color(0xFF585F66), fontSize: 16.0),
                        ),
                        SizedBox(
                          width: width * 0.01,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () {},
                              child: Text("Terms of service",
                                  style: GoogleFonts.raleway(
                                      color: Color(0xFF17181A),
                                      fontSize: 16.0)),
                            ),
                            SizedBox(
                              width: width * 0.01,
                            ),
                            Text(
                              "and",
                              style: GoogleFonts.raleway(
                                  color: Color(0xFF585F66), fontSize: 16.0),
                            ),
                            SizedBox(
                              width: width * 0.01,
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Text("Privacy Policy",
                                  style: GoogleFonts.raleway(
                                      color: Color(0xFF17181A),
                                      fontSize: 16.0)),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: height * 0.05,
                        ),
                        InkWell(
                            onTap: () {
                             
                            },
                            child: Container(
                              height: height * 0.06,
                              width: width * 0.58,
                              decoration: BoxDecoration(
                                  color: Color(0xFFACB7B2),
                                  borderRadius: BorderRadius.circular(30.0)),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    FontAwesomeIcons.phone,
                                    color: Color(0xFFFFFFFF),
                                  ),
                                  SizedBox(
                                    width: width * 0.03,
                                  ),
                                  Text("Login with phone number",
                                      style: GoogleFonts.notoSans(
                                          color: Color(0xFFFFFFFF),
                                          fontSize: 13.0))
                                ],
                              ),
                            )),
                        SizedBox(
                          height: height * 0.03,
                        ),
                        InkWell(
                            onTap: () {
                              // Navigator.of(context).push(MaterialPageRoute(
                              //     builder: (context) => LoginScreen()));
                            },
                            child: Container(
                              height: height * 0.06,
                              width: width * 0.58,
                              decoration: BoxDecoration(
                                  color: Color(0xFF3B5998),
                                  borderRadius: BorderRadius.circular(30.0)),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    FontAwesomeIcons.facebookF,
                                    color: Color(0xFFFFFFFF),
                                  ),
                                  SizedBox(
                                    width: width * 0.03,
                                  ),
                                  Text("Login with Facebook",
                                      style: GoogleFonts.notoSans(
                                          color: Color(0xFFFFFFFF),
                                          fontSize: 15.0))
                                ],
                              ),
                            )),
                        SizedBox(
                          height: height * 0.03,
                        ),
                        InkWell(
                            onTap: () {
                              // Navigator.of(context).push(MaterialPageRoute(
                              //     builder: (context) => LoginScreen()));
                            },
                            child: Container(
                              height: height * 0.06,
                              width: width * 0.58,
                              decoration: BoxDecoration(
                                  color: Color(0xFFDB4437),
                                  borderRadius: BorderRadius.circular(30.0)),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    FontAwesomeIcons.google,
                                    color: Color(0xFFFFFFFF),
                                  ),
                                  SizedBox(
                                    width: width * 0.03,
                                  ),
                                  Text("Sign in with Google",
                                      style: GoogleFonts.notoSans(
                                          color: Color(0xFFFFFFFF),
                                          fontSize: 15.0))
                                ],
                              ),
                            )),
                        SizedBox(
                          height: height * 0.04,
                        ),
                        Text(
                          "we'll never post anything without your permission",
                          style: GoogleFonts.raleway(
                              color: Color(0xFF585F66), fontSize: 12.0),
                        ),
                        Text(
                          "version 1.0.001",
                          style: GoogleFonts.raleway(
                              color: Color(0xFFACB7B2), fontSize: 12.0),
                        ),
                      ],
                    ).p(10.0),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
// _text(){
//
// }
}
