import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import 'package:navigation_view/item_navigation_view.dart';
import 'package:navigation_view/navigation_view.dart';
import 'package:pages/Pages/CardSwiper/dashboard.dart';
import 'package:pages/Pages/network.dart';
import 'package:pages/Pages/testapp.dart';
import 'package:pages/Pages/times.dart';
import 'package:pages/Shimmer/homeShimmers.dart';
import 'package:pages/ShimmerSelect/shimmerselect.dart';
import 'package:pages/tshimmer/homesshimmer.dart';

class FinalView extends StatefulWidget {
  const FinalView({super.key});

  @override
  State<FinalView> createState() => _FinalViewState();
}

class _FinalViewState extends State<FinalView> {
  late final ScrollController _scrollController;
  bool _atBottom = false;
  int _currentIndex = 0;

  final List<Widget> _pages = [
    HomeShimmers(),
    NetWorkPage(),
    THomeShimmer(),
    TimeSelects(),
    Dashboard(),
  ];

  @override
  void initState() {
    _scrollController = ScrollController();
    _scrollController.addListener(_scrollListener);
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  /// Scroll Listener
  void _scrollListener() {
    if (_scrollController.offset >=
            _scrollController.position.maxScrollExtent &&
        !_scrollController.position.outOfRange) {
      setState(() {
        _atBottom = true;
      });
    }
    if (_scrollController.offset <=
            _scrollController.position.minScrollExtent &&
        !_scrollController.position.outOfRange) {
      setState(() {
        _atBottom = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Scaffold(
      /// AppBar
      appBar: _appBar(context),
      extendBody: true,
      backgroundColor: theme.scaffoldBackgroundColor,
      body: SafeArea(
        child: _pages[_currentIndex], // Display the selected page
      ),
      bottomNavigationBar: NavigationView(
        onChangePage: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        curve: Curves.fastEaseInToSlowEaseOut,
        durationAnimation: const Duration(milliseconds: 400),
        backgroundColor: Colors.white,
        borderTopColor: Theme.of(context).brightness == Brightness.light
            ? _atBottom
                ? theme.primaryColor
                : null
            : null,
        color: theme.primaryColor,
        items: [
          ItemNavigationView(
              childAfter: Icon(
                IconlyBold.profile,
                color: theme.primaryColor,
                size: 35,
              ),
              childBefore: Icon(
                IconlyBroken.profile,
                color: Color(0xffd3d3d3),
                size: 30,
              )),
          ItemNavigationView(
              childAfter: Icon(
                IconlyBold.setting,
                color: theme.primaryColor,
                size: 35,
              ),
              childBefore: Icon(
                IconlyBroken.setting,
                color: Color(0xffd3d3d3),
                size: 30,
              )),
          ItemNavigationView(
              childAfter: Icon(
                IconlyBold.buy,
                color: theme.primaryColor,
                size: 35,
              ),
              childBefore: Icon(
                IconlyBroken.buy,
                color: Color(0xffd3d3d3),
                size: 30,
              )),
          ItemNavigationView(
              childAfter: Icon(
                IconlyBold.category,
                color: theme.primaryColor,
                size: 35,
              ),
              childBefore: Icon(
                IconlyBroken.category,
                color: Color(0xffd3d3d3),
                size: 30,
              )),
          ItemNavigationView(
              childAfter: Icon(
                IconlyBold.home,
                color: theme.primaryColor,
                size: 35,
              ),
              childBefore: Icon(
                IconlyBroken.home,
                color: Color(0xffd3d3d3),
                size: 30,
              )),
        ],
      ),
    );
  }

  /// AppBar
  AppBar _appBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.green,
      centerTitle: true,
      title: Animate(
        effects: [
          const BlurEffect(
              duration: Duration(seconds: 10)) //: const MoveEffect(),
        ],
        child: const Column(
          children: [
            Text(
              "Don't forget to Follow!",
              style: TextStyle(
                color: Colors.white, //Theme.of(context).primaryColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 2,
            ),
          ],
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 13),
          child: GestureDetector(
              onTap: () {
                Get.to(
                  ShimmerSelectToOpen(),
                );
              },
              child: Icon(
                IconlyBroken.setting,
                color: Colors.white,
              )),
        )
      ],
    );
  }
}
