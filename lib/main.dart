import 'package:flutter/material.dart';
import 'package:spotify_uxdesign/screen/accueil.dart';
import 'package:spotify_uxdesign/screen/playlist.dart';

import 'auth/login.dart';
import 'auth/signin.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          fontFamily: 'Montserrat',
          primarySwatch: Colors.blue,
        ),
        routes: {
          '/': (context) => MyHomePage(),
          '/LogIn': (context) => LogIn(),
          '/SignIn': (context) => SignIn(),
          '/Accueil': (context) => Accueil(),
          '/Playlist': (context) => Playlist(),
        },
        initialRoute: '/');
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("asset/fond.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.175),
                  height: MediaQuery.of(context).size.height * 0.40,
                  child: Column(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.05,
                        width: MediaQuery.of(context).size.width * 0.75,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              'Millions of free songs on',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: MediaQuery.of(context).size.height *
                                      0.025,
                                  fontFamily: 'Montserrat'),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.075,
                        width: MediaQuery.of(context).size.width * 0.6,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("asset/logo.png"),
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.4,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/SignIn');
                        },
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.055,
                          width: MediaQuery.of(context).size.width * 0.8,
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(35, 215, 96, 1),
                              borderRadius: BorderRadius.circular(30)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                'Sign Up free',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize:
                                        MediaQuery.of(context).size.height *
                                            0.02),
                              )
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/SignIn');
                        },
                        child: Container(
                          padding: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width * 0.06),
                          height: MediaQuery.of(context).size.height * 0.055,
                          width: MediaQuery.of(context).size.width * 0.8,
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(13, 14, 35, 1),
                              border: Border.all(color: Colors.white, width: 2),
                              borderRadius: BorderRadius.circular(30)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage("asset/logoFB.png"),
                                        fit: BoxFit.fitHeight,
                                      ),
                                    ),
                                    height: MediaQuery.of(context).size.height *
                                        0.03,
                                    width: MediaQuery.of(context).size.height *
                                        0.05,
                                  ),
                                  Text(
                                    'Continue with Facebook',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize:
                                            MediaQuery.of(context).size.height *
                                                0.02),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          padding: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width * 0.06),
                          height: MediaQuery.of(context).size.height * 0.055,
                          width: MediaQuery.of(context).size.width * 0.8,
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(13, 14, 35, 1),
                              border: Border.all(color: Colors.white, width: 2),
                              borderRadius: BorderRadius.circular(30)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image:
                                            AssetImage("asset/logoAPPLE.png"),
                                        fit: BoxFit.fitHeight,
                                      ),
                                    ),
                                    height: MediaQuery.of(context).size.height *
                                        0.03,
                                    width: MediaQuery.of(context).size.height *
                                        0.05,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left:
                                            MediaQuery.of(context).size.width *
                                                0.035),
                                  ),
                                  Text(
                                    'Continue with Apple',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize:
                                            MediaQuery.of(context).size.height *
                                                0.02),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Text(
                        'Or',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize:
                                MediaQuery.of(context).size.height * 0.02),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/LogIn');
                        },
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.055,
                          width: MediaQuery.of(context).size.width * 0.8,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.white, width: 2),
                              borderRadius: BorderRadius.circular(30)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    'Login',
                                    style: TextStyle(
                                        color: Color.fromRGBO(13, 14, 35, 1),
                                        fontWeight: FontWeight.bold,
                                        fontSize:
                                            MediaQuery.of(context).size.height *
                                                0.02),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            )));
  }
}
