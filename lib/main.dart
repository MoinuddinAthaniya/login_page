import 'package:flutter/material.dart';
import 'package:login_page/sign_up.dart';


void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  Widget build(BuildContext context){
    return MaterialApp(
      title: "User Login",
      home: sign_in(),
    );
  }

}

class sign_in extends StatelessWidget {
  const sign_in({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[

              Text(

                "Login",
                style: TextStyle(fontSize: 20,color: Colors.black87),
              ),


              CircleAvatar(

                backgroundImage: AssetImage("image/login_1.jpg"),
                radius: 80.88,
              ),

              Container(
                margin: EdgeInsets.all(20),
                child: TextFormField(
                  onChanged: (value) {

                  },
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.phone),
                    hintText: "Phone",
                    labelText: "Enter Phone:",
                  ),
                ),
              ),

              Container(
                margin: EdgeInsets.all(20),
                child: TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.password),
                    hintText: "Password",
                    labelText: "Enter Password:",
                  ),
                ),
              ),

              ElevatedButton(
                onPressed: () => {},
                child: Text("Sign In"),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.blueAccent),
              ),

              ElevatedButton(
                onPressed: () {
                  _navigateToSignUp(context);
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.purpleAccent),
                child: Text("Sign Up"),
              ),


            ],
          ),
        ),
      ),
    );

  }

  void _navigateToSignUp(BuildContext context){
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => sign_up(),));
  }

}

class NewScreen extends StatelessWidget {
  const NewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("This is the next page...!"),
      ),
    );
  }
}