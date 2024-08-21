import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class OrderRequistShimmer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
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
          child: Column(
            children: [
              SizedBox(
                height: 70,
              ),
              Center(
                child: ShimmerContainer(
                  height: media.height * 0.1,
                  width: media.width * 0.8,
                  boarder: true,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ShimmerContainer(
                            height: media.height * 0.02,
                            width: media.width * 0.5,
                            color: true,
                          ),
                          Icon(Icons.keyboard_arrow_up_sharp)
                        ],
                      ),
                      ShimmerContainer(
                        height: media.height * 0.04,
                        width: media.width * 0.7,
                        color: true,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: media.height * 0.07,
              ),
              ShimmerContainer(
                height: media.height * 0.230,
                width: media.width * 0.8,
                boarder: true,
                circular: 10,
                child: Column(
                  children: [
                    ShimmerContainer(
                      height: media.height * 0.04,
                      width: media.width * 0.8,
                      color: true,
                    ),
                    ListTile(
                      leading: CircleAvatar(),
                      title: Row(
                        children: [
                          ShimmerContainer(
                            height: media.height * 0.02,
                            width: media.height * 0.1,
                            color: true,
                          ),
                        ],
                      ),
                      subtitle: ShimmerContainer(
                        height: media.height * 0.02,
                        width: media.height * 0.03,
                        color: true,
                      ),
                      trailing: ShimmerContainer(
                        height: media.height * 0.02,
                        width: media.height * 0.1,
                        color: true,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ShimmerContainer(
                          height: media.height * 0.05,
                          width: media.height * 0.140,
                          color: true,
                          circular: 20,
                        ),
                        ShimmerContainer(
                          height: media.height * 0.05,
                          circular: 20,
                          width: media.height * 0.140,
                          color: true,
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
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
