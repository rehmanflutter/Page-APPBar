import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class AnsShimmer extends StatelessWidget {
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
        baseColor: Colors.grey.shade300,
        highlightColor: Colors.white,
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ListView.builder(
              itemCount: 3,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 30, left: 5, right: 5),
                  child: Column(
                    children: [
                      ListTile(
                        contentPadding: EdgeInsets.all(0),
                        leading: CircleAvatar(),
                        title: Row(
                          children: [
                            ShimmerContainer(
                              height: 10,
                              width: 100,
                              color: true,
                              circular: 10,
                            ),
                          ],
                        ),
                        subtitle: Row(
                          children: [
                            ShimmerContainer(
                              height: 10,
                              width: 60,
                              color: true,
                              circular: 10,
                            ),
                          ],
                        ),
                      ),
                      ShimmerContainer(
                        height: 10,
                        width: double.infinity,
                        color: true,
                        circular: 10,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(children: [
                        ShimmerContainer(
                          height: 10,
                          width: 100,
                          color: true,
                          circular: 10,
                        ),
                      ]),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(Icons.favorite),
                          ShimmerContainer(
                            height: 10,
                            width: 40,
                            color: true,
                            circular: 10,
                          ),
                        ],
                      )
                    ],
                  ),
                );
              },
            )),
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
