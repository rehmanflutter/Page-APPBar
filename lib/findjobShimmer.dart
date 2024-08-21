import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class FindJobShimmer extends StatelessWidget {
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
          baseColor: Colors.grey.shade300,
          highlightColor: Colors.white,
          child: ListView.builder(
            itemCount: 2,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  popUp(context);
                },
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ListTile(
                          contentPadding: EdgeInsets.all(0),
                          leading: Container(
                            height: 52,
                            width: 48,
                            child: Stack(
                              children: [
                                Container(
                                  height: 48,
                                  width: 48,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all()),
                                ),
                                Positioned(
                                  bottom: 0,
                                  left: 9,
                                  child: Container(
                                    height: 11,
                                    width: 30,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          title: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ShimmerContainer(
                                  height: media.height * 0.02,
                                  width: 100,
                                  color: true),
                              ShimmerContainer(
                                  height: media.height * 0.02,
                                  width: 100,
                                  color: true),
                            ],
                          ),
                          subtitle: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ShimmerContainer(
                                  height: media.height * 0.02,
                                  width: 50,
                                  color: true),
                              ShimmerContainer(
                                  height: media.height * 0.02,
                                  width: 50,
                                  color: true),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Icon(Icons.circle),
                                Container(
                                    height: 15,
                                    child: VerticalDivider(
                                      thickness: 2,
                                      color: Color(0xffE0E4F5),
                                    )),
                                Icon(Icons.location_on_outlined)
                              ],
                            ),
                            ShimmerContainer(
                                height: media.height * 0.08,
                                //59,
                                width: media.width * 0.760,
                                color: true),
                          ],
                        ),

                        // Check Box Row

                        Row(
                          children: [
                            Checkbox(
                              activeColor: Color(0xffFBAF43),
                              side: BorderSide(color: Colors.grey),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              value: false,
                              onChanged: (values) {},
                            ),
                            ShimmerContainer(
                              height: media.height * 0.02,
                              width: media.width * 0.5,
                              color: true,
                            )
                          ],
                        ),

                        // Button Row Widget Data
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ShimmerContainer(
                              height: 43,
                              width: 145,
                              color: true,
                              circular: 20,
                            ),
                            ShimmerContainer(
                              height: 43,
                              width: 145,
                              color: true,
                              circular: 20,
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
        ));
  }

  void popUp(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          insetPadding: EdgeInsets.all(0),
          content: Column(
            children: [
              Container(
                height: 200,
                width: double.infinity,
                color: Color(0xff4c6174),
                child: CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.green,
                ),
              )
            ],
          ),
        );
      },
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
