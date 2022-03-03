

// import 'dart:ffi';
// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:projects/drawer.dart';
// import 'package:projects/name_card_widget.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class First extends StatefulWidget {
  const First({ Key? key }) : super(key: key);

  @override
  State<First> createState() => _FirstState();
}

class _FirstState extends State<First> {
  var Url='https://jsonplaceholder.typicode.com/photos';
  var data;
  // var myName="My";
  // TextEditingController _myController = TextEditingController();
  
  @override
  void initState(){
    super.initState();
    fetchData();
  }

  fetchData()async{
    var res = await http.get(Uri.parse(Url));
    data=jsonDecode(res.body);
    setState(() {
      
    });
  }

@override
  void dispose(){
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: (){
            Navigator.pop(context);
          }, icon:Icon( Icons.exit_to_app))
        ],
      ),
     
      
        
        floatingActionButton: FloatingActionButton(
          
          onPressed: (){
            // myName=_myController.text;
            // setState(() {
              
            // });
          },


        
        clipBehavior:Clip.antiAliasWithSaveLayer,
        
        child: const Icon(Icons.send),
        
        ),
        
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    
        

      body: data!=null?ListView.builder(
        itemCount: data.length,
        itemBuilder: (context,index){
          return ListTile(
            title: Text(data[index]["title"]),
            subtitle: Text("Id: ${data[index]['id']}"),
            leading: Image.network(data[index]['url'])
          );
        }
      )
      :Center(
        child: CircularProgressIndicator()
      ),


      drawer: Mydrawer(),
    );
  }
}

