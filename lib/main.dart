import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints) {
        if(constraints.maxWidth > 700) return Desktop();
        return Mobile();
      },),
    );
  }
}

class Desktop extends StatefulWidget {
  @override
  _DesktopState createState() => _DesktopState();
}

class _DesktopState extends State<Desktop> {
  Widget body = About();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
      body: Row(children: <Widget>[
        Expanded(child: Info()),
        Expanded(child: Container(
          child: Column(
            children: <Widget>[
              Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
            FlatButton(
              child: Text('Обо мне', style: TextStyle(fontSize: 16)), 
              onPressed: () {setState(() {
                              body = About(); 
                            }); },),
            Spacer(),
            FlatButton(
              child: Text('Работы', style: TextStyle(fontSize: 16)),
             onPressed: () {setState(() {
                            body = Work(); 
                            }); },),
            Spacer(),
            FlatButton(
              child: Text('Контакты', style: TextStyle(fontSize: 16)),
              onPressed: () {setState(() {
                            body = Contact(); 
                            }); },),
            ],),
              body,
            ],
          ),
        )),
      ],),
      ),
    );
  }
}

class Mobile extends StatefulWidget {
  @override
  _MobileState createState() => _MobileState();
}

class _MobileState extends State<Mobile> {
  Widget body = About();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
      body: Column(children: <Widget>[
        Expanded(child: Info()),
        Expanded(child: Container(
          child: Column(
            children: <Widget>[
              Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
            FlatButton(
              child: Text('Обо мне', style: TextStyle(fontSize: 16)), 
              onPressed: () {setState(() {
                              body = About(); 
                            }); },),
            Spacer(),
            FlatButton(
              child: Text('Работы', style: TextStyle(fontSize: 16)),
             onPressed: () {setState(() {
                            body = Work(); 
                            }); },),
            Spacer(),
            FlatButton(
              child: Text('Контакты', style: TextStyle(fontSize: 16)),
              onPressed: () {setState(() {
                            body = Contact(); 
                            }); },),
            ],),
              body,
         ],
          ),
        )),
      ],),
      ),
    );
  }
}
///change
class Info extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
            radius: 130,
            backgroundImage: NetworkImage("https://basik.ru/images/third_eye/short.jpg"),
            ),
            Text('Artem Samusev',style: TextStyle(fontSize: 26, fontWeight: FontWeight.w300),),
            Text('ITG Specialists'),
          ],);
  }
}


class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
          child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end, 
        children: <Widget>[
Expanded(child: Center(child: Container(width: 250, child: Text('Привет, меня зовут Артем и я учусь в гимназии №1 им. А.А.Иноземцева. Я перешел в физмат класс, со мной можно связаться по почте *********; и по телефону *******.')))),
        ],
        ),
      ),
    );
  }
}

class Work extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
          child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end, 
        children: <Widget>[
Expanded(child: Center(child: Container(width: 250, child: Text("Work")))),
        ],
        ),
      ),
    );
  }
}


class Contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
          child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end, 
        children: <Widget>[
Expanded(child: Center(child: Container(width: 250, child: Text('Contact')))),
        ],
        ),
      ),
    );
  }
}

