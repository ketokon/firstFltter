
import 'package:first_program/second_page.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  final List<String> entries = [
    'NIKKEモーション紹介-E.H.｜勝利の女神：NIKKE',
    '『ニケラジ』Vol.9-ゲスト：久野美咲(ココア役)｜勝利の女神：NIKKE',
    '公式Xアカウント100万フォロワー突破記念 お祝い二次創作｜勝利の女神：NIKKE',
    'マストの特別なおもてなし｜勝利の女神：NIKKE',
    'キャラモーション紹介 - クルミ(Kurumi) │『勝利の女神：NIKKE』×『リコリス・リコイル』',
    'キャラモーション紹介 - 井ノ上たきな(Takina Inoue) │『勝利の女神：NIKKE』×『リコリス・リコイル』',
    'キャラモーション紹介 - 錦木千束(Chisato Nishikigi) │『勝利の女神：NIKKE』×『リコリス・リコイル』'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '勝利の女神：NIKKE',
          style: TextStyle(
              fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.white60,
        actions: [
          Icon(Icons.ondemand_video_outlined),
          SizedBox(width: 24),
          Icon(Icons.search),
          SizedBox(width: 24),
          Icon(Icons.menu),
          SizedBox(width: 24),
        ],
      ),
      body: Container(
        color: Colors.white,
        child: ListView.builder(
            padding: const EdgeInsets.all(8),
            itemCount: entries.length,
            itemBuilder: (BuildContext context, int index){
              return Container(
                height: 100,
                padding: EdgeInsets.all(8),
                child: Row(
                  children: [
                    Image.network(
                        'https://i.ytimg.com/vi/CAUh7EREOjE/hq720.jpg?sqp=-oaymwEhCK4FEIIDSFryq4qpAxMIARUAAAAAGAElAADIQj0AgKJD&rs=AOn4CLApQKuENOM0BiIzWjqtaAEQUvbCfw',
                      height: 100,
                    ),
                    SizedBox(width: 8,),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            entries[index],
                            style: TextStyle(
                              color: Colors.black,
                              height: 1.3,
                              fontSize: 15,
                            ),
                            maxLines: 3,
                          ),
                          Text(
                            '3.5万回視聴:2日前',
                            style: TextStyle(
                              color: Colors.grey[800],
                              fontSize: 12,
                            ),

                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            }
      ),
      ),
    );
  }
}
