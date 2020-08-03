import 'package:flutter/material.dart';
import 'Athlete_widget.dart';


class Choose_Athlete_PAGE extends StatefulWidget {
  Choose_Athlete_PAGE({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _Choose_Athlete_PAGEState createState() => _Choose_Athlete_PAGEState();
}

class _Choose_Athlete_PAGEState extends State<Choose_Athlete_PAGE> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Choose Athlete'),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 2,
        color: Colors.black,
        child: Container(height: 30.0),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.pink,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: Center(
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Athlete_widget("Rafael Antunes"),
                    Athlete_widget("Helder Ferreira"),

                  ],
                ),
              ),
            ),
    );
  }
}
