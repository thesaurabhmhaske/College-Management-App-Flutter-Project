import 'package:flutter/material.dart';

class Courses extends StatefulWidget {
  Courses({Key? key}) : super(key: key);

  @override
  State<Courses> createState() => _CoursesState();
}

class _CoursesState extends State<Courses> {

var date = ['20/02/2023', '15/03/2023', '13/04/2023', '14/05/2023', '25/06/2023', '05/07/2023'];
  var event_name = ['IT workshop 2: Dr. Shishupal Kumar', 'Control Systems: Dr. Chandrashekhar Sakode', 'Electromagnetics: Dr. Paritosh Peshwe', 'Hardware Description Language: Dr. Vipin M. Kamble', 'Computer Architecture and Organization: Dr. Mayur R. Parate', 'Digital Signal Processing: Dr. Nikhil Agrawal'];
    var description = [' It will enhance the skills of students ',
     'A control system is a set of mechanical or electronic devices that regulates other devices or systems by way of control loops. Typically, control systems are computerized. Control systems are a central part of industry and of automation.',
      'Electromagnetic theory is a core course in Electrical Engineering curriculum. The course covers static and dynamic electric and magnetic fields and their interaction. Major topics include Electromagnetic Waves, Transmission Lines, Waveguides, and Antenna fundamentals.',
       'Hardware Description Languages for Logic Design enables students to design circuits using VHDL and Verilog, the most widespread design methods for FPGA Design. It uses natural learning processes to make learning the languages easy.',
        'Introduces Machine Architecture with coverage of digital logic, machine level data and instruction representation, ALU design, and organization of the processor datapath and control. Examines performance analysis, memory system hierarchy, pipelining, and communication. ',
         'The course covers theory and methods for digital signal processing including basic principles governing the analysis and design of discrete-time systems as signal processing devices. Review of discrete-time linear, time-invariant systems, Fourier transforms and z-transforms.'];
      var images = ['https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSkGrGhipa5X3OpuUZ9r1Ni44xV2y8N4w64CA&usqp=CAU',
       "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQRYGAK_eEcgAUO6kVC8vktiSu9pTe_ciSBsQ&usqp=CAU",
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTISL8V8GgYtfZHacUypm7Md0xISgYSrLKc5A&usqp=CAU', 
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT2yR155gKLtDW39MLFFnmrhTsvxRaSqKOXcw&usqp=CAU',
         'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQIRbpdWK0UtD9uwRHwwiCPMevA7XGuFV3vZg&usqp=CAU',
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWMjcZbTsdIqR9tAKpcxJD7kwr7dgB94SDlQ&usqp=CAU'];



  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("DASHBORD"),
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
                  hintText: 'Find course ', icon: new Icon(Icons.search)),
            ),
          ),
        ),
        new Expanded(
          child: new ListView.builder(
                      itemCount: event_name.length,
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
                                                event_name[index],
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
                                              //           ["source"]["name"]);
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