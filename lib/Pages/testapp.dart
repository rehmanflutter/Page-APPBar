import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NetWorkPage extends StatelessWidget {
  final controller = Get.put(Getxcontrollercheck());

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(
              height: media.height * 0.06,
            ),
            Row(
              children: [
                Icon(Icons.arrow_back_ios_new_outlined,
                    color: Color(0xffff8800)),
                Text(
                  'NetWork',
                  style: TextStyle(fontSize: 17, color: Color(0xffff8800)),
                )
              ],
            ),
            SizedBox(
              height: media.height * 0.02,
            ),
            Text(
              'Open Network Stream',
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.w700),
            ),
            Divider(),
            Container(
              width: 335,
              // color: Colors.amber,
              child: Text(
                textAlign: TextAlign.center,
                'Enter any HTTP,RTSP,RTMP,MMS,FTP or UDP/RTP address to open this stream directly',
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ),
            ),
            SizedBox(
              height: media.height * 0.02,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                controller: controller.searchController,
                decoration: InputDecoration(
                  suffixIcon: Icon(
                    Icons.cancel,
                    color: Colors.grey,
                  ),
                  prefixText: '  ',
                ),
              ),
            ),
            SizedBox(
              height: media.height * 0.02,
            ),
            Container(
              width: media.width * 0.9,
              height: media.height * 0.06,
              child: ElevatedButton(
                onPressed: () {
                  controller.searchlist.add(controller.searchController.text);
                  controller.searchController.clear();
                },
                child: Text(
                  'Open Network Stream',
                  style: TextStyle(color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xffff8800),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
            Expanded(
              child: Obx(
                () => ListView.builder(
                  itemCount: controller.searchlist.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                      width: 300,
                      //    color: Colors.amber,
                      child: Text(
                        controller.searchlist[index],
                        style: TextStyle(
                          fontSize: 16,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Getxcontrollercheck extends GetxController {
  final searchController = TextEditingController();

  final RxList<String> searchlist = RxList.from(['One Search', 'TwoSearch']);
}
