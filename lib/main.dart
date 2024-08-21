import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pages/AppBAr/app_bar.dart';
import 'package:pages/Json/appbar.dart';
import 'package:pages/Pages/Controler/timeselectControler.dart';
import 'package:pages/Pages/damo/controler.dart';
import 'package:pages/ShimmerSelect/shimmerselect.dart';
import 'package:pages/tshimmer/homesshimmer.dart';
import 'package:provider/provider.dart';

void main() => runApp(
      MyApp(),
    );

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => TimeControler(),
        ),
        ChangeNotifierProvider(
          create: (context) => VehicleDetailsController(),
        ),
      ],
      //    rehmanflutter

      child: GetMaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: FinalView(), //ShimmerSelectToOpen(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
