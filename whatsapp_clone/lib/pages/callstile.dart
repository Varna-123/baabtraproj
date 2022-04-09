import 'package:flutter/material.dart';
import 'package:whatsapp_clone/models/models.dart';

class Callstile extends StatelessWidget {
  Callstile({Key key,  this.data}) : super(key: key);

  ChatModel data;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(data.name.toString()),
      ),
      subtitle: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Icon(
              Icons.call_made_sharp,
              size: 18,
              color: Colors.green,
            ),
          ),
          Text(data.status.toString()),
        ],
      ),
      leading: const CircleAvatar(
        backgroundColor: Colors.grey,
        child: Icon(Icons.person),
      ),
      trailing: Icon(Icons.call),
    );
  }
}
