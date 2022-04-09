import 'package:flutter/material.dart';
import 'package:whatsapp_clone/models/message_model.dart';

class MessageDetails extends StatelessWidget {
  MessageDetails({Key key,this.messagedetails}) : super(key: key);

  MessageModel messagedetails;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: messagedetails.isSent == true
          ? Alignment.centerRight
          : Alignment.centerLeft,
      child: ConstrainedBox(
        constraints:
            BoxConstraints(maxWidth: MediaQuery.of(context).size.width - 150),
        child: Card(
          color:
              messagedetails.isSent == true ? Color(0xffdcf8c6) : Colors.white,
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    left: 20, right: 13, top: 10, bottom: 20),
                child: Text(
                  messagedetails.message,
                  style: TextStyle(fontSize: 16),
                ),
              ),
              Positioned(
                bottom: 4,
                right: 2,
                child: Row(
                  children: [
                    Text(messagedetails.sentAt),
                    Icon(
                      Icons.done_all,
                      color: messagedetails.isReaded == true
                          ? Colors.blue
                          : Colors.grey,
                      size: 16,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
