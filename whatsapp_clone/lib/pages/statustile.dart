import 'package:flutter/material.dart';
import 'package:whatsapp_clone/models/models.dart';

class Statustile extends StatelessWidget {
  Statustile({Key key, this.data}) : super(key: key);

  ChatModel data;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(data.name.toString()),
      subtitle: Text(data.status.toString()),
      trailing: Text(data.updatedAt.toString()),
      leading: CircleAvatar(
        backgroundColor: Colors.grey,
        child: Icon(
          Icons.person,
          color: Colors.white,
        ),
      ),
    );
  }
}
