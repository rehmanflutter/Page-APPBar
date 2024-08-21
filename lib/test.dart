import 'package:flutter/material.dart';

class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade400,
        centerTitle: true,
        title: Text(
          'rehmanflutter',
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w600, color: Colors.white),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
                onPressed: () {
                  popup(context);
                },
                child: Text("Check Test")),
          )
        ],
      ),
    );
  }

  void popup(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(
            'Are you sure?',
            style: TextStyle(color: Color(0xff1f100b)),
          ),
          content: Container(
              width: 200,
              child: Text('User account will be deleted permanently')),
          actions: [
            GestureDetector(
              onTap: () {},
              child: Container(
                height: 35,
                width: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    color: Color(0xffff5353)),
                child: Center(
                  child: Text(
                    'Yes',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'No',
                  style: TextStyle(color: Color(0xff1f100b)),
                )),
          ],
        );
      },
    );
  }
}
