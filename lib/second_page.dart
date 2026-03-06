
import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {

  SecondPage(this.name);
  final String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
          title: Text('滑らかラテSmart2')
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(name,
            style: TextStyle(
              fontSize: 25,
            ),
            ),
            OutlinedButton(onPressed: (){
              Navigator.pop(context);
              //ボタンを押した時のコードを書く
            },
                child: const Text('次の画面へ')
              //constは静的な変数に使われる
            ),
          ],
        ),
      ),
    );
  }
}
