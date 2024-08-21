import 'package:flutter/material.dart';
import 'package:pages/Pages/damo/controler.dart';
import 'package:provider/provider.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class DateScreen extends StatefulWidget {
  @override
  State<DateScreen> createState() => _DateState();
}

class _DateState extends State<DateScreen> {
  @override
  Widget build(BuildContext context) {
    //   final controler = Provider.of<DateControler>(context, listen: false);

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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Center(
          child: Consumer(
            builder: (context, value, child) => Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10),
              ),
              child: SfDateRangePicker(
                // selectionMode: value.selectionMode,
                onSelectionChanged: (DateRangePickerSelectionChangedArgs args) {
                  // value.updateSelectedDateRange(args);
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
