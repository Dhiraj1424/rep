import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Mydrawer extends StatelessWidget {
  const Mydrawer({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.redAccent,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
        Container(
         
        ),
       UserAccountsDrawerHeader(accountName: Text('Bishal'), accountEmail: Text('abc@gmail.com'),
       currentAccountPicture: CircleAvatar(backgroundImage: NetworkImage(''))
       ),
        ListTile(
          leading: Icon(Icons.edit),
          title: Text('this is text'),
        )
      ],),

    );
  }
}