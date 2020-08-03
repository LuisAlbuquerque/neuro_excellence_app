import 'package:flutter/material.dart';
import 'pie_chart.dart';
import 'cal.dart';
import '../../data/Athelete_class.dart';
import '../EXERCISES_PAGE/exercises.dart';



class Profile_PAGE extends StatelessWidget {
  String name;

  Profile_PAGE(this.name);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
        backgroundColor: Colors.black,
      ),
      body: ListView(
          padding: const EdgeInsets.all(8),
          children: <Widget>[
            Card(
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Container(
                        width: 120.0,
                        height: 120.0,
                        decoration: new BoxDecoration(
                            shape: BoxShape.circle,
                            image: new DecorationImage(
                              fit: BoxFit.fill,
                              image: new NetworkImage(athletes[name].image)
                              )
                          )),

                          Padding(padding: EdgeInsets.only(top: 10)),

                          Text(name,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey[700],
                            )
                          ),
                      ]
                  ),

                  RaisedButton(
                    color: Colors.black,
                    onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Exercises_PAGE()),
                        );
                    },
                            child: Text(
                              'Exercises',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              )
                            ),
                          ),

                ]
              ),
            ),
            ),

            Center (
              child: Text("Personal information",
                   style: TextStyle(
                      fontSize: 20,
                    )
              ),
            ),

            Card (
              color: Colors.black,
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Center(
                  child: Table(
                  children: [
                  TableRow(
                    children: <Widget>[
                      Text("Age",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                          color: Colors.white,
                        ),
                      ),
                      Text("${athletes[name].age}",
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.white,
                        ),
                      ),
                    ]),

                            TableRow(
                              children: <Widget>[
                                Text("Height",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 22,
                                    color: Colors.white,
                                  ),
                                ),
                                Text("${athletes[name].height}",
                                  style: TextStyle(
                                    fontSize: 22,
                                    color: Colors.white,
                                  ),
                                ),
                              ]),

                            TableRow(
                              children: <Widget>[
                                Text("Gen",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 22,
                                    color: Colors.white,
                                  ),
                                ),
                                Text("${(athletes[name].gen == Gen.male)?'male':'female'}",
                                  style: TextStyle(
                                    fontSize: 22,
                                    color: Colors.white,
                                  ),
                                ),
                              ]),
                          ]
                        ),
                    ),
                  ),
                 ),

            Center (
              child: Text("Calendar",
                   style: TextStyle(
                      fontSize: 20,
                    )
              ),
            ),
            BarChartSample3(),
            PieChartSample2(),

          ],
        )

    );
  }
}
