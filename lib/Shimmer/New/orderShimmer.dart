import 'package:flutter/material.dart';
import 'package:pages/findjobShimmer.dart';
import 'package:shimmer/shimmer.dart';

class OrderShimmer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Color(0xff463a68),
        body: ListView.builder(
          itemCount: 2,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                height: media.height * 0.6,
                width: double.infinity,
                child: Shimmer.fromColors(
                    baseColor: Colors.grey.shade300,
                    highlightColor: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.check_circle_outline),
                              ShimmerContainer(
                                height: 8,
                                width: 40,
                                color: true,
                              )
                            ],
                          ),
                          SizedBox(
                            height: media.height * 0.01,
                          ),
                          ListTile(
                            contentPadding: EdgeInsets.all(0),
                            leading: CircleAvatar(),
                            title: Row(
                              children: [
                                ShimmerContainer(
                                  height: 10,
                                  width: media.width * 0.1,
                                  color: true,
                                ),
                              ],
                            ),
                            subtitle: Row(
                              children: [
                                ShimmerContainer(
                                  height: 10,
                                  width: media.width * 0.3,
                                  color: true,
                                ),
                              ],
                            ),
                            trailing: Column(
                              children: [
                                SizedBox(
                                  height: 6,
                                ),
                                ShimmerContainer(
                                  height: 10,
                                  width: media.width * 0.2,
                                  color: true,
                                ),
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              Icon(Icons.circle),
                              SizedBox(
                                width: 10,
                              ),
                              ShimmerContainer(
                                height: 10,
                                width: media.width * 0.4,
                                color: true,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: media.height * 0.03,
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
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    size: 30,
                                  ),
                                  Icon(Icons.star),
                                  Icon(Icons.star),
                                  Icon(Icons.star),
                                  Icon(Icons.star)
                                ],
                              ),
                              ShimmerContainer(
                                  height: media.height * 0.04,
                                  width: media.width * 0.1,
                                  color: true)
                            ],
                          ),
                          SizedBox(
                            height: media.height * 0.02,
                          ),
                          ShimmerContainer(
                              height: media.height * 0.01,
                              width: media.width * 0.2,
                              color: true),
                          SizedBox(
                            height: media.height * 0.02,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ShimmerContainer(
                                  height: media.height * 0.01,
                                  width: media.width * 0.2,
                                  color: true),
                              ShimmerContainer(
                                  height: media.height * 0.04,
                                  width: media.width * 0.2,
                                  color: true),
                            ],
                          ),
                        ],
                      ),
                    )),
              ),
            );
          },
        ));
  }
}
