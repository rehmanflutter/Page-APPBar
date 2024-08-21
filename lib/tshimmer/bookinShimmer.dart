import 'package:flutter/material.dart';
import 'package:pages/Shimmer/homeShimmers.dart';
import 'package:shimmer/shimmer.dart';

class BookingShimmer extends StatelessWidget {
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
              shrinkWrap: true,
              itemCount: 3,
              itemBuilder: (context, index) {
                return Padding(
                  padding:
                      const EdgeInsets.only(left: 15, right: 15, bottom: 15),
                  child: ShimmerContainer(
                    width: double.infinity,
                    height: 150,
                    boarder: true,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ShimmerContainer(
                                    height: 10,
                                    width: 150,
                                    color: true,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      ShimmerContainer(
                                        height: 10,
                                        width: 100,
                                        color: true,
                                      ),
                                      SizedBox(
                                        width: 50,
                                      ),
                                      ShimmerContainer(
                                        height: 10,
                                        width: 30,
                                        color: true,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              ShimmerContainer(
                                height: 40,
                                width: 100,
                                boarder: true,
                              ),
                            ],
                          ),
                          Divider(
                            color: Color(0xffA3A3A3),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ShimmerContainer(
                                height: 10,
                                width: 100,
                                color: true,
                              ),
                              Row(
                                children: [
                                  Icon(Icons.call),
                                  ShimmerContainer(
                                    height: 10,
                                    color: true,
                                    width: 100,
                                  )
                                ],
                              )
                            ],
                          )
                        ],
                      ),
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
