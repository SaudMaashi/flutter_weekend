import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_weekend/constants/constant_lists.dart';
import 'package:flutter_weekend/screens/calendar_screens.dart';
import 'package:flutter_weekend/screens/clubs_screen.dart';
import 'package:flutter_weekend/screens/food_screen.dart';
import 'package:flutter_weekend/screens/grades_screen.dart';
import 'package:flutter_weekend/screens/help_sessions_screen.dart';
import 'package:flutter_weekend/screens/important_contacts.dart';
import 'package:flutter_weekend/screens/qr_scanner_screen.dart';
import 'package:flutter_weekend/screens/schedule_screen.dart';
import 'package:flutter_weekend/screens/suggestions_screen.dart';
import 'package:flutter_weekend/screens/to_do_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: const Row(
          children: [
            Text(
              "Welcome",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(width: 7),
            Text(
              "Saud Maashi",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 160,
                childAspectRatio: 4 / 4,
                crossAxisSpacing: 20,
                mainAxisSpacing: 24),
            itemCount: homeGridList.length,
            itemBuilder: (BuildContext context, index) {
              return InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: ((context) {
                        if (homeGridList[index]["navigation"] == "schedule") {
                          return const Schedule();
                        } else if (homeGridList[index]["navigation"] ==
                            "grades") {
                          return const Grades();
                        } else if (homeGridList[index]["navigation"] ==
                            "todo") {
                          return const ToDoScreen();
                        } else if (homeGridList[index]["navigation"] ==
                            "attendance") {
                          return const QRScreen();
                        } else if (homeGridList[index]["navigation"] ==
                            "calender") {
                          return const CalendarScreen();
                        } else if (homeGridList[index]["navigation"] ==
                            "contacts") {
                          return const ImportantContacts();
                        } else if (homeGridList[index]["navigation"] ==
                            "suggestions") {
                          return const Suggestions();
                        } else if (homeGridList[index]["navigation"] ==
                            "food") {
                          return const FoodScreen();
                        } else if (homeGridList[index]["navigation"] ==
                            "help") {
                          return const HelpSessionPage();
                        } else {
                          return const ClubsNews();
                        }
                      }),
                    ),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset:
                            const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                    borderRadius: BorderRadius.circular(24),
                    color: const Color.fromARGB(255, 255, 255, 255),
                  ),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          width: 40,
                          'assets/${homeGridList[index]['icon']}.svg',
                          // ignore: deprecated_member_use
                          color: homeGridList[index]['color'] as Color,
                        ),
                        Text(
                          textAlign: TextAlign.center,
                          homeGridList[index]['label'] as String,
                          style: TextStyle(
                              color: homeGridList[index]['color'] as Color,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
