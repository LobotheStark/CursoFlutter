import 'package:flutter/material.dart';


class AvatarPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: <Widget>[
          Container(
            padding: EdgeInsets.all(5.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://i.pinimg.com/564x/5a/b0/67/5ab067423b67ce79fbbc88951523267b.jpg'),
              radius: 25.0,
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text('FO'),
              backgroundColor: Colors.green,
            ),
          )
        ],
        
      ),
      body: Center(
        child: FadeInImage(
          image: NetworkImage('https://e.radio-studio92.io/normal/2019/11/15/523252_864504.jpg'),
          placeholder: AssetImage('assets/jar-loading.gif'),
          fadeInDuration: Duration(milliseconds: 200),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.backspace),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}