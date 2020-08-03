import 'package:flutter/material.dart';
import '../../data/Athelete_class.dart';
import '../../data/exercise_class.dart';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/avd.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'plot1.dart';
import 'plot2.dart';


class Exercise_PAGE extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exercise"),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
              Table(
                  children: [
                  TableRow(
                    children: <Widget>[
                      Card(
                        child: ListTile(
                          title: Text('Max Value (kg)'),
                          subtitle: Text('267,0',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 52,
                            ),
                          ),
                        ),
                      ),

                      Card(
                        child: ListTile(
                          title: Text('Current Value (kg)'),
                          subtitle: Text('74,0',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 52,
                            ),
                          ),
                        ),
                      ),

                    ]),

                  TableRow(
                    children: <Widget>[
                      Card(
                        child: ListTile(
                          title: Text('Device Name'),
                          subtitle: Text('Left',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                            ),
                          ),
                        ),
                      ),

                      Card(
                        child: ListTile(
                          title: Text('Device Name'),
                          subtitle: Text('Right',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                            ),
                          ),
                        ),
                      ),

                    ]),

                  TableRow(
                    children: <Widget>[
                      Card(
                        child: ListTile(
                          title: Text('Current Value (kg)'),
                          subtitle: Text('36.9',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                            ),
                          ),
                        ),
                      ),

                      Card(
                        child: ListTile(
                          title: Text('Current Value (kg)'),
                          subtitle: Text('37,1',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                            ),
                          ),
                        ),
                      ),

                    ]),

                  TableRow(
                    children: <Widget>[
                      Card(
                        child: ListTile(
                          title: Text('Max Value (kg)'),
                          subtitle: Text('135,1',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                            ),
                          ),
                        ),
                      ),

                      Card(
                        child: ListTile(
                          title: Text('Max Value (kg)'),
                          subtitle: Text('133,4',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                            ),
                          ),
                        ),
                      ),

                    ]),

                 ]
              ),
              Padding(
                  padding: EdgeInsets.all(16.0),
                ),
              LineChartSample2(),
              Padding(
                  padding: EdgeInsets.all(16.0),
                ),
              LineChartSample1(),

          ]
        )
      )
    );
  }
}
