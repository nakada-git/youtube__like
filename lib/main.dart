import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youtube_like/video_detail_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  final items = List<String>.generate(10000, (i) => "Item $i");
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.videocam),
          title: const Text(
              'Youtubeアプリ',
              textAlign: TextAlign.start,
          ),
          actions: <Widget>[
            SizedBox(
              width: 44,
              child: FlatButton(
                child: Icon(Icons.search),
                onPressed: (){
                  //todo
                },
              ),
            ),
            SizedBox(
              width: 44,
              child: FlatButton(
                child: Icon(Icons.more_vert),
                onPressed: (){
                  //todo
                },
              ),
            ),
          ],
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: <Widget>[
                    SizedBox(
                      width: 60,
                      height: 60,
                      child: Image.network(
                          'https://yt3.ggpht.com/a/AATXAJzTTrCl3cb1V2IoZ2h9-me3BXqwolvXElKMT74b=s88-c-k-c0xffffffff-no-rj-mo'
                      ),
                    ),
                    SizedBox(
                      width : 8
                    ),
                    Column(
                      children: <Widget>[
                        const Text(
                          'Flutter大学'
                        ),
                        FlatButton(
                          child: Row(
                            children: <Widget>[
                              Icon(
                                Icons.video_call,
                                color: Colors.red,
                              ),
                              Text('登録する'),
                            ],
                          )
                        )
                      ],
                    )
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      onTap:() async{
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => VideoDetailPage()),
                        );
                      },
                      contentPadding: EdgeInsets.all(8),
                      leading: Image.network(
                          'https://yt3.ggpht.com/a/AATXAJzTTrCl3cb1V2IoZ2h9-me3BXqwolvXElKMT74b=s88-c-k-c0xffffffff-no-rj-mo'
                      ),
                      title: Column(
                        children: <Widget>[
                          Text(
                            '【Flutter入門】　リストを作る方法',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Row(
                            children: <Widget>[
                              Text(
                                '267回再生',
                                style: TextStyle(fontSize: 13),
                              ),
                              Text(
                                '5日前',
                                style: TextStyle(fontSize: 13),
                              )
                            ],
                          )
                        ],
                      ),
                      trailing: Icon(Icons.more_vert),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}
