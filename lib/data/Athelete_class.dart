import 'package:flutter/material.dart';

enum Gen {
  male,
  women
}

class Athlete {

  final String   name;
  final String   image;
  final Gen      gen;
  final int      age;
  final int      height;

  // ...

  Athlete({
      this.name,
      this.image,
      this.gen,
      this.age,
      this.height

  });
}


Map<String, Athlete> athletes = {

  "Rafael Antunes" : Athlete(
                      name:  "Rafael Antunes",
                      image: "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSkHp1Kqv4d9adpi-KOLDvNRlqcBaSuhzQIDQ&usqp=CAU",
                      gen:    Gen.male,
                      age:    23,
                      height: 176
                    ),

  "Helder Ferreira" : Athlete(
                      name:  "Helder Ferreira",
                      image: "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQA7uep6yuwlA1h5LAbgLk2aAetLct1ONrqjQ&usqp=CAU",
                      gen:    Gen.male,
                      age:    25,
                      height: 183
                    )

};


