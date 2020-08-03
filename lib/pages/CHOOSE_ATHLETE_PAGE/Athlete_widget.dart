import 'package:flutter/material.dart';
import '../../data/Athelete_class.dart';
import '../PROFILE_PAGE/profile.dart';
import '../EXERCISES_PAGE/exercises.dart';

class Athlete_widget extends StatelessWidget {
  final String athlete_name;

  const Athlete_widget(this.athlete_name);
  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: const EdgeInsets.only(left: 50.0, right: 40.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
              Container(
                width: 190.0,
                height: 190.0,
                decoration: new BoxDecoration(
                    shape: BoxShape.circle,
                    image: new DecorationImage(
                      fit: BoxFit.fill,
                      image: new NetworkImage(athletes[athlete_name].image)
                      )
                  )),

              Text(
                athletes[athlete_name].name,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 32
                  ),
                ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[

                  RaisedButton(
                    onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Profile_PAGE(athletes[athlete_name].name)),
                        );
                    },
                            child: Text(
                              'Profile',
                              style: TextStyle(fontSize: 20)
                            ),
                          ),

                  RaisedButton(
                    onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Exercises_PAGE()),
                        );
                    },

                            child: Text(
                              'Exercises',
                              style: TextStyle(fontSize: 20)
                            ),
                          ),

                ],
              )

        ],
      )
    );

  }
}
