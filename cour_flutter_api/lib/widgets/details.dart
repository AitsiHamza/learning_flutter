import 'dart:ui';

import 'package:cour_flutter_api/pages/User.dart';
import 'package:flutter/material.dart';

import 'package:glassmorphism/glassmorphism.dart';

class DetailPage extends StatelessWidget {
  final User user;

  DetailPage(this.user);

  late double _height;
  late double _width;

  @override
  Widget build(BuildContext context) {
    _height = MediaQuery.of(context).size.height;
    _width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          title: Text('Return'),
        ),
        body: Container(
          height: _height,
          width: _width,
          decoration: const BoxDecoration(
            gradient: RadialGradient(
              colors: [Colors.green, Colors.blue, Colors.orange, Colors.pink],
              stops: [0.2, 0.5, 0.7, 1],
              center: Alignment(0.1, 0.3),
              focal: Alignment(-0.1, 0.6),
              focalRadius: 2,
            ),
          ),

          // building the layout
          child: Center(
            child: GlassmorphicContainer(
              height: _height * 0.5,
              width: _width * 0.9,
              borderRadius: 15,
              blur: 15,
              alignment: Alignment.center,
              border: 2,
              linearGradient: LinearGradient(colors: [
                Colors.white.withOpacity(0.2),
                Colors.white38.withOpacity(0.2)
              ], begin: Alignment.topLeft, end: Alignment.bottomRight),
              borderGradient: LinearGradient(colors: [
                Colors.white24.withOpacity(0.2),
                Colors.white70.withOpacity(0.2)
              ]),
              child: Container(
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                    blurRadius: 16,
                    spreadRadius: 16,
                    color: Colors.black.withOpacity(0.1),
                  )
                ]),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15.0),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: 20.0,
                      sigmaY: 20.0,
                    ),
                    child: Container(
                        height: _height * 0.7,
                        width: _width * 0.9,
                        decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(26.0),
                            border: Border.all(
                              width: 1.5,
                              color: Colors.white.withOpacity(0.2),
                            )),
                        child: Padding(
                          padding: EdgeInsets.all(26.0),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    user.name,
                                    style: TextStyle(
                                      color: Colors.white.withOpacity(0.75),
                                    ),
                                  ),
                                  Icon(
                                    Icons.accessibility,
                                    color: Colors.white.withOpacity(0.75),
                                  )
                                ],
                              ),
                              Spacer(),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  CircleAvatar(backgroundImage:  NetworkImage(user.picture),),
                                  Icon(
                                    Icons.accessibility,
                                    color: Colors.white.withOpacity(0.75),
                                  )
                                ],
                              ),
                              Spacer(),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    user.email,
                                    style: TextStyle(
                                      color: Colors.white.withOpacity(0.75),
                                    ),
                                  ),
                                ],
                              ),
                              Spacer(),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    user.phone,
                                    style: TextStyle(
                                      color: Colors.white.withOpacity(0.75),
                                    ),
                                  ),
                                  Icon(
                                    Icons.add_call,
                                    color: Colors.white.withOpacity(0.75),
                                  )
                                ],
                              )
                            ],
                          ),
                        )),
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}
