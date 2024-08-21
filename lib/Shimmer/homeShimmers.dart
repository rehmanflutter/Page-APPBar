import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class HomeShimmers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Color(0xff463a68),
      //   centerTitle: true,
      //   title: Text(
      //     'rehmanflutter',
      //     style: TextStyle(
      //         fontSize: 20, fontWeight: FontWeight.w600, color: Colors.white),
      //   ),
      // ),

      //    backgroundColor: Colors.amber,
      body: SafeArea(
        child: Shimmer.fromColors(
          baseColor: Colors.grey.shade300,
          highlightColor: Colors.white,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10,
                ),
                CircleAvatar(
                  radius: 25,
                ),
                SizedBox(
                  height: media.height * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ShimmerContainer(
                      height: media.height * 0.02,
                      width: media.width * 0.3,
                      color: true,
                    ),
                    ShimmerContainer(
                      height: media.height * 0.02,
                      width: media.width * 0.3,
                      color: true,
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ShimmerContainer(
                      height: media.height * 0.02,
                      width: media.width * 0.3,
                      color: true,
                    ),
                    Switch(
                      value: true,
                      onChanged: (value) {},
                    ),
                  ],
                ),
                SizedBox(
                  height: media.height * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ShimmerContainer(
                      height: media.height * 0.02,
                      width: media.width * 0.3,
                      color: true,
                    ),
                    ShimmerContainer(
                      height: media.height * 0.02,
                      width: media.width * 0.3,
                      color: true,
                    )
                  ],
                ),
                SizedBox(
                  height: media.height * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ShimmerContainer(
                      height: media.height * 0.140,
                      width: media.width * 0.4,
                      boarder: true,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ShimmerContainer(
                            height: media.height * 0.02,
                            width: media.width * 0.2,
                            color: true,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          ShimmerContainer(
                            height: media.height * 0.04,
                            width: media.width * 0.3,
                            boarder: true,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 70),
                              child: ShimmerContainer(
                                height: media.height * 0.02,
                                width: media.width * 0.02,
                                color: true,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    ShimmerContainer(
                      height: media.height * 0.140,
                      width: media.width * 0.4,
                      boarder: true,
                      child: Container(
                        height: media.height * 0.09,
                        margin: EdgeInsets.all(5),
                        width: media.width * 0.9,
                        decoration: BoxDecoration(
                            border: Border.all(width: 13),
                            shape: BoxShape.circle),
                      ),
                    )
                  ],
                ),

                // Last Row
                SizedBox(
                  height: media.height * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ShimmerContainer(
                      height: media.height * 0.140,
                      width: media.width * 0.3,
                      boarder: true,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ShimmerContainer(
                            height: media.height * 0.02,
                            width: media.width * 0.2,
                            color: true,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          ShimmerContainer(
                            height: media.height * 0.02,
                            width: media.width * 0.1,
                            color: true,
                          ),
                        ],
                      ),
                    ),
                    ShimmerContainer(
                      height: media.height * 0.140,
                      width: media.width * 0.3,
                      boarder: true,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ShimmerContainer(
                            height: media.height * 0.02,
                            width: media.width * 0.2,
                            color: true,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          ShimmerContainer(
                            height: media.height * 0.02,
                            width: media.width * 0.1,
                            color: true,
                          ),
                        ],
                      ),
                    ),
                    ShimmerContainer(
                      height: media.height * 0.140,
                      width: media.width * 0.3,
                      boarder: true,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ShimmerContainer(
                            height: media.height * 0.02,
                            width: media.width * 0.2,
                            color: true,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          ShimmerContainer(
                            height: media.height * 0.02,
                            width: media.width * 0.1,
                            color: true,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ShimmerContainer extends StatelessWidget {
  final double height;
  final double width;
  final bool? color;
  final bool? boarder;
  final Widget? child;
  final double? circular;
  ShimmerContainer(
      {required this.height,
      required this.width,
      this.boarder,
      this.child,
      this.circular = 7,
      this.color});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(circular!),
          border: boarder == true ? Border.all() : null,
          color: color == true ? Colors.amber : null),
      child: child,
    );
  }
}
