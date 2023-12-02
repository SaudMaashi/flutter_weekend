import 'package:flutter/material.dart';
import 'package:flutter_weekend/constants/colors.dart';
import 'package:flutter_weekend/constants/constant_lists.dart';

class Grades extends StatefulWidget {
  const Grades({super.key});

  @override
  State<Grades> createState() => _GradesState();
}

class _GradesState extends State<Grades> {
  int? term;
  double? gpa;
  Color? gpaColor;

  @override
  void initState() {
    super.initState();
    term = grades.keys.first;
    gpa = grades[term]?['gpa'];
    gpaColor = getGpaColor(gpa);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Grades',
          style: TextStyle(color: Colors.black, fontSize: 24),
        ),
        backgroundColor: colors['secondary'],
      ),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.only(top: 30, right: 30),
          child: gpaBanner(),
        ),
        const SizedBox(
          height: 30,
        ),
        Expanded(
          child: ListView.builder(
            itemCount: grades[term]?['courses'].length,
            itemBuilder: (context, index) {
              return card(index, term);
            },
          ),
        )
      ]),
    );
  }

  /// Returns a [Container] that represents the
  Container gpaBanner() {
    return Container(
      decoration: BoxDecoration(
          color: colors['secondary'],
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 5),
            )
          ]),
      alignment: Alignment.topLeft,
      child: Padding(
        padding: EdgeInsets.all(8),
        child: Row(
          children: [
            SizedBox(
              width: 15,
            ),
            Column(
              children: [
                Text(
                  'GPA',
                  style: TextStyle(
                    color: gpaColor,
                    fontSize: 40,
                  ),
                ),
                Text(
                  gpa!.toStringAsFixed(2),
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 40,
                  ),
                )
              ],
            ),
            SizedBox(
              width: 40,
            ),
            Expanded(
              child: Column(
                children: [
                  DropdownButton(
                      value: term,
                      items: grades.keys.map<DropdownMenuItem<int>>((e) {
                        return DropdownMenuItem(
                          value: e,
                          child: Text('Term $e'),
                        );
                      }).toList(),
                      onChanged: (int? newTerm) {
                        setState(() {
                          term = newTerm!;
                          gpa = grades[newTerm]?['gpa'];
                          gpaColor = getGpaColor(gpa);
                        });
                      }),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Term $term',
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Color getGpaColor(gpa) {
    if (gpa < 3) {
      return Colors.black;
    }
    if (gpa <= 3.5) {
      return Color.fromARGB(255, 205, 128, 50);
    }
    if (gpa <= 3.75) {
      return Color.fromARGB(255, 192, 192, 192);
    } else
      return Color.fromARGB(255, 255, 217, 0);
  }

  Card card(index, term) {
    return Card(
      color: Colors.white,
      elevation: 15,
      margin: EdgeInsets.only(top: 15, bottom: 15, right: 30, left: 30),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Text(
              grades[term]?['courses'][index]['course'],
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              width: 30,
            ),
            Expanded(
                child: Column(
              children: [
                Text(
                  'Midterm: ${grades[term]?['courses'][index]['Midterm']}',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: colors['tertiary'],
                ),
                Text(
                  'Final: ${grades[term]?['courses'][index]['Final']}',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}
