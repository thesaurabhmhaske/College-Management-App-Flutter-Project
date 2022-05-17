import 'package:college_management/services/auth.dart';
import 'package:college_management/shared/constants.dart';
import 'package:college_management/shared/loading.dart';
import 'package:flutter/material.dart';

import '../../services/auth.dart';
import '../../shared/constants.dart';
import '../../shared/loading.dart';

class SignIn extends StatefulWidget {

  final Function toggleView;
  const SignIn({ required this.toggleView });

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();
  String error = '';
  bool loading = false;

  // text field state
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return loading ? Loading() : Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Color.fromARGB(255, 207, 234, 255),
      appBar: AppBar(
        backgroundColor:  Color.fromARGB(255, 16, 71, 154),
        elevation: 0.0,
        title: Text('Sign in'),
        actions: <Widget>[],
      ),
      body: SingleChildScrollView(child: 
      Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(top: 100,bottom: 100),
                      height: 200,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/background.png"),
                          fit: BoxFit.fitHeight
                        ),
                      ),
                    ),
                    Text("Login",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                    SizedBox(height: 20,),
                    Text("Login to your account",
                    style: TextStyle(
                      fontSize: 15,
                      color:Colors.grey[700]
                      ),
                    ),                    
                  ],
                  ),
                  Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Column(
                    children: <Widget>[                      
                      Form(
                        key: _formKey,
                        child: Column(
                          children: <Widget>[
                            SizedBox(height: 20.0),
                            TextFormField(
                              decoration: textInputDecoration.copyWith(hintText: 'email'),
                              validator: (val) => val!.isEmpty ? 'Enter an email' : null,
                              onChanged: (val) {
                                setState(() => email = val);
                              },
                            ),
                            SizedBox(height: 20.0),
                            TextFormField(
                              obscureText: true,
                              decoration: textInputDecoration.copyWith(hintText: 'password'),
                              validator: (val) => val!.length < 6 ? 'Enter a password 6+ chars long' : null,
                              onChanged: (val) {
                                setState(() => password = val);
                              },
                            ),
                            SizedBox(height: 20.0),
                            Container(
                              padding: EdgeInsets.only(top:3,left:3),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                border: Border(
                                  bottom: BorderSide(color: Colors.black),
                                  top: BorderSide(color: Colors.black),
                                  left: BorderSide(color: Colors.black),
                                  right: BorderSide(color: Colors.black),
                                )
                              ),
                              child: MaterialButton(
                                // color: Colors.pink[400],
                                minWidth: double.infinity,
                                height:60,
                                color: Color.fromARGB(255, 16, 71, 154),
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                                child: Text(
                                  'Sign In',
                                  style: TextStyle(color: Colors.white,fontSize: 20),
                                  ),
                                onPressed: () async {
                                  if(_formKey.currentState!.validate()){
                                    setState(() => loading = true);
                                    dynamic result = await _auth.signInWithEmailAndPassword(email, password);
                                    if(result == null) {
                                      setState(() {
                                        loading = false;
                                        error = 'Could not sign in with those credentials';
                                      });
                                    }
                                  }
                                }
                              ),
                            ),
                            SizedBox(height: 12.0),
                            Text(
                              error,
                              style: TextStyle(color: Colors.red, fontSize: 14.0),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("Don't have an account?"),
                    FlatButton.icon(
                      icon: Icon(Icons.person),
                      label: Text('Sign Up'),
                      onPressed: () => widget.toggleView(),
                    ),
                  ],
                ),
                ]
              ),
            ),
          ],
        ),
      ),
      )
    );
  }
}
