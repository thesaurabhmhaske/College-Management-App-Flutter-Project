import 'package:college_management/models/user_model.dart';
import 'package:college_management/screens/authenticate/authenticate.dart';
import 'package:college_management/screens/home/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final user = Provider.of<User_model?>(context);
    
    // return either the Home or Authenticate widget
    if (user == null){
      return Authenticate();
    } else {
      return Home();
    }

    
    
  }
}