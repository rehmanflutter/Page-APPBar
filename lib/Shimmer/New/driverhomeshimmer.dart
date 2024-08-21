import 'package:flutter/material.dart';
import 'package:pages/findjobShimmer.dart';
import 'package:shimmer/shimmer.dart';

class DriverHomeShimmer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;

    return Scaffold(
      //   backgroundColor: Color(0xff463a68),
      body: SafeArea(
        child: Shimmer.fromColors(
            baseColor: Colors.grey.shade300,
            highlightColor: Colors.white,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(),
                      ShimmerContainer(
                        height: 40,
                        width: 40,
                        color: true,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: media.height * 0.03,
                  ),
                  ShimmerContainer(
                    height: 16,
                    width: media.width * 0.3,
                    color: true,
                  ),
                  SizedBox(
                    height: media.height * 0.02,
                  ),
                  Row(
                    children: [
                      ShimmerContainer(
                        height: 15,
                        width: media.width * 0.3,
                        color: true,
                      ),
                      Icon(
                        Icons.check_circle,
                        size: 20,
                      )
                    ],
                  ),
                  SizedBox(
                    height: media.height * 0.02,
                  ),
                  ShimmerContainer(
                    height: 15,
                    width: media.width * 0.4,
                    color: true,
                  ),
                  SizedBox(
                    height: media.height * 0.04,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(),
                          SizedBox(
                            width: 10,
                          ),
                          ShimmerContainer(
                            height: 15,
                            width: media.width * 0.3,
                            color: true,
                          ),
                        ],
                      ),
                      ShimmerContainer(
                        height: 15,
                        width: media.width * 0.2,
                        color: true,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: media.height * 0.02,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Icon(Icons.circle),
                          Container(
                              height: media.height * 0.06,
                              child: VerticalDivider(
                                thickness: 2,
                                color: Color(0xffE0E4F5),
                              )),
                          Icon(Icons.location_on_outlined)
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ShimmerContainer(
                              height: media.height * 0.01,
                              //59,
                              width: media.width * 0.2,
                              color: true),
                          SizedBox(
                            height: 5,
                          ),
                          ShimmerContainer(
                              height: media.height * 0.04,
                              //59,
                              width: media.width * 0.730,
                              color: true),

                          //  2dn
                          SizedBox(
                            height: media.height * 0.03,
                          ),

                          ShimmerContainer(
                              height: media.height * 0.01,
                              //59,
                              width: media.width * 0.2,
                              color: true),
                          SizedBox(
                            height: 5,
                          ),
                          ShimmerContainer(
                              height: media.height * 0.04,
                              //59,
                              width: media.width * 0.730,
                              color: true),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: media.height * 0.02,
                  ),
                  ShimmerContainer(
                    height: media.height * 0.01,
                    width: media.width * 0.3,
                    color: true,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ShimmerContainer(
                          height: media.height * 0.02,
                          width: media.width * 0.4,
                          color: true),
                      ShimmerContainer(
                          height: media.height * 0.02,
                          width: media.width * 0.2,
                          color: true),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ShimmerContainer(
                          height: media.height * 0.02,
                          width: media.width * 0.2,
                          color: true),
                      ShimmerContainer(
                          height: media.height * 0.02,
                          width: media.width * 0.1,
                          color: true),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: ShimmerContainer(
                        height: media.height * 0.05,
                        width: media.width * 0.8,
                        color: true),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
