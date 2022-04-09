import 'package:flutter/material.dart';
import 'package:whatsapp_clone/models/models.dart';
import 'package:whatsapp_clone/pages/chattile.dart';
import 'package:whatsapp_clone/pages/statustile.dart';

class Status extends StatelessWidget {
  Status({Key key}) : super(key: key);

  List<ChatModel> chatlist = [
    ChatModel(
        avatar:
            'https://www.gravatar.com/avatar/205e460b479e2e5b48aec07710c08d50',
        //isgroup: false,
        // message: 'Hii',
        name: 'Anu',
        status: 'just now',
        updatedAt: '7.00 AM'),
    ChatModel(
        avatar: '',
        // isgroup: true,
        // message: 'Hii',
        name: 'baabte',
        status: 'just now',
        updatedAt: '8.00 AM'),
    ChatModel(
        avatar:
            'https://www.gravatar.com/avatar/205e460b479e2e5b48aec07710c08d50',
        //isgroup: false,
        // message: 'Hellooo',
        name: 'PETER',
        status: 'just now',
        updatedAt: '6.00 AM'),
    ChatModel(
        avatar: '',
        // isgroup: true,
        // message: 'Hellooo',
        name: 'cyber',
        status: 'just now',
        updatedAt: '6.00 AM'),
    ChatModel(
        avatar: '',
        // isgroup: false,
        // message: 'gd mng',
        name: 'raju',
        status: 'just now',
        updatedAt: '6.00 AM')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Statustile(
            data: chatlist[index],
          );
        },
        itemCount: 5,
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {},
            child: const Icon(Icons.access_alarms_outlined),
            backgroundColor: const Color(0xFF075E54),
          ),
          SizedBox(
            height: 10,
          ),
          FloatingActionButton(
            onPressed: () {},
            child: const Icon(Icons.pedal_bike),
            backgroundColor: const Color(0xFF075E54),
          ),
        ],
      ),
    );
  }
}
