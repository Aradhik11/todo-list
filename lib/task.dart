import 'package:flutter/material.dart';
import 'package:mulish/goal.dart';
import 'settings.dart';
import 'goal.dart';
class Task extends StatefulWidget {
  // Task({required this.data});
  // String data;

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {


bool value1 = false;
bool value2 = false;
bool value3 = false;
bool value4 = false;
bool value5 = false;
List<Todo> todo = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFCCDBDC),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: Color(0xFF003249),
                width: 500,
                height: 99,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Today',style: TextStyle(color: Colors.white,fontSize:18,fontWeight: FontWeight.w700),),
                      Row(
                        children: [
                          Text('25 August 2021',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700),),
                          IconButton(onPressed: (){}, icon: Icon(Icons.arrow_drop_down,color: Colors.white,)),
                          Padding(
                            padding: const EdgeInsets.only(left: 165),
                            child: IconButton(onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => Settings()));
                            }, icon: Icon(Icons.settings,color: Colors.white,)),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                margin: const EdgeInsets.only(bottom: 8),
                color: Color(0xFFCCDBDC).withOpacity(0.65),
                child: ListTile(
                  title: Text('Compulsory Task',style: TextStyle(color: Color(0xFF003249),fontWeight: FontWeight.w700),),
                  trailing: Icon(Icons.push_pin_rounded,color: Color(0xFF003249),),
              ),),
              Todo('5 daily prayers', Checkbox(value: value1, onChanged: (newValue){
                setState(() {
                   value1 = newValue!;
                });
              })
              ),
              Todo('3 daily duas',Checkbox(value: value2,onChanged: (newValue){
                setState(() {
                  value2 = newValue!;
                });
              },) ),
              Todo('Read suratul-khaf ',Checkbox(value: value3 ,onChanged: (newValue){
                setState(() {
                  value3 = newValue!;
                });
              },) ),

              SizedBox(height: 40,),
              Card(
                margin: EdgeInsets.only(bottom: 8),
                color: Color(0xFFCCDBDC).withOpacity(0.65),
                child: ListTile(
                  title: Text('Custom Task.', style: TextStyle(color: Color(0xFF003249),fontWeight: FontWeight.w700),),
                ),),
              Todo('',Checkbox(value: value4, onChanged: (newValue){
                setState(() {
                  value4 = newValue!;
                });
              }) ),
              Todo('',Checkbox(value: value5 , onChanged: (newvalue){
                setState(() {
                  value5 = newvalue!;
                });
              }) ),
              // Todo('',Checkbox(value: value5 , onChanged: (newValue){
              //   setState(() {
              //     value5 = newValue!;
              //   });
              // }) ),
              // Todo('',Checkbox(value: value5, onChanged: (newValue){
              //   setState(() {
              //     value5 = newValue!;
              //   });
              // }) ),
              Padding(
                padding: const EdgeInsets.only(left: 250,top: 50,bottom:50 ),
                child: FloatingActionButton(
                  backgroundColor: Color(0xFF003249),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder:(context) => Goal()));
                  },
                  child: Icon(Icons.add),),
              )
            ],
          ),
        ),
      ),
    );
  }
}
class Todo extends StatelessWidget {
  Todo(this.text,this.icon);
  String text;
  Widget  icon;
  // Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(bottom: 2),
      color: Color(0xFFCCDBDC).withOpacity(0.88),
      child: ListTile(
        title: Text(text),
        trailing: icon,
      ),
    );

  }
}
// Widget buildCheckBox(){
//   bool value = false;
//   return CheckboxListTile(title:Text('5 daily prayer'),value: value, onChanged: (newValue){});
//
// }
// buildCheckBox(),
// Divider(height: 0,),
// buildCheckBox(),
// Divider(),
// buildCheckBox(),
// Divider(),
// buildCheckBox(),

