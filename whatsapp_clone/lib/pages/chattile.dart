import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/models/models.dart';
import 'package:whatsapp_clone/pages/chatdetails.dart';

class ChatTile extends StatefulWidget {
  ChatTile({Key key, this.data}) : super(key: key);

  ChatModel data;

  @override
  _ChatTileState createState() => _ChatTileState();
}

class _ChatTileState extends State<ChatTile> {
  @override
  Widget build(BuildContext context) {
    print(widget.data.avatar.toString());

    return InkWell(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ChatDetailScreen(
            Userdata: widget.data,
          ),
        ),
      ), //new page entry
      ////clicable event
      child: ListTile(
        title: Text(widget.data.name.toString()),
        subtitle: Row(
          children: [
            const Icon(
              Icons.done_all,
              color: Colors.blue,
            ),
            Text(widget.data.message.toString()),
          ],
        ),
        trailing: Text(widget.data.updatedAt.toString()), //ending
        leading: CircleAvatar(
          backgroundImage: AssetImage(widget.data.avatar == " "
              ? widget.data.isgroup == true
                  ? "asset/images/watsappgrpicon.png"
                  : "asset/images/blank-profile-picture-973460__340.png"
              : widget.data.avatar),

          // backgroundColor: Colors.grey,
          // child: widget.data.isgroup == true
          //     ? const Icon(
          //         Icons.group,
          //         color: Colors.white,
          //         size: 30,
          //       )
          //     : const Icon(
          //         Icons.person,
          //         color: Colors.white,
          //         size: 30,
          //       ),
          radius: 20,
        ), //starting
      ),
    );
  }
}
