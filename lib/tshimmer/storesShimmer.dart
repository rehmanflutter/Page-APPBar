import 'package:flutter/material.dart';
import 'package:pages/findjobShimmer.dart';
import 'package:shimmer/shimmer.dart';

class StorageShimmer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Shimmer.fromColors(
              baseColor: Colors.grey.shade300,
              highlightColor: Colors.white,
              child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: 3,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: ShimmerContainer(
                      height: 106,
                      width: double.infinity,
                      boarder: true,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: ShimmerContainer(
                              height: 92,
                              width: 92,
                              color: true,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5, bottom: 8),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 3,
                                ),
                                ShimmerContainer(
                                  height: 15,
                                  width: 100,
                                  color: true,
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.location_on_outlined,
                                      size: 13,
                                    ),
                                    ShimmerContainer(
                                      height: 10,
                                      width: 90,
                                      color: true,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Row(
                                  children: [
                                    ShimmerContainer(
                                      height: 20,
                                      width: 150,
                                      color: true,
                                    ),
                                  ],
                                ),
                                Row(
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
                            ),
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
      ),
    );
  }
}
