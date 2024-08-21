import 'package:flutter/material.dart';
import 'package:pages/Pages/CardSwiper/dashboard.dart';
import 'package:pages/Pages/damo/page.dart';
import 'package:pages/Pages/network.dart';
import 'package:pages/Pages/testapp.dart';
import 'package:pages/Pages/times.dart';
import 'package:pages/Shimmer/New/ansShimmer.dart';
import 'package:pages/Shimmer/New/driverhomeshimmer.dart';
import 'package:pages/Shimmer/New/orderShimmer.dart';
import 'package:pages/Shimmer/New/profileshimmer.dart';
import 'package:pages/Shimmer/New/reviewsShimmer.dart';
import 'package:pages/Shimmer/homeShimmer.dart';
import 'package:pages/Shimmer/homeShimmers.dart';
import 'package:pages/Shimmer/orderRequestshimmer.dart';
import 'package:pages/Shimmer/shimmerNotification.dart';
import 'package:pages/Shimmer/vehicleshimmer.dart';
import 'package:pages/civice.dart';
import 'package:pages/findjobShimmer.dart';
import 'package:pages/test.dart';
import 'package:pages/tshimmer/bookinShimmer.dart';
import 'package:pages/tshimmer/chatshimmer.dart';
import 'package:pages/tshimmer/homesshimmer.dart';
import 'package:pages/tshimmer/storesShimmer.dart';

class ShimmerSelectToOpen extends StatelessWidget {
  List classesname = [
    'CardSwiper',
    'TimeSelects',
    'VehicleDetails',
    'NetWorkPage',
    'NetWorkScreen',
    'DateScreen',
    'Test',
  ];
  List classOpen = [
    Dashboard(),
    TimeSelects(),
    VehicleDetails(),
    NetWorkPage(),
    NetWorkScreen(),
    DateScreen(),
    Test(),
  ];

  List<String> listnameShimmer = [
    "ChatsShimmer",
    "BookingShimmer",
    "StorageShimmer",
    "THomeShimmer()",
    'OrderShimmer',
    'ReviewShimmer',
    'Notification_Shimmer',
    'ProfileShimmer',
    'AnsShimmer',
    'OrderRequistShimmer',
    'VehicleDetailShimmer',
    'FindJobShimmer',
    'HomeShimmers',
    'HomeShmmer',
    'DriverHomeShimmer'
  ];
  List<Widget> classOpenShimmer = [
    ChatsShimmer(),
    BookingShimmer(),
    StorageShimmer(),
    THomeShimmer(),
    OrderShimmer(),
    ReviewShimmer(),
    NotificationShimmer(),
    ProfileShimmer(),
    AnsShimmer(),

    OrderRequistShimmer(),
    vehicleDetailShimmer(),
    FindJobShimmer(),
    //  Pages

    HomeShimmers(),
    HomeShmmer(),
    DriverHomeShimmer()

    //  class
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // specify the number of tabs

      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue.shade400,
          centerTitle: true,
          title: Text(
            'rehmanflutter',
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.w600, color: Colors.white),
          ),
          bottom: TabBar(
            labelColor: Colors.white,

            indicatorColor: Colors.white,
            //  indicatorWeight: 7,
            tabs: [
              Tab(
                child: Text('  Shimmer  '),
              ),
              Tab(
                child: Text('  Classes  '),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ListView.builder(
              padding: EdgeInsets.only(top: 20),
              itemCount: listnameShimmer.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => classOpenShimmer[index],
                        ),
                      );
                    },
                    child: Container(
                      height: 48,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey.shade300),
                      ),
                      child: Center(
                        child: Text(
                          listnameShimmer[index],
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),

            ///  @nd Tab
            ///
            ///
            ///
            ///
            ListView.builder(
              padding: EdgeInsets.only(top: 20),
              itemCount: classesname.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => classOpen[index],
                        ),
                      );
                    },
                    child: Container(
                      height: 48,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey.shade300),
                      ),
                      child: Center(
                        child: Text(
                          classesname[index],
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
