import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:college_management/screens/home/home.dart';
import 'result_detail.dart' show DetailsPage;

class Result extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home:Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(50.0),
            child: AppBar(
              leading: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) {
                    return Home();
                  }));
                },
                child: Icon(Icons.arrow_back, size: 30,),
              ),
              title: Text(
                'Student Result',
                style: TextStyle(fontSize: 20),
              ),
              centerTitle: true,
              elevation: 0,
              backgroundColor:  Color(0xff002c51),
            ),
          ),
          body: Scrollbar(child: _buildListView(context)),
        )
    );
  }

  ListView _buildListView(BuildContext context){
    return ListView.builder(
      itemCount: 8,
      itemBuilder: (_, index){
        return Card(
          child: ListTile(
            title: Text('Semester ${index+1}'),
            trailing: IconButton(
              icon: Icon(Icons.arrow_forward),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DetailsPage(index))
                );
              },
            ),
          ),
        );

      },
    );
  }
}