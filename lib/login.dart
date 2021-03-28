import 'package:flutter/material.dart';
import 'package:poj/register.dart';
import 'package:poj/student.dart';

void main() => runApp(FirstPage());

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  'images/logo.png',
                  width: 100,
                ),
                Text('ระบบตรวจสอบผลการเรียน', style: TextStyle(fontSize: 16)),
                Text('วิทยาลียอาชีวศึกษานครปฐม',
                    style: TextStyle(fontSize: 16)),
                Padding(
                  padding: EdgeInsets.all(10),
                ),
                TextField(
                  style: Theme.of(context).textTheme.bodyText1,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    labelText: 'Usernaame',
                    icon: Icon(Icons.person),
                  ),
                  keyboardType:
                      TextInputType.emailAddress, //ให้ขึ้นคีบอร์ดที่มี@
                ),
                TextField(
                  style: Theme.of(context).textTheme.bodyText1,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    icon: Icon(Icons.vpn_key),
                  ),
                  keyboardType:
                      TextInputType.emailAddress, //ให้ขึ้นคีบอร์ดที่มี@
                  obscureText: true,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Builder(
                          builder: (context)=>RaisedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context)=>StudentPage())
                              );
                            },
                            child: Text('Login'),
                            color: Colors.blue,
                          ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10),
                      ),
                      Builder( //ใส่ให้context มารองรับ
                        builder: (context)=>RaisedButton(
                          onPressed: () {
                            Navigator.push( //push เข้าหน้าใหม่
                              context,
                              MaterialPageRoute(builder: (context)=>RegisterPage())
                            );
                          },
                          child: Text('Register'),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
