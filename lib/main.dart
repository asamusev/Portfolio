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

class Desktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
      body: Row(children: <Widget>[
        Expanded(child: Info()),
        Expanded(child: InfoArea()),
      ],),
      ),
    );
  }
}

class Mobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
      body: Column(children: <Widget>[
        Expanded(flex: 3, child: Info()),
        Expanded(flex: 2, child: InfoArea()),
      ],),
      ),
    );
  }
}
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
            Text('Informatick'),
          ],);
  }
}

class InfoArea extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
              children: <Widget>[ Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
          Text('Обо мне', style: TextStyle(fontSize: 16)),
          Spacer(),
          Text('Работы', style: TextStyle(fontSize: 16)),
          Spacer(),
          Text('Контакты', style: TextStyle(fontSize: 16)),
          ],),
              ),
        Expanded(child: Center(child: Container(width: 250, child: Text('Привет, меня зовут Артем и я учусь в гимназии №1 им. А.А.Иноземцева'))))
              ],
    );
  }
}
