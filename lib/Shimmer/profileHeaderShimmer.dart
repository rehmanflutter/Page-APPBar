import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ProfileHeaderShimmer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    return Center(
      child: Container(
        height: media.height * 0.130,
        width: media.width * 0.9,
        decoration: BoxDecoration(
          color: Colors.amber,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Shimmer.fromColors(
          baseColor: Colors.grey.shade300,
          highlightColor: Colors.white,
          child: ListTile(
            contentPadding: EdgeInsets.all(10),
            leading: Padding(
              padding: const EdgeInsets.only(bottom: 4),
              child: CircleAvatar(
                radius: 40,
              ),
            ),
            title: Row(
              children: [
                Container(
                  height: media.height * 0.02,
                  width: media.width * 0.4,
                  color: Colors.amber,
                ),
              ],
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  margin: EdgeInsets.all(3),
                  height: media.height * 0.02,
                  width: media.width * 0.3,
                  color: Colors.amber,
                ),
                Row(
                  children: [
                    Icon(Icons.star),
                    Icon(Icons.star),
                    Icon(Icons.star),
                    Icon(Icons.star),
                  ],
                )
                // Container(
                //   margin: EdgeInsets.all(3),
                //   height: media.height * 0.02,
                //   width: media.width * 0.4,
                //   color: Colors.amber,
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
