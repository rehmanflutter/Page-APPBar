import 'package:flutter/material.dart';
import 'package:pages/findjobShimmer.dart';
import 'package:shimmer/shimmer.dart';

class THomeShimmer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Shimmer.fromColors(
        baseColor: Colors.grey.shade300,
        highlightColor: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              ShimmerContainer(
                height: 130,
                width: double.infinity,
                color: true,
                circular: 20,
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ShimmerContainer(
                    height: 20,
                    width: 100,
                    color: true,
                  ),
                  ShimmerContainer(
                    height: 10,
                    width: 50,
                    color: true,
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: 4,
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, // Number of items in a row
                    mainAxisSpacing: 10.0, // Spacing along the main axis
                    crossAxisSpacing: 5.0, // Spacing along the cross axis
                    mainAxisExtent: 194),
                itemBuilder: (context, index) {
                  return Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: ShimmerContainer(
                        height: 194,
                        width: 100,
                        boarder: true,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ShimmerContainer(
                              height: 105,
                              width: 150,
                              color: true,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      ShimmerContainer(
                                        height: 10,
                                        width: 50,
                                        color: true,
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  ShimmerContainer(
                                    height: 15,
                                    width: 120,
                                    color: true,
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Icon(Icons.location_on_outlined),
                                          ShimmerContainer(
                                            height: 10,
                                            width: 30,
                                            color: true,
                                          ),
                                        ],
                                      ),
                                      const Row(
                                        children: [
                                          Icon(
                                            Icons.star,
                                            size: 8,
                                          ),
                                          Icon(
                                            Icons.star,
                                            size: 8,
                                          ),
                                          Icon(
                                            Icons.star,
                                            size: 8,
                                          ),
                                          Icon(
                                            Icons.star,
                                            size: 8,
                                          ),
                                          Icon(
                                            Icons.star,
                                            size: 8,
                                          )
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
