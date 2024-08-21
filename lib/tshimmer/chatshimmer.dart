import 'package:flutter/material.dart';
import 'package:pages/Shimmer/homeShimmers.dart';
import 'package:shimmer/shimmer.dart';

class ChatsShimmer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Shimmer.fromColors(
            baseColor: Colors.grey.shade300,
            highlightColor: Colors.white,
            child: ListView.builder(
              padding: EdgeInsets.all(0),
              itemCount: 3,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Padding(
                  padding:
                      const EdgeInsets.only(bottom: 10, left: 20, right: 20),
                  child: ShimmerContainer(
                    height: 115,
                    width: double.infinity,
                    boarder: true,
                    child: Column(
                      children: [
                        ListTile(
                          onTap: () {
                            Navigator.pushNamed(context, '/ChatMessages');
                          },
                          contentPadding: EdgeInsets.only(left: 5),
                          leading: CircleAvatar(
                            radius: 25,
                          ),
                          title: Row(
                            children: [
                              ShimmerContainer(
                                height: 15,
                                width: 70,
                                color: true,
                              ),
                            ],
                          ),
                          subtitle: Row(
                            children: [
                              ShimmerContainer(
                                height: 10,
                                width: 130,
                                color: true,
                              ),
                            ],
                          ),
                        ),
                        Divider(
                          height: 0,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 5,
                            ),
                            ShimmerContainer(
                              height: 25,
                              width: 70,
                              color: true,
                            ),
                            SizedBox(
                              width: 100,
                            ),
                            ShimmerContainer(
                              width: 100,
                              height: 10,
                              color: true,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
