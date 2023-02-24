import 'package:flutter/material.dart';
import 'package:mulish/collection.dart';
import 'package:mulish/provider.dart';
import 'package:mulish/task.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [ChangeNotifierProvider(create: (_) => MyProviser())],
    child: Mulish(),
  ));
}

class Mulish extends StatelessWidget {
  const Mulish({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFCCDBDC),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'Mulish',
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.w700),
            ),
            Text(
              'Lorem ipsum dolor sit amet,'
              ' consectectur adipiscing elit sed do eius',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 15,
                  color: Color(0xFF003249),
                  fontWeight: FontWeight.w400),
            ),
            Image.asset('image/image 2.png'),
            TextButton(
                style: TextButton.styleFrom(backgroundColor: Color(0xFF003249)),
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Task()));
                },
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                  child: Text(
                    'Continue',
                    style: TextStyle(color: Color(0xFFCCDBDC)),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
