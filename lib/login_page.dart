import 'package:flutter/material.dart';
import 'package:projects/first.dart';

class LoginPage extends StatefulWidget {
   LoginPage({ Key? key }) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formKey=GlobalKey<FormState>();

  final _userNameController=TextEditingController();

  final _passwordController=new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child:Text('App Bar'),
        ),
      ),
body: Stack(
  fit: StackFit.expand,
  children: [Image.asset('assets/download.jpg',fit: BoxFit.cover,
  color: Colors.black.withOpacity(0.7),
  colorBlendMode:BlendMode.darken,
  ),
  
  Center(
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
      child: Form(
        key: formKey,
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                TextFormField(
                  controller:_userNameController,
                  keyboardType:TextInputType.emailAddress,
                  decoration: InputDecoration(hintText: "Enter  Name",labelText: "User Name"),
                ),
        
                 TextFormField(
                  controller:_passwordController,
                  keyboardType:TextInputType.text,
                  obscureText: true,
                  decoration: InputDecoration(hintText: "Enter  Password",labelText: "password"),
                ),
              
              ElevatedButton(onPressed: (
                
              ){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>First()));

              }, child: const Text("Submit"),
              style:ElevatedButton.styleFrom(
                primary: Colors.green,
                onPrimary: Colors.amber,
                elevation: 10,  // Elevation
                shadowColor: Colors.amber,
                side: BorderSide(color: Colors.red,width: 2)
              )
              
              )
              ],
            ),
          ),
        ),
      ),
),
    ),
  ),
  
  ],
)

    );
  }
}