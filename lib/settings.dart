import 'package:flutter/material.dart';
import 'habit.dart';
import 'items.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
        children: [
          Container(
            color: Color(0xFF003249),
            width: 500,
            height: 69,
            child: Row(
              children: [
                IconButton(onPressed: (){
                  Navigator.pop(context);
                }, icon: Icon(Icons.close),iconSize: 25,color: Colors.white,),
                Text('Settings',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,color: Colors.white),),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Image.asset('image/img_2.png',height: 20,),
                SizedBox(width: 10,),
                Text('My Habit'),
                SizedBox(width: 233,),
                IconButton(onPressed: (){
                  // Lead lead = Lead(label: '');
                  // Navigator.push(context, MaterialPageRoute(builder: (context) => Habit()));
                }, icon: Icon(Icons.arrow_right)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(Icons.share),
                SizedBox(width: 10,),
                Text('Share this app'),
                SizedBox(width: 200,),
                IconButton(onPressed: (){}, icon: Icon(Icons.arrow_right)),
              ],
            ),
          )
        ],
    ),
      ),
    );
  }
}
