import 'package:flutter/material.dart';
import 'package:pages/tshimmer/bookinShimmer.dart';
import 'package:pages/tshimmer/homesshimmer.dart';

class Serch extends StatefulWidget {
  @override
  State<Serch> createState() => _SerchState();
}

class _SerchState extends State<Serch> {
  List classes = [
    BookingShimmer(),
    Center(child: Text('data')),
    THomeShimmer(),
    Text('data')
  ];
  var courentIndet = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: classes[courentIndet],
      bottomNavigationBar: BottomAppBar(
          child: Container(
        width: 375,
        height: 70,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30)),
          // color: Color(0xFFFFFFFF),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                IconButton(
                  onPressed: (() {
                    courentIndet = 0;

                    setState(() {});
                  }),
                  icon: Icon(
                    Icons.home,
                  ),
                ),
                Text('Home')
              ],
            ),
            IconButton(
                onPressed: (() {
                  setState(() {
                    courentIndet = 1;
                  });
                }),
                icon: Icon(Icons.favorite)),
            IconButton(
                onPressed: (() {
                  setState(() {
                    courentIndet = 2;
                  });
                }),
                icon: Icon(Icons.event_seat_outlined)),
            IconButton(
                onPressed: (() {
                  setState(() {
                    courentIndet = 3;
                  });
                }),
                icon: Icon(Icons.face)),
          ],
        ),
      )),
    );
  }
}
