import 'package:flutter/material.dart';
import 'package:mulish/task.dart';
import 'items.dart';
import 'habit.dart';
import 'todo.dart';
import 'provider.dart';

enum Option{
  once,
  everyday,
  week,
  repeat
}

class Goal extends StatefulWidget {
  @override
  _GoalState createState() => _GoalState();
}

class _GoalState extends State<Goal> {
   Option? _check = Option.once;
   Lead lead = Lead(label: '');


   List option = [
     'Once',
     'Everyday',
     'Some days in the week',
     'Repeat'
   ];
   bool remind = false;
   int days = DateTime.daysPerWeek;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
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
                    Text('Create new habit',style: TextStyle(color: Colors.white,fontSize: 25),),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                  autofocus: true,
                  onChanged: (val){
                    setState(() {
                      lead.label = val;
                    });
                  },
                  decoration: InputDecoration(
                    hintText: 'Enter a title',
                  ),
                ),
              ),
              SizedBox(height: 50,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('How often did you want to reach this goal?', style: TextStyle(color: Color(0xFF003249),fontSize: 15,fontWeight: FontWeight.w700),),
              ),
              Row(
                children: [
                  Radio<Option>(value: Option.once, groupValue: _check,activeColor: Color(0xFF003249), onChanged: (Option? value){setState(() {_check = value;});}),
                  Text(option[0])
                ],
              ),
              Row(
                children: [
                  Radio<Option>(value: Option.everyday, groupValue: _check, activeColor: Color(0xFF003249), onChanged: (Option? value){setState(() {_check = value;});}),
                  Text(option[1])
                ],
              ),
              Row(
                children: [
                  Radio<Option>(value: Option.week, groupValue: _check, activeColor: Color(0xFF003249), onChanged: (Option? value){setState(() {_check = value;});}),
                  Text(option[2])
                ],
              ),
              Row(
                children: [
                  Radio<Option>(value: Option.repeat, groupValue: _check, activeColor: Color(0xFF003249), onChanged: (Option? value){setState(() { _check = value;});}),
                  Text(option[3])
                ],
              ),
              // if(Option.once == true){
              // }else{
              //   colon(context),
              // }
              if(_check != Option.once)
                colon(context),

              Row(
                children: [
                  Checkbox(value: remind, onChanged: (newValue){
                      setState(() {
                        remind =  newValue!;
                      });
                  }),
                  Text('Reminder')
                ],
              ),
              Center(child: TextButton(onPressed: () {
                setState(() {
                  print(lead.label);
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Habit(hold: lead.label)));
                });
              },style: TextButton.styleFrom(backgroundColor: Color(0xFF003249)), child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Create goal',style: TextStyle(color: Colors.white),),
              )))
            ],
          ),
        ),
      ),
    );
  }
}

Widget colon(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('How did you want to reach this goal?'),
        Row(
          children: [
            Text('Start date:'),
            SizedBox(width: 200,),
            TextButton(onPressed: (){}, style: TextButton.styleFrom(backgroundColor: Color(0xFFDB3A34).withOpacity(0.10)), child: Row(
              children: [
                Text('Today'),
                IconButton(onPressed: (){}, icon: Icon(Icons.arrow_drop_down))
              ],
            ))
          ],
        ),
        Row(
          children: [
            Text('Start date:'),
            SizedBox(width: 200,),
            TextButton(onPressed: (){
              DatePickerMode.day;
            },style: TextButton.styleFrom(backgroundColor: Color(0xFF0A8754).withOpacity(0.10), ), child: Row(
              children: [
                Text('Today'),
                IconButton(onPressed: (){}, icon: Icon(Icons.arrow_drop_down))
              ],
            ),
            ),
          ],
        ),
      ],
    ),
  );
}
// List<Widget> Items = [
//   Column(
//     crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text('How did you want to reach this goal?'),
//         Row(
//           children: [
//             Text('Start date:'),
//             SizedBox(width: 200,),
//             TextButton(onPressed: (){}, style: TextButton.styleFrom(backgroundColor: Color(0xFFDB3A34).withOpacity(0.10)), child: Row(
//               children: [
//                 Text('Today'),
//                 IconButton(onPressed: (){}, icon: Icon(Icons.arrow_drop_down))
//               ],
//             ))
//           ],
//         ),
//         Row(
//           children: [
//             Text('Start date:'),
//             SizedBox(width: 200,),
//             TextButton(onPressed: (){
//               DatePickerMode.day;
//             },style: TextButton.styleFrom(backgroundColor: Color(0xFF0A8754).withOpacity(0.10), ), child: Row(
//               children: [
//                 Text('Today'),
//                 IconButton(onPressed: (){}, icon: Icon(Icons.arrow_drop_down))
//               ],
//             ),
//             ),
//           ],
//         ),
//       ],
//   )
// ];