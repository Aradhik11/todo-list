import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Todo extends StatefulWidget {
  const Todo({Key? key}) : super(key: key);

  @override
  State<Todo> createState() => _TodoState();
}

class _TodoState extends State<Todo> {



  List todo = [];
  late String input;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(stream: FirebaseFirestore.instance.collection('todo').snapshots(), builder: (context, snapshots){
          return ListView.builder(itemCount: todo.length, itemBuilder: (context,index){
            return Dismissible(key: Key(todo[index]), child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8)
              ),
              margin: EdgeInsets.all(8),
              elevation: 4,
              child: ListTile(
                title: Text(todo[index]),
                trailing: IconButton(onPressed: (){
                  setState(() {
                    todo.removeAt(index);
                  });
                }, icon: Icon(Icons.delete),color: Colors.red,),
              ),
            ));
          });
      }),
      floatingActionButton: FloatingActionButton(onPressed: (){
        showDialog(context: (context), builder: (BuildContext builder){
          return AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10)
            ),
            title: Text('Add todo'),
            content: TextField(
              onChanged: (newvalue){
                input = newvalue;
              },
            ),
            actions: [
              TextButton(onPressed: (){
                Navigator.pop(context);
              }, child: Text('Add'))
            ],
          );
        });
      }, child: Icon(Icons.add),),
    );
  }
}
