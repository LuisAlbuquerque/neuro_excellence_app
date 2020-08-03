import 'package:flutter/material.dart';
import '../../data/Athelete_class.dart';
import '../../data/exercise_class.dart';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/avd.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../EXERCISE_PAGE/exercise.dart';

class Exercises_PAGE extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exercises"),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: GridView.count(
            crossAxisCount: 2 ,
            children: List.generate(exercises.length,(index){
              return Container(
                child: Card(
                  color: Colors.white,
                  child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Exercise_PAGE()),
                        );
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget> [
                          SvgPicture.network(exercises[ index ].image,
                              width: 120.0,
                          ),
                          Text(exercises[ index ].name,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                            ),
                          ),
                        ]
                      ),
                    ),
                ),
              );
            }),
          )
      )

    );
  }
}
