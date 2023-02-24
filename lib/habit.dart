import 'package:flutter/material.dart';
import 'package:mulish/items.dart';
import 'goal.dart';
import 'items.dart';
import 'provider.dart';

class Habit extends StatefulWidget {
  Habit({required this.hold});
  final String hold;

  @override
  _HabitState createState() => _HabitState();
}

class _HabitState extends State<Habit> {
  MyProviser okayewd = MyProviser();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: 500,
              height: 69,
              color: Color(0xFF003249),
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.close,
                        color: Colors.white,
                        size: 25,
                      )),
                  Text(
                    'My Habits',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.w600),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: [
                  Expanded(
                      flex: 1,
                      child: TextButton(
                          style: TextButton.styleFrom(
                              backgroundColor:
                                  Color(0xFF0032491A).withOpacity(0.20)),
                          onPressed: () {},
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              'Custom',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF003249)),
                            ),
                          ))),
                  SizedBox(
                    width: 5,
                  ),
                  Expanded(
                      flex: 1,
                      child: TextButton(
                          style: TextButton.styleFrom(
                              backgroundColor:
                                  Color(0xFF0032491A).withOpacity(0.10)),
                          onPressed: () {},
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              'Compulsory',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF003249)),
                            ),
                          ))),
                ],
              ),
            ),
            ListTile(
              title: Text(widget.hold),
            ),
            Text('${context.watch<MyProviser>.collection}')

            // ListTile(
            //   title: Text(widget.hold),
            // ),
            // ListTile(
            //   title: Text(widget.hold),
            // ),
          ],
        ),
      ),
    );
  }
}
