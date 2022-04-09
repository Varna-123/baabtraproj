//  import 'package:flutter/material.dart';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/pages/callspage.dart';
import 'package:whatsapp_clone/pages/camera.dart';
import 'package:whatsapp_clone/pages/chatpages.dart';
import 'package:whatsapp_clone/pages/statuspages.dart';
import 'package:whatsapp_clone/sample.dart';

void main() async {
  
  WidgetsFlutterBinding.ensureInitialized();

  camera = await availableCameras();

  runApp(const Whatsaap());
}

class Whatsaap extends StatelessWidget {
  //no state change
  const Whatsaap({Key key}) : super(key: key); //constructor

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homescreen(),

      ///widget
    );
  }
}

class Homescreen extends StatefulWidget {
  //rebuild entire ui
  Homescreen({Key key}) : super(key: key);

  @override
  _HomescreenState createState() => _HomescreenState(); //create state
}

class _HomescreenState extends State<Homescreen>

    with SingleTickerProviderStateMixin {
  TabController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _controller = TabController(length: 4, vsync: this, initialIndex: 1);
  }

  //used tomanage state
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      ///remove unwanted topbar
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Whatsaap',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          actions: [
            const Icon(Icons.search),
            const SizedBox(
              width: 5,
            ),
            // IconButton(
            //     onPressed: () {
            //       print('hii');
            //     },
            //  icon: Icon(Icons.more_vert)),

            PopupMenuButton(
              itemBuilder: (BuildContext context) {
                return [
                  const PopupMenuItem(
                    child: Text('New group'),
                    value: 1,
                  ),
                  const PopupMenuItem(
                    child: Text('New broadcast'),
                    value: 2,
                  ),
                  const PopupMenuItem(
                    child: Text('Linked devices'),
                    value: 3,
                  ),
                  const PopupMenuItem(
                    child: Text('Starred messages'),
                    value: 4,
                  ),
                  const PopupMenuItem(
                    child: Text('Payments'),
                    value: 5,
                  ),
                  PopupMenuItem(
                    child: Text('Settings'),
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
            const SizedBox(
              //spacing
              width: 6,
            )
          ],
          bottom: TabBar(
            controller: _controller,
            tabs: const [
              Icon(Icons.camera_alt),
              Text('Chats'),
              Text('Status'),
              Text('Calls'),
            ],
          ),
          backgroundColor: Color(0xFF075E54),
        ),
        body: TabBarView(
          children: [
            Camera(),
            Chat(),
            Status(),
            Calls(),
          ],
          controller: _controller,
        ),
      ),
    );
  }
}
