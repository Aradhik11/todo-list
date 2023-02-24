import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  const Result({Key? key}) : super(key: key);

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
                  Text('Today\'s result',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,color: Colors.white),),
                ],
              ),
            ),
            Image.asset('image/img.png'),
            Text('Congratulations!',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700,color: Color(0xFF003249)),),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Text('You completed 100% of your goals for the day. Keep up the good work!',style: TextStyle(fontSize: 17),),
            ),
            Text('Summary of your goals',style: TextStyle(fontSize: 15),),
            SizedBox(height: 25,),
            Text('5 daily prayers -  100%', style: TextStyle(fontSize: 15),),
            SizedBox(height: 20,),
            Text('5 daily prayers -  100%', style: TextStyle(fontSize: 15),),
            SizedBox(height: 20,),
            Text('5 daily prayers -  100%', style: TextStyle(fontSize: 15),),
            SizedBox(height: 20,),
            Text('5 daily prayers -  100%', style: TextStyle(fontSize: 15),),
            SizedBox(height: 50,),
            Image.asset('image/img_1.png'),
            Text('Share on whathsapp')
          ],
        ),
      ),
    );
  }
}
