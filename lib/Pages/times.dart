import 'package:flutter/material.dart';
import 'package:pages/Pages/Controler/timeselectControler.dart';
import 'package:provider/provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class TimeSelects extends StatefulWidget {
  @override
  State<TimeSelects> createState() => _TimeSelectState();
}

class _TimeSelectState extends State<TimeSelects> {
  Map<int, List<int>> selectLists = {};
  @override
  Widget build(BuildContext context) {
    final controler = Provider.of<TimeControler>(context, listen: false);

    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.blue.shade400,
      //   centerTitle: true,
      //   title: Text(
      //     'rehmanflutter',
      //     style: TextStyle(
      //         fontSize: 20, fontWeight: FontWeight.w600, color: Colors.white),
      //   ),
      // ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 25,
                ),
                Consumer<TimeControler>(
                  builder: (context, value, child) => Container(
                    height: 300,
                    width: 300,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: SfDateRangePicker(
                      selectionMode: value.selectionMode,
                      onSelectionChanged:
                          (DateRangePickerSelectionChangedArgs args) {
                        value.updateSelectedDateRange(args);
                      },
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 150,
                  width: 300,
                  //color: Colors.amber,
                  child: PageView.builder(
                    controller: controler.pageconteroler,
                    itemBuilder: (context, pageIndex) {
                      List<String> timeList;
                      switch (pageIndex) {
                        case 0:
                          timeList = controler.time0;
                          break;
                        case 1:
                          timeList = controler.time1;
                          break;
                        case 2:
                          timeList = controler.time2;
                          break;
                        case 3:
                          timeList = controler.time3;
                          break;
                        default:
                          timeList = [];
                      }

                      if (!selectLists.containsKey(pageIndex)) {
                        selectLists[pageIndex] = [];
                      }

                      return Container(
                        height: 150,
                        width: 300,
                        // color: Colors.amber,
                        child: GridView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: 12,
                          itemBuilder: (context, index) {
                            bool isSelect =
                                selectLists[pageIndex]!.contains(index);
                            return GestureDetector(
                              onTap: () {
                                if (isSelect) {
                                  selectLists[pageIndex]!.remove(index);
                                } else {
                                  selectLists[pageIndex]!.add(index);
                                }
                                setState(() {});
                              },
                              child: Consumer<TimeControler>(
                                builder: (context, value, child) => Container(
                                  height: 30,
                                  width: 50,
                                  child: Center(
                                    child: Text(timeList[index].toString()),
                                  ),
                                  decoration: BoxDecoration(
                                    border:
                                        Border.all(color: Color(0xffb094df)),
                                    color: isSelect == true
                                        ? Color(0xffb094df)
                                        : Colors.transparent,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                            );
                          },
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 4,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 5,
                            mainAxisExtent: 35,
                          ),
                        ),
                      );
                    },
                    itemCount: 4,
                  ),
                ),
                // SizedBox(
                //   height: 5,
                // ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                        onPressed: () {
                          controler.pageconteroler.nextPage(
                              duration: Duration(microseconds: 10000),
                              curve: Curves.linear);
                        },
                        icon: Icon(Icons.arrow_back_ios_outlined)),
                    SmoothPageIndicator(
                      controller: controler.pageconteroler,
                      count: 4,
                      effect: WormEffect(
                          dotHeight: 10,
                          dotWidth: 10,
                          dotColor: Colors.grey.shade300,
                          activeDotColor: Colors.green),
                    ),
                  ],
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Choose date and hour',
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff2bcebf),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25))),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
