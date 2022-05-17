import 'package:flutter/material.dart';

class events extends StatefulWidget {
  events({Key? key}) : super(key: key);

  @override
  State<events> createState() => _eventsState();
}

class _eventsState extends State<events> {

var date = ['20/02/2023', '15/03/2023', '13/04/2023', '14/05/2023', '25/06/2023', '05/07/2023'];
  var event_events = ['CO-CURRICULAR ACTIVITIES', 'SPORTS EVENTS', 'ABHIVYAKTI FEST', 'ENTERNSHIP', 'HOLIDAYS', 'OTHERS'];
    var description = [' Co-curricular activities are activities that take place outside the classroom but reinforce or supplement classroom curriculum in some way', 'physical contests pursued for the goals and challenges they entail. Sports are part of every culture past and present', 'an assembly of people engaged in a common activity (often used in combination): filmfest; gabfest; love-fest; poetry ', 'Enternships is a portal that connects students and graduates to entrepreneurial workplacements (enternships) in start-ups and small businesses worldwide', 'List of Public and Government Holidays ', 'ch'];
      var images = ['https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS0aXd2mUXFMkQ7kKlUL_X9mihcx5fsnCJjkQ&usqp=CAU',
       "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRw-zIPOShJewoyRwaBHqzQLTyBsIvVhGI0CA&usqp=CAU",
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQRddGQqhWiiRdAG14iHA0uv8k0y-a8ok3Pw&usqp=CAU', 
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQNiFm-k_O1DhIHOQmubQq_AH-A-YlibsAuPg&usqp=CAU',
         'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTzMvIlYvcvFDUCM2vBolUa4r4QJv864vtJQQ&usqp=CAU',
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSD2ScCzNsHMLmx7GAXT-qGgxbn42pYF9In3Q&usqp=CAU'];



  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("Updates and events"),
      ),
      body: new Column(children: <Widget>[
        new Padding(
          padding: new EdgeInsets.all(0.0),
          child: new PhysicalModel(
            color: Colors.white,
            elevation: 3.0,
            child: new TextField(
              // controller: _controller,
              // onSubmitted: handleTextInputSubmit,
              decoration: new InputDecoration(
                  hintText: 'Finding a Event?', icon: new Icon(Icons.search)),
            ),
          ),
        ),
        new Expanded(
          child: new ListView.builder(
                      itemCount: event_events.length,
                      padding: new EdgeInsets.all(8.0),
                      itemBuilder: (BuildContext context, int index) {
                        return new Card(
                          elevation: 1.7,
                          child: new Padding(
                            padding: new EdgeInsets.all(10.0),
                            child: new Column(
                              children: [
                                new Row(
                                  children: <Widget>[
                                    new Padding(
                                      padding: new EdgeInsets.only(left: 4.0),
                                      child: new Text(
                                        "Date: ",
                                        style: new TextStyle(
                                          fontWeight: FontWeight.w400,
                                          color: Colors.grey[600],
                                        ),
                                      ),
                                    ),
                                    new Padding(
                                      padding: new EdgeInsets.all(5.0),
                                      child: new Text(
                                        date[index],
                                        style: new TextStyle(
                                          
                                          fontWeight: FontWeight.w500,
                                          color: Colors.grey[700],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                new Row(
                                  children: [
                                    new Expanded(
                                      child: new GestureDetector(
                                        child: new Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            new Padding(
                                              padding: new EdgeInsets.only(
                                                  left: 4.0,
                                                  right: 8.0,
                                                  bottom: 8.0,
                                                  top: 8.0),
                                              child: new Text(
                                                event_events[index],
                                                style: new TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                            new Padding(
                                              padding: new EdgeInsets.only(
                                                  left: 4.0,
                                                  right: 4.0,
                                                  bottom: 4.0),
                                              child: new Text(
                                                description[index],
                                                style: new TextStyle(
                                                  color: Colors.grey[500],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        // onTap: () {
                                        //   flutterWebviewPlugin.launch(
                                        //       data["articles"][index]["url"],
                                        //       fullScreen: false);
                                        // },
                                      ),
                                    ),
                                    new Column(
                                      children: <Widget>[
                                        new Padding(
                                          padding:
                                              new EdgeInsets.only(top: 8.0),
                                          child: new SizedBox(
                                            height: 100.0,
                                            width: 100.0,
                                            child: new Image.network(images[index]),
                                          ),
                                        ),
                                        new Row(
                                          children: <Widget>[
                                            new GestureDetector(
                                              child: new Padding(
                                                  padding:
                                                      new EdgeInsets.symmetric(
                                                          vertical: 10.0,
                                                          horizontal: 5.0),
                                                  child: Icon(
                                                      Icons.share)),
                                              // onTap: () {
                                              //   share(data["articles"][index]
                                              //       ["url"]);
                                              // },
                                            ),
                                            new GestureDetector(
                                              child: new Padding(
                                                  padding:
                                                      new EdgeInsets.all(5.0),
                                                  child: Icon(
                                                          Icons.bookmark)
                                                      ),
                                              // onTap: () {
                                              //   _onBookmarkTap(
                                              //       data["articles"][index]);
                                              // },
                                            ),
                                            new GestureDetector(
                                              child: new Padding(
                                                  padding:
                                                      new EdgeInsets.all(5.0),
                                                  child: Icon(
                                                      Icons.not_interested)),
                                              // onTap: () {
                                              //   _onRemoveSource(
                                              //       data["articles"][index]
                                              //           ["source"]["id"],
                                              //       data["articles"][index]
                                              //           ["source"]["events"]);
                                              // },
                                            ),
                                          ],
                                        ),
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ), ////
                          ),
                        );
                      },
                    )
                  // : new Center(
                  //     child: new Column(
                  //       mainAxisAlignment: MainAxisAlignment.center,
                  //       children: [
                  //         new Icon(Icons.chrome_reader_mode,
                  //             color: Colors.grey, size: 60.0),
                  //         new Text(
                  //           "No articles saved",
                  //           style: new TextStyle(
                  //               fontSize: 24.0, color: Colors.grey),
                  //         ),
                  //       ],
                  //     ),
                  //   ),
        )
      ]),
    );
  }
}