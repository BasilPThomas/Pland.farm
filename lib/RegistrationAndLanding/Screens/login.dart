import 'package:flutte_app/HomePage/homePage.dart';
import 'package:flutte_app/RegistrationAndLanding/Screens/signupPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutte_app/RegistrationAndLanding/Screens/otp.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _nameController = TextEditingController();
  TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/first.jpg"),
                fit: BoxFit.fill)),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  margin: EdgeInsets.only(top: 60),
                  child: Image.asset('images/image.png', height: 90,)),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                height: 430,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(27)),
                  color: Colors.white.withOpacity(0.5),
                ),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 30,),
                      child: Column(
                        children: [
                          Text(
                            "WELCOME BACK",
                            style: TextStyle(color: Colors.green[900], fontSize: 30, fontWeight: FontWeight.bold,),),
                          Text(
                            "Sign In with your Mobile number",
                            style: TextStyle( fontWeight: FontWeight.bold,),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 35, right: 10, left: 10),
                      child: TextField(
                        controller: _nameController,
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                            fillColor: Colors.white,
                            hintText: "Enter your name",
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                    Radius.circular(30.0)))
                        ),),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20, right: 10, left: 10),
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                  Radius.circular(30.0))),
                          hintText: 'Phone Number',
                          prefix: Padding(
                            padding: EdgeInsets.all(2),
                            child: Text('+91'),
                          ),
                        ),
                        maxLength: 10,
                        keyboardType: TextInputType.number,
                        controller: _controller,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) =>
                                OTPScreen(_controller.text)
                          // HomePage()
                        ));
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        decoration: BoxDecoration(
                            color: Colors.green[400],
                            borderRadius: BorderRadius.all(Radius.circular(30))),
                        margin: EdgeInsets.all(35),
                        width: double.infinity,
                        child: Center(
                          child: Text(
                            'Sign In',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => SignUpPage()));
                      },
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Don't have an account ?" ,
                              style: TextStyle(fontSize: 13, ),),
                            Text('Sign Up',
                              style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold, color: Colors.green[900]),),
                          ],
                        ),),
                    )
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
