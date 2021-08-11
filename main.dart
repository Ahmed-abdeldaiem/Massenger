import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Massenger'),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Icon(Icons.chat),
              SizedBox(
                width: 30,
              ),
              Text('Chat', style: TextStyle(fontSize: 30))
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                FriendStatus(
                    'https://thumbs.dreamstime.com/b/close-up-portrait-nice-person-bristle-show-finger-okey-sign-isolated-pink-color-background-203466939.jpg',
                    'Ahmed'),
                SizedBox(
                  width: 10,
                ),
                FriendStatus(
                    'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a0/Pierre-Person.jpg/640px-Pierre-Person.jpg',
                    'Mohamed'),
                SizedBox(
                  width: 10,
                ),
                FriendStatus(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQB0VotNoqrfdpN_6jMqTGyI7MKiJOczXCOLg&usqp=CAU',
                    'Omar'),
                SizedBox(
                  width: 10,
                ),
                FriendStatus(
                    'https://cdn.pixabay.com/photo/2014/07/09/10/04/man-388104_960_720.jpg',
                    'Osama'),
                SizedBox(
                  width: 10,
                )
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Chat(
                    'https://thumbs.dreamstime.com/b/close-up-portrait-nice-person-bristle-show-finger-okey-sign-isolated-pink-color-background-203466939.jpg',
                    'Ahmed',
                    'hellow Ahmed'),
                SizedBox(
                  height: 5,
                ),
                Chat(
                    'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a0/Pierre-Person.jpg/640px-Pierre-Person.jpg',
                    'Mohamed',
                    'Hellow Mohamed'),
                SizedBox(
                  height: 5,
                ),
                Chat(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQB0VotNoqrfdpN_6jMqTGyI7MKiJOczXCOLg&usqp=CAU',
                    'omar',
                    'Hellow Omar'),
                SizedBox(
                  height: 5,
                ),
                Chat(
                    'https://cdn.pixabay.com/photo/2014/07/09/10/04/man-388104_960_720.jpg',
                    'omar',
                    'Hellow Osama')
              ],
            ),
          )
        ],
      ),
    );
  }
}

class FriendStatus extends StatelessWidget {
  final String url;
  final String name;
  const FriendStatus(this.url, this.name, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        CircleAvatar(
          backgroundImage: NetworkImage(url),
          maxRadius: 50,
        ),
        SizedBox(
          height: 8,
        ),
        Text(name, style: TextStyle(fontSize: 20))
      ],
    ));
  }
}

class Chat extends StatelessWidget {
  final String url;
  final String name;
  final String friendchat;
  const Chat(this.url, this.name, this.friendchat, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(children: [
      CircleAvatar(
        backgroundImage: NetworkImage(url),
        maxRadius: 50,
      ),
      SizedBox(
        width: 20,
      ),
      Column(children: [
        Text(name, style: TextStyle(fontSize: 20)),
        SizedBox(
          height: 4,
        ),
        Text(friendchat, style: TextStyle(fontSize: 20))
      ])
    ]));
  }
}
