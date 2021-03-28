import 'package:flutter/material.dart';

void main() => runApp(StudentPage());

class StudentPage extends StatefulWidget {
  @override
  _StudentPageState createState() => _StudentPageState();
}

class _StudentPageState extends State<StudentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Student'),
      ),
      body: Center( //สร้างปุ่มย้อนกลับ
        child: ElevatedButton(
          onPressed: (){
            Navigator.pop(context);//pop =ออก
        },
            child: Text("Back"),
        ),
      ),
    );
  }
}

