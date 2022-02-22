import 'package:flutter/material.dart';

class Playlist extends StatefulWidget {
  const Playlist({Key? key}) : super(key: key);
  @override
  State<Playlist> createState() => PlaylistState();
}

bool az = false;
bool ez = false;
bool titre1 = false;
bool titre2 = false;
bool titre3 = false;
bool titre4 = false;
bool titre5 = false;
void showCustomDialog(BuildContext context) {
  showGeneralDialog(
    context: context,
    barrierLabel: "Barrier",
    barrierDismissible: true,
    barrierColor: Colors.white.withOpacity(0.2),
    transitionDuration: Duration(milliseconds: 700),
    pageBuilder: (_, __, ___) {
      return Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.7,
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: BoxDecoration(
                  color: Color.fromRGBO(13, 14, 35, 1),
                  borderRadius: BorderRadius.circular(40)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Titre',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height * 0.03,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.25,
                    width: MediaQuery.of(context).size.height * 0.25,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("asset/album.jpeg"),
                          fit: BoxFit.fitWidth,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.3,
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: Column(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.075,
                          width: MediaQuery.of(context).size.width * 0.8,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * 0.3,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Titre',
                                          textAlign: TextAlign.right,
                                          style: TextStyle(
                                              fontSize: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.02,
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
                                          'By Arash',
                                          style: TextStyle(
                                            fontSize: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.015,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.1,
                          child: Column(
                            children: [],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.1,
                  )
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.075,
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: BoxDecoration(
                  color: Color.fromRGBO(13, 14, 35, 1),
                  borderRadius: BorderRadius.circular(40)),
              child: Row(
                children: [],
              ),
            ),
          ]);
    },
    transitionBuilder: (_, anim, __, child) {
      Tween<Offset> tween;
      if (anim.status == AnimationStatus.reverse) {
        tween = Tween(begin: Offset(-1, 0), end: Offset.zero);
      } else {
        tween = Tween(begin: Offset(1, 0), end: Offset.zero);
      }

      return SlideTransition(
        position: tween.animate(anim),
        child: FadeTransition(
          opacity: anim,
          child: child,
        ),
      );
    },
  );
}

class PlaylistState extends State<Playlist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Color.fromRGBO(13, 14, 35, 1),
            ),
            child: Column(
              children: [
                GestureDetector(
                  onTap: () {
                    showCustomDialog(context);
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(
                        vertical: MediaQuery.of(context).size.height * 0.025),
                    height: MediaQuery.of(context).size.height * 0.35,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("asset/album.jpeg"),
                          fit: BoxFit.fitWidth,
                        ),
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(30),
                            bottomRight: Radius.circular(30))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            width: MediaQuery.of(context).size.width * 0.90,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                IconButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  icon: Icon(
                                    Icons.arrow_back,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            )),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.07,
                          width: MediaQuery.of(context).size.width * 0.9,
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(13, 14, 35, 1),
                              borderRadius: BorderRadius.circular(30)),
                          child: Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(
                                    right: MediaQuery.of(context).size.width *
                                        0.05),
                                padding: EdgeInsets.only(
                                    left: MediaQuery.of(context).size.width *
                                        0.05),
                                width: MediaQuery.of(context).size.width * 0.7,
                                height:
                                    MediaQuery.of(context).size.height * 0.07,
                                child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Name artiste',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                fontSize: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.015,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            '03:15',
                                            textAlign: TextAlign.right,
                                            style: TextStyle(
                                              fontSize: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.01,
                                              color: Colors.white,
                                            ),
                                          )
                                        ],
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.7,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.03,
                                      )
                                    ]),
                              ),
                              GestureDetector(
                                onTap: () async {
                                  setState(() {
                                    az = !az;
                                  });
                                },
                                child: Container(
                                  margin: EdgeInsets.all(
                                      MediaQuery.of(context).size.width * 0.01),
                                  height:
                                      MediaQuery.of(context).size.height * 0.06,
                                  width:
                                      MediaQuery.of(context).size.height * 0.06,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(180),
                                      color: Color.fromRGBO(35, 215, 96, 1)),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      if (az != true)
                                        Icon(
                                          Icons.pause,
                                          color: Colors.white,
                                          size: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.045,
                                        )
                                      else
                                        Icon(
                                          Icons.play_circle,
                                          color: Colors.white,
                                          size: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.045,
                                        )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                    height: MediaQuery.of(context).size.height * 0.1,
                    width: MediaQuery.of(context).size.width * 0.90,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Nom de l\'album',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                  fontSize:
                                      MediaQuery.of(context).size.height * 0.03,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          child: Row(children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.5,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.035,
                                    width: MediaQuery.of(context).size.height *
                                        0.035,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage("asset/album.jpeg"),
                                          fit: BoxFit.fitWidth,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                  ),
                                  Text(
                                    'By Arash',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                        fontSize:
                                            MediaQuery.of(context).size.height *
                                                0.015,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    '*',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      fontSize:
                                          MediaQuery.of(context).size.height *
                                              0.015,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    'Album',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      fontSize:
                                          MediaQuery.of(context).size.height *
                                              0.015,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    '*',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      fontSize:
                                          MediaQuery.of(context).size.height *
                                              0.015,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    '2004',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      fontSize:
                                          MediaQuery.of(context).size.height *
                                              0.015,
                                      color: Colors.white,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.4,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  if (ez == true)
                                    IconButton(
                                        onPressed: () {
                                          setState(() {
                                            ez = !ez;
                                          });
                                        },
                                        icon: Icon(
                                          Icons.favorite_border,
                                          color: Colors.white,
                                        ))
                                  else
                                    IconButton(
                                        onPressed: () {
                                          setState(() {
                                            ez = !ez;
                                          });
                                        },
                                        icon: Icon(
                                          Icons.favorite,
                                          color: Colors.white,
                                        )),
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.linear_scale_outlined,
                                        color: Colors.white,
                                      ))
                                ],
                              ),
                            )
                          ]),
                        )
                      ],
                    )),
                Container(
                  width: MediaQuery.of(context).size.width * 0.90,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            titre1 = !titre1;
                            if (titre1 == true && titre2 == true) {
                              titre2 = false;
                            }
                            if (titre1 == true && titre3 == true) {
                              titre3 = false;
                            }
                            if (titre1 == true && titre4 == true) {
                              titre4 = false;
                            }
                            if (titre1 == true && titre5 == true) {
                              titre5 = false;
                            }
                          });
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.75,
                          child: Column(children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  ' Titre 1',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                      fontSize: titre1
                                          ? MediaQuery.of(context).size.height *
                                              0.03
                                          : MediaQuery.of(context).size.height *
                                              0.025,
                                      color: titre1
                                          ? Color.fromRGBO(35, 215, 96, 1)
                                          : Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'By Arash',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.height *
                                            0.02,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            )
                          ]),
                        ),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.linear_scale_outlined,
                            color: Colors.white,
                          ))
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(
                      vertical: MediaQuery.of(context).size.height * 0.01),
                  width: MediaQuery.of(context).size.width * 0.90,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            titre2 = !titre2;
                            if (titre2 == true && titre1 == true) {
                              titre1 = false;
                            }
                            if (titre2 == true && titre3 == true) {
                              titre3 = false;
                            }
                            if (titre2 == true && titre4 == true) {
                              titre4 = false;
                            }
                            if (titre2 == true && titre5 == true) {
                              titre5 = false;
                            }
                          });
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.75,
                          child: Column(children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  ' Titre 2',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                      fontSize: titre2
                                          ? MediaQuery.of(context).size.height *
                                              0.03
                                          : MediaQuery.of(context).size.height *
                                              0.025,
                                      color: titre2
                                          ? Color.fromRGBO(35, 215, 96, 1)
                                          : Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'By Arash',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.height *
                                            0.02,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            )
                          ]),
                        ),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.linear_scale_outlined,
                            color: Colors.white,
                          ))
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(
                      vertical: MediaQuery.of(context).size.height * 0.01),
                  width: MediaQuery.of(context).size.width * 0.90,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            titre3 = !titre3;
                            if (titre3 == true && titre1 == true) {
                              titre1 = false;
                            }
                            if (titre3 == true && titre2 == true) {
                              titre2 = false;
                            }
                            if (titre3 == true && titre4 == true) {
                              titre4 = false;
                            }
                            if (titre3 == true && titre5 == true) {
                              titre5 = false;
                            }
                          });
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.75,
                          child: Column(children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  ' Titre 3',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                      fontSize: titre3
                                          ? MediaQuery.of(context).size.height *
                                              0.03
                                          : MediaQuery.of(context).size.height *
                                              0.025,
                                      color: titre3
                                          ? Color.fromRGBO(35, 215, 96, 1)
                                          : Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'By Arash',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.height *
                                            0.02,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            )
                          ]),
                        ),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.linear_scale_outlined,
                            color: Colors.white,
                          ))
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(
                      vertical: MediaQuery.of(context).size.height * 0.01),
                  width: MediaQuery.of(context).size.width * 0.90,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            titre4 = !titre4;
                            if (titre4 == true && titre1 == true) {
                              titre1 = false;
                            }
                            if (titre4 == true && titre3 == true) {
                              titre3 = false;
                            }
                            if (titre4 == true && titre2 == true) {
                              titre2 = false;
                            }
                            if (titre4 == true && titre5 == true) {
                              titre5 = false;
                            }
                          });
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.75,
                          child: Column(children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  ' Titre 4',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                      fontSize: titre4
                                          ? MediaQuery.of(context).size.height *
                                              0.03
                                          : MediaQuery.of(context).size.height *
                                              0.025,
                                      color: titre4
                                          ? Color.fromRGBO(35, 215, 96, 1)
                                          : Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'By Arash',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.height *
                                            0.02,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            )
                          ]),
                        ),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.linear_scale_outlined,
                            color: Colors.white,
                          ))
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(
                      vertical: MediaQuery.of(context).size.height * 0.01),
                  width: MediaQuery.of(context).size.width * 0.90,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            titre5 = !titre5;
                            if (titre5 == true && titre1 == true) {
                              titre1 = false;
                            }
                            if (titre5 == true && titre3 == true) {
                              titre3 = false;
                            }
                            if (titre5 == true && titre4 == true) {
                              titre4 = false;
                            }
                            if (titre5 == true && titre2 == true) {
                              titre2 = false;
                            }
                          });
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.75,
                          child: Column(children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  ' Titre 5',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                      fontSize: titre5
                                          ? MediaQuery.of(context).size.height *
                                              0.03
                                          : MediaQuery.of(context).size.height *
                                              0.025,
                                      color: titre5
                                          ? Color.fromRGBO(35, 215, 96, 1)
                                          : Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'By Arash',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.height *
                                            0.02,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            )
                          ]),
                        ),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.linear_scale_outlined,
                            color: Colors.white,
                          ))
                    ],
                  ),
                )
              ],
            )));
  }
}
