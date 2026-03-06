
import 'package:first_program/second_page.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  String nameText = '';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.lightBlueAccent,
          title: Text('滑らかラテSmart')
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                onChanged: (text){
                  nameText = text;
                },
              ),

              OutlinedButton(onPressed: (){
                //ボタンを押した時のコードを書く
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SecondPage(nameText),
                    fullscreenDialog: true,
                  ),
                );
              },
                  child: const Text('次の画面へ')
                //constは静的な変数に使われる
              ),
            ],
          ),
        ),
      ),
    );
  }
}
