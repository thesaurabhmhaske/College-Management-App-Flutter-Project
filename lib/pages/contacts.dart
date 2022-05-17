import 'package:college_management/pages/models/userModel.dart';
import 'package:college_management/pages/userDetail.dart';
import 'package:flutter/material.dart';

class contacts extends StatefulWidget {
  contacts({Key? key}) : super(key: key);

  @override
  State<contacts> createState() => _contactsState();
}

class _contactsState extends State<contacts> {
  final List<User> user = [
    User(
        name: "Dr. Chandrashekhar Sakode",
        phoneNumber: "8767734978",
        imgUrl: "assets/chandrashekarsakode.jpg"),
    User(name: "Dr. Nikhil Agrawal", phoneNumber: "39488924838", imgUrl: "assets/nikhilagrawal.jpg"),
    User(
        name: "Dr. Paritosh Peshwe",
        phoneNumber: "74718974832",
        imgUrl: "assets/paritoshpeshwe.jpeg"),
    User(name: "Dr. Shishupal Kumar", phoneNumber: "641898973247", imgUrl: "assets/shisupalkumar.jpg"),
    User(
        name: "Dr. Vipin Kamble", phoneNumber: "3248878423948", imgUrl: "assets/vipinKamble.jpg"),
    User(
        name: "Dr. Prasad Joshi",
        phoneNumber: "374627864687",
        imgUrl: "assets/prasadjoshi.png"),
    User(name: "Dr. Mayur Parate", phoneNumber: "34267768327", imgUrl: "assets/mayurparate.jpg"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[100],
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("CALLS"),
          centerTitle: true,
          actions: [Icon(Icons.more_vert)],
        ),
        body: ListView(children: <Widget>[
          IntrinsicWidth(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(25, 40, 10, 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: "Write faculty name here",
                          hintStyle: TextStyle(fontWeight: FontWeight.normal),
                          prefixIcon: Icon(Icons.search)),
                    ),
                  ),
                  Icon(
                    Icons.add,
                    size: 50,
                    color: Colors.white,
                  ),
                  Icon(
                    Icons.people_alt,
                    size: 43,
                    color: Colors.white,
                  ),
                  Icon(
                    Icons.more_vert,
                    size: 43,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ),
          Column(
            children: user.map((user) {
              return UserCard(user: user);
            }).toList(),
          )
        ]));
  }
}

class UserCard extends StatelessWidget {
  final User user;
  UserCard({required this.user});
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color.fromRGBO(196, 196, 196, 1),
      child: ListTile(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => UserDetails(
                        user: user,
                      )));
        },
        leading: CircleAvatar(backgroundImage: AssetImage(user.imgUrl)),
        title: Text(
          user.name,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(user.phoneNumber),
        trailing: IntrinsicWidth(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.call,
                  color: Colors.black,
                ),
              ),
              SizedBox(width: 10),
              CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.message,
                  color: Colors.black,
                ),
              ),
              SizedBox(width: 10),
              CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.video_call,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
