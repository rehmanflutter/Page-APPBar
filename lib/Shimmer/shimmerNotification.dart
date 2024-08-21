import 'package:flutter/material.dart';
import 'package:pages/findjobShimmer.dart';
import 'package:shimmer/shimmer.dart';

class NotificationShimmer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff463a68),
          centerTitle: true,
          title: Text(
            'rehmanflutter',
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.w600, color: Colors.white),
          ),
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.only(bottom: 15, left: 20, right: 20, top: 20),
              //s  color: Colors.white,
              child: Shimmer.fromColors(
                baseColor: Colors.grey.shade400,
                highlightColor: Colors.white,
                child: Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 0, horizontal: 5),
                    child: Row(
                      children: [
                        CircleAvatar(),
                        SizedBox(
                          width: 8,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(children: [
                              ShimmerContainer(
                                height: 10,
                                width: 150,
                                color: true,
                              ),
                            ]),
                            SizedBox(
                              height: 2,
                            ),
                            Row(children: [
                              ShimmerContainer(
                                height: 6,
                                width: 100,
                                color: true,
                              ),
                            ])
                          ],
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            SizedBox(
                              height: 30,
                            ),
                            ShimmerContainer(
                              height: 8,
                              width: 31,
                              color: true,
                            )
                          ],
                        )
                      ],
                    )),
              ),
            );
          },
        ));
  }
}
