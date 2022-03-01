

import 'package:flutter/material.dart';
import 'package:projects/drawer.dart';

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
          child: Card(
            
           child: Column(
             children: [
               
              Image.asset('assets/download.jpg',
              width: 200,
              height: 200,
              ),
              
               Text(myName),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.all(2),
                child: TextField(
                    controller: _myController,

                  decoration: InputDecoration(
                    
                    border: OutlineInputBorder(),
                    hintText: 'some text',
                    labelText: 'Name'
                  ),
                ),
              )
             ],
           )
           
            ),
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