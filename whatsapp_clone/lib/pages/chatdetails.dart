import 'package:emoji_picker/emoji_picker.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/models/message_model.dart';
import 'package:whatsapp_clone/models/models.dart';
import 'package:whatsapp_clone/pages/chattile.dart';
import 'package:whatsapp_clone/pages/messagedetails.dart';

class ChatDetailScreen extends StatefulWidget {
  ChatDetailScreen({Key key, this.Userdata}) : super(key: key);

  ChatModel Userdata;

  List<MessageModel> messageList = [
    MessageModel(
      isSent: true,
      isReaded: true,
      message: "hii How are you",
      sentAt: "9.00am",
    ),
    MessageModel(
      isSent: false,
      isReaded: true,
      message: "hello",
      sentAt: "2.00am",
    ),
    MessageModel(
      isSent: false,
      isReaded: true,
      message: "fine what about u.. ",
      sentAt: "3.00am",
    ),
    MessageModel(
      isSent: true,
      isReaded: true,
      message: "Fine...",
      sentAt: "4.30 am",
    ),
    MessageModel(
      isSent: false,
      isReaded: true,
      message: "ok good",
      sentAt: "3.00 am",
    ),
    MessageModel(
      isSent: true,
      isReaded: false,
      message: "Where are u...",
      sentAt: "3.00 am",
    ),
    MessageModel(
      isSent: true,
      isReaded: false,
      message: "How u...",
      sentAt: "3.00 am",
    ),
    MessageModel(
      isSent: false,
      isReaded: true,
      message: "ok good",
      sentAt: "3.00 am",
    ),
    MessageModel(
      isSent: true,
      isReaded: false,
      message: "Where are u...",
      sentAt: "3.00 am",
    ),
    MessageModel(
      isSent: true,
      isReaded: false,
      message: "How u...",
      sentAt: "3.00 am",
    ),
  ];

  @override
  _ChatDetailsState createState() => _ChatDetailsState();
}

class _ChatDetailsState extends State<ChatDetailScreen> {
  bool showsend = false;
  bool showemoji = false;
  FocusNode focusNode = FocusNode();

  TextEditingController messageController = TextEditingController();

  @override
  void initState() {
    super.initState();
    focusNode.addListener(() {
      if (focusNode.hasFocus) {
        print('if');
        setState(() {
          showemoji = false;
        });
      } else {
        print('else');
      }
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF075E54),
        leadingWidth: 100,
        leading: Padding(
          padding: const EdgeInsets.only(left: 22),
          child: Row(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pop(); //return to page
                },
                child: Padding(
                  padding: const EdgeInsets.only(right: 6),
                  child: const Icon(
                    Icons.arrow_back,
                    size: 24,
                  ),
                ),
              ),
              CircleAvatar(
                backgroundColor: Colors.grey,
                radius: 22,
                child: widget.Userdata.isgroup == true
                    ? Icon(
                        Icons.group,
                        size: 27,
                        color: Colors.white,
                      )
                    : Icon(
                        Icons.person,
                        size: 27,
                        color: Colors.white,
                      ),
              ),
            ],
          ),
        ),
        titleSpacing: 0,
        title: Container(
          margin: EdgeInsets.only(left: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.Userdata.name.toString(),
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              Text(
                widget.Userdata.updatedAt.toString(),
                style: TextStyle(fontSize: 15),
              ),
            ],
          ),
        ),
        actions: [
          const Icon(Icons.video_call),
          SizedBox(
            width: 16,
          ),
          Icon(Icons.call),
          PopupMenuButton(
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(
                  child: widget.Userdata.isgroup == true
                      ? Text('Group info')
                      : Text("view contact"),
                  value: 1,
                ),
                const PopupMenuItem(
                  child: Text('Media,links,and docs'),
                  value: 2,
                ),
                const PopupMenuItem(
                  child: Text('Search'),
                  value: 3,
                ),
                const PopupMenuItem(
                  child: Text('Mute notifications'),
                  value: 4,
                ),
                const PopupMenuItem(
                  child: Text('Wallpaper'),
                  value: 5,
                ),
                PopupMenuItem(
                  child: Text('More'),
                  value: 6,
                  onTap: () {
                    print('hii');
                  },
                )
              ];
            },
            onSelected: (value) {
              print(value);
            },
          ),
        ],
      ),
      body: Container(
        child: Stack(
          children: [
            Image.asset(
              'asset/images/back.jpeg',
              width: MediaQuery.of(context).size.width, //device width
              fit: BoxFit.cover,
            ),
            ListView.builder(
              itemBuilder: (context, index) {
                return MessageDetails(
                  messagedetails: widget.messageList[index],
                );
              },
              itemCount: widget.messageList.length,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width - 60,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          child: TextFormField(
                            controller: messageController,
                            focusNode: focusNode,
                            decoration: InputDecoration(
                                hintText: 'Type a message....',
                                prefixIcon: IconButton(
                                  icon: showemoji == false
                                      ? Icon(Icons.keyboard)
                                      : Icon(Icons.emoji_emotions_outlined),
                                  onPressed: () {
                                    focusNode.unfocus(); //keybord disabled
                                    setState(() {
                                      showemoji = !showemoji;
                                    });
                                  },
                                ),
                                suffixIcon: Padding(
                                  padding: const EdgeInsets.only(right: 8),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      IconButton(
                                        icon: Icon(Icons.attach_file),
                                        onPressed: () {
                                          showModalBottomSheet(
                                              context: context,
                                              builder: (Builder) => menu());
                                        },
                                      ),
                                      SizedBox(
                                        width: 3,
                                      ),
                                      Icon(Icons.camera_alt)
                                    ],
                                  ),
                                )),
                            onChanged: (value) {
                              if (value.length > 0) {
                                setState(() {
                                  showsend = true;
                                });
                              } else {
                                setState(() {
                                  showsend = false;
                                });
                              }
                            },
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: CircleAvatar(
                          backgroundColor: const Color(0xFF075E54),
                          radius: 25,
                          child: showsend == true
                              ? Icon(Icons.send)
                              : Icon(Icons.mic),
                        ),
                      )
                    ],
                  ),
                  showemoji == true ? SelectEmoji() : Container(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget SelectEmoji() {
    print("emoji running");
    return EmojiPicker(
      recommendKeywords: ['gd mng', 'hi'],
      onEmojiSelected: (emoji, category) {
        messageController.text = emoji.emoji;
      },
    );
  }

  Widget menu() {
    return Container(
      height: 278,
      width: MediaQuery.of(context).size.width,
      child: Card(
        margin: EdgeInsets.all(20),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 25),
          child: Column(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                iconwidget(
                  Icon(Icons.insert_drive_file),
                  Colors.indigo,
                  "Document",
                  () {
                    print("document");
                  },
                ),
                iconwidget(Icon(Icons.camera_alt), Colors.pink, "Camera", () {
                  print("camera");
                }),
                iconwidget(Icon(Icons.insert_photo), Colors.purple, "Gallery",
                    () {
                  print("print Gallery");
                }),
              ]),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  iconwidget(Icon(Icons.headset), Colors.orange, "Audio", () {
                    print("audio");
                  }),
                  iconwidget(Icon(Icons.location_pin), Colors.teal, "Location",
                      () {
                    print("location");
                  }),
                  iconwidget(Icon(Icons.contact_page), Colors.blue, "Contact",
                      () {
                    print("Contact");
                  })
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget iconwidget(Icon icon, Color color, String text, Function fun) {
    return GestureDetector(
      onTap: () {
        fun();
      },
      child: Column(
        children: [
          CircleAvatar(
            backgroundColor: color,
            radius: 30,
            child: icon,
          ),
          Text(text)
        ],
      ),
    );
  }
}
