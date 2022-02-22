import 'package:flutter/material.dart';

class Accueil extends StatefulWidget {
  const Accueil({Key? key}) : super(key: key);
  @override
  State<Accueil> createState() => AccueilState();
}

class AccueilState extends State<Accueil> {
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
                  height: MediaQuery.of(context).size.height * 0.075,
                  width: MediaQuery.of(context).size.width * 0.95,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Good afternoon',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.height * 0.025,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'Your albums and liked songs',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.height * 0.02,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.20,
                  width: MediaQuery.of(context).size.width * 0.95,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height * 0.06,
                            width: MediaQuery.of(context).size.width * 0.45,
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(38, 40, 64, 1),
                                borderRadius: BorderRadius.circular(10)),
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height * 0.06,
                            width: MediaQuery.of(context).size.width * 0.45,
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(38, 40, 64, 1),
                                borderRadius: BorderRadius.circular(10)),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, '/Playlist');
                            },
                            child: Container(
                              height: MediaQuery.of(context).size.height * 0.06,
                              width: MediaQuery.of(context).size.width * 0.45,
                              decoration: BoxDecoration(
                                  color: Color.fromRGBO(38, 40, 64, 1),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Row(children: [
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.06,
                                  width:
                                      MediaQuery.of(context).size.height * 0.06,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage("asset/album.jpeg"),
                                        fit: BoxFit.cover,
                                      ),
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal:
                                          MediaQuery.of(context).size.width *
                                              0.015),
                                  width:
                                      MediaQuery.of(context).size.width * 0.3,
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            'POP',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            '100 Songs',
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                )
                              ]),
                            ),
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height * 0.06,
                            width: MediaQuery.of(context).size.width * 0.45,
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(38, 40, 64, 1),
                                borderRadius: BorderRadius.circular(10)),
                          )
                        ],
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.06,
                        width: MediaQuery.of(context).size.width * 0.925,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(38, 40, 64, 1),
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              'Show all',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                    height: MediaQuery.of(context).size.height * 0.05,
                    width: MediaQuery.of(context).size.width * 0.95,
                    child: Row(
                      children: [
                        Text(
                          'Recently played',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.025,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    )),
                Container(
                  height: MediaQuery.of(context).size.height * 0.2,
                  width: MediaQuery.of(context).size.width,
                  child: ListView(scrollDirection: Axis.horizontal, children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.2,
                      width: MediaQuery.of(context).size.height * 0.2,
                      padding: EdgeInsets.symmetric(
                          horizontal:
                              MediaQuery.of(context).size.height * 0.025),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height * 0.15,
                            width: MediaQuery.of(context).size.height * 0.15,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("asset/album.jpeg"),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(20)),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'Recently played',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontSize: MediaQuery.of(context).size.height *
                                      0.0175,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.2,
                      width: MediaQuery.of(context).size.height * 0.2,
                      padding: EdgeInsets.symmetric(
                          horizontal:
                              MediaQuery.of(context).size.height * 0.025),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height * 0.15,
                            width: MediaQuery.of(context).size.height * 0.15,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("asset/album.jpeg"),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(20)),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'Recently played',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontSize: MediaQuery.of(context).size.height *
                                      0.0175,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.2,
                      width: MediaQuery.of(context).size.height * 0.2,
                      padding: EdgeInsets.symmetric(
                          horizontal:
                              MediaQuery.of(context).size.height * 0.025),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height * 0.15,
                            width: MediaQuery.of(context).size.height * 0.15,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("asset/album.jpeg"),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(20)),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'Recently played',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontSize: MediaQuery.of(context).size.height *
                                      0.0175,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ]),
                )
              ],
            )));
  }
}
