import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:pages/Pages/CardSwiper/controller.dart';

class Dashboard extends StatefulWidget {
  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  final controller = Get.put(DashboardController());

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   backgroundColor: Color(0xff463a68),
      //   centerTitle: true,
      //   title: Text(
      //     'rehmanfutter',
      //     style: TextStyle(
      //         fontSize: 20, fontWeight: FontWeight.w600, color: Colors.white),
      //   ),
      // ),
      body: Column(
        children: [
          SizedBox(
            height: 60,
          ),
          Swiper(
            itemWidth: media.width,
            itemHeight: controller.checkBox.value == true
                ? media.height * 0.478
                : media.height * 0.388,
            loop: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade300, // Shadow color
                        spreadRadius: 3, // Spread radius
                        blurRadius: 4, // Blur radius
                        offset: const Offset(0, 3), // Shadow position: x, y
                      ),
                    ],
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  child: Builder(builder: (context) {
                    return Padding(
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
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'images/profileimage.jpg'),
                                            fit: BoxFit.cover),
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                            color: Color(0xffFBAF43),
                                            width: 2)),
                                  ),
                                  Positioned(
                                    bottom: 0,
                                    left: 9,
                                    child: Container(
                                      height: 11,
                                      width: 30,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          border: Border.all(
                                            color: Color(0xffFBAF43),
                                          )),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Icon(
                                            Icons.star,
                                            size: 8,
                                            color: Colors.yellow,
                                          ),
                                          Text(
                                            '4.6',
                                            style: TextStyle(
                                                fontSize: 8,
                                                fontWeight: FontWeight.w500),
                                          )
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            title: Container(
                              width: media.width * 0.5,
                              // color: Colors.amber,
                              child: Text(
                                'Akbar Ali  slkndaslnkdklasndasklndaskldn',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            subtitle: Container(
                              width: media.width * 0.5,
                              // color: Colors.amber,
                              child: Text(
                                'I want to send cycle',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.grey),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            trailing: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  'Calculated Price',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey),
                                ),
                                RichText(
                                    text: TextSpan(children: [
                                  TextSpan(
                                    text: '26.7',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.black),
                                  ),
                                  TextSpan(
                                    text: 'SAR',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.grey),
                                  )
                                ]))
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
                                  SvgPicture.asset('images/Circle.svg'),
                                  Container(
                                      height: 15,
                                      child: VerticalDivider(
                                        thickness: 2,
                                        color: Color(0xffE0E4F5),
                                      )),
                                  SvgPicture.asset('images/Location.svg'),
                                ],
                              ),
                              Container(
                                height: media.height * 0.08,
                                //59,
                                width: media.width * 0.760,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color(0xffF3F6F8)),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            'Pick up',
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w500),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Container(
                                            width: media.width * 0.550,
                                            //  color: Colors.amber,
                                            child: Text(
                                              'Grand Truck road, Sadiqabad',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.grey),
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: media.height * 0.01,
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            'Drop off',
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w500),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Container(
                                            width: media.width * 0.550,
                                            //  color: Colors.amber,
                                            child: Text(
                                              'Grand Truck road, Sadiqabad',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.grey),
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),

                          // Check Box Row

                          Row(
                            children: [
                              Obx(
                                () => Checkbox(
                                  activeColor: Color(0xffFBAF43),
                                  side: BorderSide(color: Colors.grey),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  value: controller.checkBox.value,
                                  onChanged: (values) {
                                    controller.checkBox.value = values ?? false;
                                    setState(() {});
                                  },
                                ),
                              ),
                              Text(
                                'Your Desire Price',
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w500),
                              )
                            ],
                          ),

                          Obx(
                            () => Visibility(
                                visible: controller.checkBox.value,
                                child: Container(
                                    height: media.height * 0.07,
                                    width: media.width,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        border: Border.all(
                                            color: Color(0xffffF3F6F8))),
                                    child: Center(
                                      child: TextField(
                                        decoration: InputDecoration(
                                            hintText: 'SAR',
                                            prefixText: '    ',
                                            border: InputBorder.none),
                                      ),
                                    ))),
                          ),
                          SizedBox(
                            height: media.height * 0.02,
                          ),
                          // Button Row Widget Data
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 43,
                                width: 145,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Color(0xffF3F6F8)),
                                  child: Text(
                                    'Cancel',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        color: Colors.grey),
                                  ),
                                ),
                              ),
                              Container(
                                height: 43,
                                width: 145,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Color(0xffFBAF43)),
                                  child: Text(
                                    'Accept',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white),
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    );
                  }),
                ),
              );
            },
            itemCount: 3,
            layout: SwiperLayout.STACK,
          )
        ],
      ),
    );
  }
}

/// Controller Class Show
class DashboardController extends GetxController {
  RxBool checkBox = false.obs;
}
