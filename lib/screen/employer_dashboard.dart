import 'package:eazzy_fix/screen/comment.dart';
import 'package:eazzy_fix/screen/home_page.dart';
import 'package:eazzy_fix/screen/job_opening.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:eazzy_fix/screen/employer_dashboard.dart';

class EmployerDashboard extends StatelessWidget {
  const EmployerDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        color: Colors.blueGrey,
        shape: CircularNotchedRectangle(),
        notchMargin: 5,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: [
            IconButton(
                icon: Icon(
                  CupertinoIcons.home,
                ),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const HomePage()));
                }),
            IconButton(
                icon: Icon(
                  CupertinoIcons.plus_bubble,
                ),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const EmployerDashboard()));
                }),
            IconButton(
                icon: Icon(
                  CupertinoIcons.news,
                ),
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const Comment()));
                }),
            IconButton(
                icon: Icon(
                  CupertinoIcons.bag,
                ),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const JobOpening()));
                }),
          ],
        ),
      ),
    );
  }
}
