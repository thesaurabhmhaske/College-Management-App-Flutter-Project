import 'package:college_management/pages/models/userModel.dart';
import 'package:flutter/material.dart';

class UserDetails extends StatelessWidget {
  final User user;
  const UserDetails({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[200],
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text("CALLS"),
        centerTitle: true,
        actions: [Icon(Icons.more_vert)],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: Center(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 50.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage(user.imgUrl),
                            radius: 70,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 78.0, left: 1),
                            child: CircleAvatar(
                                backgroundColor: Colors.white,
                                child: Icon(Icons.edit)),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.white,
                          child: Icon(
                            Icons.call,
                            color: Colors.black,
                            size: 40,
                          ),
                        ),
                        SizedBox(width: 10),
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.white,
                          child: Icon(
                            Icons.message,
                            color: Colors.black,
                            size: 40,
                          ),
                        ),
                        SizedBox(width: 10),
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.white,
                          child: Icon(
                            Icons.video_call,
                            color: Colors.black,
                            size: 40,
                          ),
                        ),
                        SizedBox(height: 15),
                      ],
                    ),
                    Divider(
                      height: 30,
                      color: Colors.black,
                      endIndent: 5,
                    ),
                  ],
                ),
              )),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Name",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w300),
                ),
                Text(
                  user.name,
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Contact",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w300),
                ),
                Text(
                  user.phoneNumber,
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
