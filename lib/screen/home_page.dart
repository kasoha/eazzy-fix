import 'package:eazzy_fix/screen/profile.dart';
import 'package:eazzy_fix/screen/splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:eazzy_fix/screen/job_opening.dart';
import 'package:eazzy_fix/screen/comment.dart';
import 'package:eazzy_fix/screen/employer_dashboard.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('EAZZY FIX JOB SEARCH'),
        elevation: 0,
        backgroundColor: Colors.lightGreenAccent,
        automaticallyImplyLeading: false,
        leading: IconButton(
          color: Colors.redAccent,
          icon: Icon(
            CupertinoIcons.person_crop_circle,
          ),
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => const Profile()));
          },
        ),
      ),
      body: Container(
        child: Row(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "WELCOME",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Colors.lightGreenAccent,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      //SPACE

      //BOTTOM NAVBAR

      bottomNavigationBar: BottomAppBar(
        color: Colors.lightGreenAccent,
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
