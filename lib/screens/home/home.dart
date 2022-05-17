import 'package:college_management/pages/academic_calendar.dart';
import 'package:college_management/pages/courses.dart';
import 'package:college_management/pages/events.dart';
import 'package:college_management/pages/fees.dart';
import 'package:college_management/pages/result.dart';
import 'package:college_management/pages/student_profile.dart';
import 'package:college_management/screens/authenticate/sign_in.dart';
import 'package:college_management/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:college_management/pages/contacts.dart';


 launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url, forceWebView: true);
    } else {
      throw 'Could not launch $url';
    }
 }

class Home extends StatelessWidget {

  final AuthService _auth = AuthService();

  get toggleView => null;


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 222, 238, 250),
        appBar: AppBar(
          title: Text('IIIT Nagpur'),
          backgroundColor: Colors.blue,
          elevation: 0.0,
          actions: <Widget>[
            FlatButton.icon(
              icon: Icon(Icons.logout),
              label: Text('logout'),
              onPressed: () async {
                await _auth.signOut();
              },
            ),              
          ],
        ),
        body:ListView(
          children: [
            Container(
            // we will give media query height
            // double.infinity make it big as my parent allows
            // while MediaQuery make it big as per the screen
        
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
            child: Column(
              // even space distribution
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Text(
                      "Welcome To",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 22, 9, 139),
                        fontSize: 30,
                      ),                    
                    ),
                    Padding(padding:EdgeInsets.all(10)),
                    Container(
                      height: MediaQuery.of(context).size.height / 9,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/favicon.png")
                        )
                      ),
                    ),
                    Text(
                      "Indian Institute of Information Technology, Nagpur",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 22, 9, 139),
                        fontSize: 30,        
                      ),                      
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text("An Institution of National Importance By An Act of Parliament",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color.fromARGB(255, 255, 98, 0),
                      fontSize: 15,        
                    ),),
                    Padding(padding:EdgeInsets.all(10)),
                    Container(
                  height: MediaQuery.of(context).size.height / 3,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/welcome.png")
                    )
                  ),
                ),
                  ],
                ),
                ],
              )
            ),              
                GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context)=> StudentProfile()),);
                  },
                  child: Card(
                    child: ListTile(                      
                    leading: Icon(Icons.analytics_outlined),
                      title: Text("Student Profile", style: TextStyle(color: Colors.white),),
                      ),
                    color: Colors.blue,
                  ),
                ), 
            GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context)=> Courses()),);
                  },
                  child: Card(
                    child: ListTile(                      
                    leading: Icon(Icons.analytics_outlined),
                      title: Text("Courses", style: TextStyle(color: Colors.white),),
                      ),
                    color: Colors.blue,
                  ),
                ),  
            GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context)=> contacts()),);
                  },
                  child: Card(
                    child: ListTile(
                      leading: Icon(Icons.contact_phone_rounded), 
                      title: Text("Contacts", style: TextStyle(color: Colors.white),),
                      ),
                    color: Colors.blue,
                  ),
                ), 
                GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context)=> events()),);
                  },
                  child: Card(
                    child: ListTile(
                      leading: Icon(Icons.event_note_rounded),
                      title: Text("Events", style: TextStyle(color: Colors.white),),
                      ),
                    color: Colors.blue,
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context)=> Calendar()),);
                  },
                  child: Card(
                    child: ListTile(                      
                    leading: Icon(Icons.calendar_month_rounded),
                      title: Text("Calendar", style: TextStyle(color: Colors.white),),
                      ),
                    color: Colors.blue,
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context)=> FeePage()),);
                  },
                  child: Card(
                    child: ListTile(                      
                    leading: Icon(Icons.currency_rupee_rounded),
                      title: Text("Student Fees", style: TextStyle(color: Colors.white),),
                      ),
                    color: Colors.blue,
                  ),
                ),  
                GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context)=> Result()),);
                  },
                  child: Card(
                    child: ListTile(                      
                    leading: Icon(Icons.analytics_outlined),
                      title: Text("Student Result", style: TextStyle(color: Colors.white),),
                      ),
                    color: Colors.blue,
                  ),
                ),           
          ]
        ),
        drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              decoration: const BoxDecoration(
                color: Colors.blue,
              ),
              child: Stack(
                children:  <Widget>[
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/favicon.png'),
                      radius: 50.0,),
                      // RectangleAvatar
                  ),
                  const Align(
                    alignment: Alignment.centerRight,
                    child: Text('Student',
                    style: TextStyle(color: Colors.white, fontSize: 20.0),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight+const Alignment(0, .3),
                    child: const Text(
                      'B.Tech in ECE',
                      style: TextStyle(
                        color: Colors.white70,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight+const Alignment(0, .8),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(15.0)
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(5.0),
                        child: Text('IIIT Nagpur',style: TextStyle(color: Colors.white),),
                      ),
                    ),
                  )
                ],
              )),
               Column(),
              const ListTile(
                title: Text('Active'),
                leading: Icon(Icons.circle,color: Colors.green),
                trailing: Icon(Icons.arrow_drop_down_sharp),
              ),
              const ListTile(
                title: Text('Add a status'),
                leading: Icon(Icons.edit_outlined),
              ),  
              const Divider(
                thickness: 0.4,
              ),          
              const ListTile(
                title: Text('All inboxes'),
                leading: Icon(Icons.all_inbox)
              ),
              const Divider(
                thickness: 0.4,
              ),
              const ListTile(
                title: Text('Inbox'),
                leading: Icon(Icons.inbox),
              ),
              const ListTile(
                title: Text('Starred'),
                leading: Icon(Icons.star_border),
              ),
              const ListTile(
                title: Text('Snoozed'),
                leading: Icon(Icons.watch_later_outlined)
              ),
              const ListTile(
                title: Text('Important'),
                leading: Icon(Icons.label_important_outline_rounded)
              ),const ListTile(
                title: Text('Sent'),
                leading: Icon(Icons.send_outlined),
              ),
              const ListTile(
                title: Text('Scheduled'),
                leading: Icon(Icons.schedule_send_outlined),
              ),
              const ListTile(
                title: Text('Outbox'),
                leading: Icon(Icons.outbox_rounded),
              ),
              const ListTile(
                title: Text('Inbox'),
                leading: Icon(Icons.inbox
              ),
              ),
              const ListTile(
                title: Text('Drafts'),
                leading: Icon(Icons.drafts),
              ),
              const ListTile(
                title: Text('All mail'),
                leading: Icon(Icons.mail_outline),
              ),
              const ListTile(
                title: Text('Spam'),
                leading: Icon(Icons.warning),
              ),
              const ListTile(
                title: Text('Bin'),
                leading: Icon(Icons.delete,),
              ),
              const ListTile(
                title: Text('Calender'),
                leading: Icon(Icons.calendar_today,)
              ),
              const ListTile(
                title: Text('Contacts'),
                leading: Icon(Icons.account_circle_outlined),
              ),
              const Divider(
                thickness: 0.4,
              ),
              const ListTile(
                title: Text('Settings'),
                leading: Icon(Icons.settings,)
              ),
              const ListTile(
                title: Text('Help and feedback'),
                leading: Icon(Icons.help_outline)
              ),
          ],
        ),
      ),
      bottomNavigationBar: bottomnavigationbar(),
      

      ),
      );
  }
}

class bottomnavigationbar extends StatefulWidget {
  const bottomnavigationbar({ Key? key }) : super(key: key);

  @override
  State<bottomnavigationbar> createState() => _bottomnavigationbarState();
}

class _bottomnavigationbarState extends State<bottomnavigationbar> {

  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return  BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.mail),
              label: 'Mail',
                backgroundColor: Colors.blue
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.chat_bubble_outline),
                label: 'Chat',
                backgroundColor: Colors.blue           
              ),              
              BottomNavigationBarItem(
                icon: Icon(Icons.groups),
                label: 'Spaces',
                backgroundColor: Colors.blue
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.videocam_outlined),
                label: 'Meet',
                backgroundColor: Colors.blue
              )
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.amber[800],
          onTap: _onItemTapped,
    );
  }
}