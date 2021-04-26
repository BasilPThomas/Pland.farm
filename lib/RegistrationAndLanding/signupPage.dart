import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutte_app/HomePage/homePage.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _db = FirebaseFirestore.instance;

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
            children: [
              // SizedBox(height:getProportionateScreenWidth(100),),
              Container(
                  margin: EdgeInsets.only(top: 60),
                  child: Image.asset('images/image.png',height: 90,)),
              Center(
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  height: 430,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    color: Colors.white.withOpacity(0.5),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 30, right: 20, left: 20, bottom: 10),
                          child: Column(
                            children: [
                              Text(
                                "WELCOME BACK",
                                style: TextStyle(color: Colors.green[900], fontSize: 25, fontWeight: FontWeight.bold,),
                              ),
                              Text(
                                "Sign Up with your Details",
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 20, right: 10, left: 10, bottom: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Text(
                              //   "Mobile number",
                              //   style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,),
                              //   textAlign: TextAlign.left,
                              // ),
                              SizedBox(height: 20,),
                              TextField(
                                controller: _emailController,
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                    fillColor: Colors.white,
                                    hintText: "Enter your email",
                                    floatingLabelBehavior: FloatingLabelBehavior.always,
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(Radius.circular(30.0)))
                                ),),
                              SizedBox(
                                height: 20,
                              ),
                              TextField(
                                controller: _passwordController,
                                obscureText: true,
                                // keyboardType: TextInputType.visiblePassword,
                                decoration: InputDecoration(
                                    fillColor: Colors.white,
                                    hintText: "Enter your password",
                                    floatingLabelBehavior: FloatingLabelBehavior.always,
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(Radius.circular(30.0)))
                                ),),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 20, right: 20, left: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              InkWell(
                                onTap: () {
                                  _signup();
                                },
                                child: Container(
                                  padding: EdgeInsets.symmetric(vertical: 8,horizontal: 15),
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(15)),
                                    color: Colors.green[400],
                                  ),
                                  child: Text(
                                    'Sign Up',
                                    style: TextStyle(
                                        fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
                                  ),),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _signup() {
    String email = _emailController.text.trim();
    String password = _emailController.text;
    if(email.isNotEmpty && password.isNotEmpty){
      _auth.createUserWithEmailAndPassword(
          email: email, password: password).then((user){
            _db.collection("users").document(user.user.uid).setData({
              "email" : email,
              "data" : DateTime.now(),
              // "signin_method" : user.user.email
            });
        showDialog(
            context: context,
            builder: (ctx) {
              return AlertDialog(
                title: Text("done"),
                content: Text('SingIn Success'),
                actions: [
                  FlatButton(
                      onPressed:() {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => HomePage()));
                      },
                      child:  Text("Hey")),
                ],
              );
            }
        );
      }).catchError((e){
        showDialog(
            context: context,
            builder: (ctx) {
              return AlertDialog(
                title: Text("Error"),
                content: Text("${e.message}"),
                actions: [
                  FlatButton(
                      onPressed:() {
                        Navigator.of(ctx).pop();
                      },
                      child:  Text("cancel")),
                ],
              );
            }
        );
      });
    }else{
      showDialog(
          context: context,
          builder: (ctx) {
            return AlertDialog(
              title: Text("Error"),
              content: Text("Please provide the email and password"),
              actions: [
                FlatButton(
                    onPressed:() {
                      Navigator.of(ctx).pop();
                    },
                    child:  Text("cancel")),
                FlatButton(
                    onPressed:() {
                      _emailController.text = "";
                      _passwordController.text = "";
                      Navigator.of(ctx).pop();
                    },
                    child:  Text("ok"))
              ],
            );
          }
      );
    }
  }

}
