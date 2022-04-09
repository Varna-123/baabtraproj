import 'package:firebasetesting/login/logindetails.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Getx extends StatelessWidget {
  const Getx({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              Get.snackbar(
                'HII EVERYOONE',
                'GOOD MNG',
                backgroundColor: Colors.lightGreen,
                icon: Icon(Icons.person),
                snackPosition: SnackPosition.BOTTOM,
              );
            },
            child: Text('click here'),
          ),
          TextButton(
            onPressed: () {
              Get.to<dynamic>(Login());
            },
            child: Text('Go to login'),
          )
        ],
      ),
    ));
  }
}
