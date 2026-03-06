
import 'package:first_program/second_page.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  final List<int> entries = [0,1,2,3];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.lightBlueAccent,
          title: Text('滑らかラテSmart')
      ),
      body: ListView.separated(
          itemCount: entries.length,
          itemBuilder: (BuildContext context, int index) {
            return Center(
                child: Container(
                  color: Colors.yellow,
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'No ${entries[index]}',
                    style: TextStyle(fontSize: 30),
                  ),
                ));
          }, separatorBuilder: (BuildContext context, int index) => const Divider(color: Colors.black,),
    )
    );
  }
}
