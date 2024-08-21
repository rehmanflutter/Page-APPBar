import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class vehicleDetailShimmer extends StatelessWidget {
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
      body: ListView.builder(
        padding: EdgeInsets.only(top: 20),
        shrinkWrap: true,
        itemCount: 3,
        itemBuilder: (context, index) {
          return Container(
            height: media.height * 0.270,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: Colors.white),
            child: Shimmer.fromColors(
              baseColor: Colors.grey.shade300,
              highlightColor: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(right: 50, top: 15, left: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: media.width * 0.3,
                          //  color: Colors.amber,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(Icons.electric_car_sharp),
                              ShimmerContainer(
                                height: media.height * 0.01,
                                width: media.width * 0.170,
                                color: true,
                              ),
                            ],
                          ),
                        ),
                        ShimmerContainer(
                          height: media.height * 0.01,
                          width: media.width * 0.3,
                          color: true,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ShimmerContainer(
                          height: media.height * 0.02,
                          width: media.width * 0.4,
                          color: true,
                        ),
                        ShimmerContainer(
                          height: media.height * 0.02,
                          width: media.width * 0.2,
                          color: true,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: media.width * 0.4,
                      //  color: Colors.amber,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ShimmerContainer(
                            height: media.height * 0.02,
                            width: media.width * 0.1,
                            color: true,
                          ),
                          ShimmerContainer(
                            height: media.height * 0.01,
                            width: media.width * 0.2,
                            color: true,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: Icon(
                        Icons.keyboard_arrow_down,
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        },
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
