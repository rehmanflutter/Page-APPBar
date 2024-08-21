import 'package:flutter/material.dart';

class NetWorkScreen extends StatelessWidget {
  const NetWorkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: media.height * 0.1,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                'NetWork',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
              ),
            ),
            Divider(),
            ListtileCustom(
              title: 'Open Network Stream',
              subtitle: 'Play stream directly without downloading',
              startIcon: Icon(
                Icons.wifi,
                color: Colors.orange,
              ),
              endwidget: Icon(
                Icons.arrow_forward_ios_outlined,
                color: Colors.grey,
              ),
              fun: () {},
            )
          ],
        ),
      ),
    );
  }
}

class ListtileCustom extends StatelessWidget {
  final String title;
  final String subtitle;
  final VoidCallback fun;
  final Widget startIcon;
  final Widget? endwidget;

  ListtileCustom(
      {required this.title,
      required this.subtitle,
      required this.startIcon,
      required this.fun,
      this.endwidget});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        fun!;
      },
      title: Text(
        title,
        style: TextStyle(
          fontSize: 17,
          fontWeight: FontWeight.w500,
        ),
      ),
      subtitle: Text(
        subtitle,
        style: TextStyle(fontSize: 12, color: Colors.grey),
      ),
      leading: startIcon,
      trailing: endwidget,
    );
  }
}
