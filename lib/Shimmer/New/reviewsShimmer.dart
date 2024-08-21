import 'package:flutter/material.dart';
import 'package:pages/findjobShimmer.dart';
import 'package:shimmer/shimmer.dart';

class ReviewShimmer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff463a68),
        centerTitle: true,
        title: Text(
          'rehmanflutter',
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w600, color: Colors.white),
        ),
      ),
      body: Shimmer.fromColors(
        baseColor: Colors.grey.shade300,
        highlightColor: Colors.white,
        child: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: ShimmerContainer(
                height: media.height * 0.09,
                width: double.infinity,
                circular: 10,
                boarder: true,
                child: ListTile(
                  leading: CircleAvatar(),
                  title: Row(
                    children: [
                      ShimmerContainer(
                        height: 10,
                        width: media.width * 0.3,
                        color: true,
                      ),
                    ],
                  ),
                  subtitle: Row(
                    children: [
                      ShimmerContainer(
                        height: 10,
                        width: media.width * 0.1,
                        color: true,
                      ),
                    ],
                  ),
                  trailing: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      ShimmerContainer(
                        height: 5,
                        width: 20,
                        color: true,
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.star,
                            size: 10,
                          ),
                          Icon(
                            Icons.star,
                            size: 10,
                          ),
                          Icon(
                            Icons.star,
                            size: 10,
                          ),
                          Icon(
                            Icons.star,
                            size: 10,
                          ),
                          Icon(
                            Icons.star,
                            size: 10,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
