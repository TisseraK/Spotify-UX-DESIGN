import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);
  @override
  State<SignIn> createState() => SignInState();
}

class SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.075),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Color.fromRGBO(13, 14, 35, 1),
            ),
            child: Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.90,
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.arrow_back,
                          color: Color.fromRGBO(35, 215, 96, 1),
                          size: MediaQuery.of(context).size.height * 0.035,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).size.height * 0.1),
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: MediaQuery.of(context).size.height * 0.2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Sign Up',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize:
                                    MediaQuery.of(context).size.height * 0.03,
                                fontWeight: FontWeight.w900),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.80,
                            child: Text(
                              'Create a new accounts and listen millions of songs',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize:
                                      MediaQuery.of(context).size.height * 0.02,
                                  fontWeight: FontWeight.w900),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.4,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.15,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              padding: EdgeInsets.only(
                                  left:
                                      MediaQuery.of(context).size.width * 0.08),
                              height:
                                  MediaQuery.of(context).size.height * 0.055,
                              width: MediaQuery.of(context).size.width * 0.8,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(30)),
                              child: TextFormField(
                                style: TextStyle(
                                    color: Color.fromRGBO(13, 14, 35, 1),
                                    fontWeight: FontWeight.w900),
                                decoration: InputDecoration(
                                    hintText: 'Enter your email adress',
                                    hintStyle: TextStyle(
                                        color: Color.fromRGBO(13, 14, 35, 1),
                                        fontWeight: FontWeight.w900),
                                    border: InputBorder.none),
                              ),
                            ),
                            Text(
                              'You\'ll need to confirm this email later.',
                              style: TextStyle(
                                  fontSize:
                                      MediaQuery.of(context).size.height * 0.02,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/Accueil');
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
                                  'Next',
                                  style: TextStyle(
                                      fontSize:
                                          MediaQuery.of(context).size.height *
                                              0.02,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            )),
                      )
                    ],
                  ),
                )
              ],
            )));
  }
}
