import 'package:college_management/services/auth.dart';
import 'package:college_management/shared/constants.dart';
import 'package:college_management/shared/loading.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {

  final Function? toggleView;
  Register({ this.toggleView });

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

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
      backgroundColor: Color.fromARGB(255, 222, 238, 250),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 16, 71, 154),
        elevation: 0.0,
        title: Text('Sign up'),
        actions: <Widget>[
          // FlatButton.icon(
          //   icon: Icon(Icons.person),
          //   label: Text('Sign In'),
          //   onPressed: () => widget.toggleView!(),
          // ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
        height: MediaQuery.of(context).size.height -50,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Column(
              children: <Widget>[
                Text("Sign up",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20,),
                Text("Create an account, It's free ",
                  style: TextStyle(
                      fontSize: 15,
                      color:Colors.grey[700]
                    ),
                )                      
              ],
            ),
              Column(
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
                        decoration: textInputDecoration.copyWith(hintText: 'password'),
                        obscureText: true,
                        validator: (val) => val!.length < 6 ? 'Enter a password 6+ chars long' : null,
                        onChanged: (val) {
                          setState(() => password = val);
                        },
                      ),
                      SizedBox(height: 20.0),
                      Container(
                        padding: EdgeInsets.only(top: 3,left: 3),
                        decoration: 
                        BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          border: Border(
                                    bottom: BorderSide(color: Colors.black),
                                    top: BorderSide(color: Colors.black),
                                    left: BorderSide(color: Colors.black),
                                    right: BorderSide(color: Colors.black),
                          )
                        ),
                        child: MaterialButton(
                          minWidth: double.infinity,
                          height: 60,
                          onPressed: () async {
                            if(_formKey.currentState!.validate()){
                              setState(() => loading = true);
                              dynamic result = await _auth.registerWithEmailAndPassword(email, password);
                              if(result == null) {
                                setState(() {
                                  loading = false;
                                  error = 'Please supply a valid email';
                                });
                              }
                            }
                          },
                          color: Color.fromARGB(255, 16, 71, 154),
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                          ),
                          child: Text(
                            "Sign up", style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                            color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                        Text("Already have an account?"),
                        // Text(" Login", style:TextStyle(
                        //   fontWeight: FontWeight.w600,
                        //   fontSize: 18
                        // ),
                        FlatButton.icon(
                          icon: Icon(Icons.person),
                          label: Text('Sign In'),
                          onPressed: () => widget.toggleView!(),
                        ),
                      
                    ],
                    ),
                      SizedBox(height: 12.0),
                      Text(
                        error,
                        style: TextStyle(color: Colors.red, fontSize: 14.0),
                      )
                    ],
                  ),
                ),
                ],
              ),
          ],
        ),
        ),

        // child: 
      )
    );
  }
}

