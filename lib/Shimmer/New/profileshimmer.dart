import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ProfileShimmer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff463a68),
        centerTitle: true,
        title: Text(
          'rehmanfutter',
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w600, color: Colors.white),
        ),
      ),
      body: Shimmer.fromColors(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 60,
                ),
                SizedBox(
                  height: 10,
                ),
                ShimmerContainer(
                  height: 10,
                  width: 40,
                  color: true,
                ),
                SizedBox(
                  height: 5,
                ),
                ShimmerContainer(
                  height: 10,
                  width: 60,
                  color: true,
                ),
                SizedBox(
                  height: 10,
                ),
                ShimmerContainer(
                  height: 70,
                  width: double.infinity,
                  circular: 40,
                  color: true,
                ),
                SizedBox(
                  height: 10,
                ),
                ShimmerContainer(
                  height: 16,
                  width: 60,
                  color: true,
                ),
                SizedBox(
                  height: 10,
                ),
                ShimmerContainer(
                  height: 10,
                  width: double.infinity,
                  color: true,
                ),
                SizedBox(
                  height: 5,
                ),
                ShimmerContainer(
                  height: 10,
                  width: 280,
                  color: true,
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ShimmerContainer(
                      height: 16,
                      width: 60,
                      color: true,
                    ),
                    ShimmerContainer(
                      height: 16,
                      width: 60,
                      color: true,
                    ),
                    ShimmerContainer(
                      height: 16,
                      width: 60,
                      color: true,
                    ),
                    ShimmerContainer(
                      height: 16,
                      width: 60,
                      color: true,
                    ),
                  ],
                ),
                SizedBox(
                  height: 16,
                )
              ],
            ),
          ),
          baseColor: Colors.grey.shade300,
          highlightColor: Colors.white),
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
