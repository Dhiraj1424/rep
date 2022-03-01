

import 'package:flutter/material.dart';
import 'package:projects/drawer.dart';
import 'package:projects/name_card_widget.dart';

class First extends StatefulWidget {
  const First({ Key? key }) : super(key: key);

  @override
  State<First> createState() => _FirstState();
}

class _FirstState extends State<First> {

  var myName="My";
  TextEditingController _myController = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SingleChildScrollView(
          child: NameCardWidget(myName: myName, myController: _myController),
        ),
          
      ),
      
        
        floatingActionButton: FloatingActionButton(
          
          onPressed: (){
            myName=_myController.text;
            setState(() {
              
            });
          },


        
        clipBehavior:Clip.antiAliasWithSaveLayer,
        
        child: const Icon(Icons.send),
        
        ),
        
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    


      drawer: Mydrawer(),
    );
  }
}

