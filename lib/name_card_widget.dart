import 'package:flutter/material.dart';


class NameCardWidget extends StatelessWidget {
  const NameCardWidget({
    Key? key,
    required this.myName,
    required TextEditingController myController,
  }) : _myController = myController, super(key: key);

  final String myName;
  final TextEditingController _myController;

  @override
  Widget build(BuildContext context) {
    return Card(
      
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
     
      );
  }
}