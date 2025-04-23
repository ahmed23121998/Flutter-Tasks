import 'package:flutter/material.dart';

class ProjectOverviewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        actions: [Icon(Icons.search)],
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          TaskCard(
            title: "VR Course",
            progress: "13/13 Tasks – 100%",
            backgroundColor: Color(0xFF61DE70),
            avatars: ["assets/Images/avatar.png", "assets/Images/avatar.png"],
            illustration: "assets/Images/(1).png",
          ),
          TaskCard(
            title: "Community",
            progress: "2/8 Tasks – 35%",
            backgroundColor: Color(0xFF19173D),
            avatars: [
              "assets/Images/avatar.png",
              "assets/Images/avatar2.png",
              "assets/Images/avatar.png",
              "assets/Images/avatar2.png",
            ],
            illustration: "assets/Images/(2).png",
          ),
          TaskCard(
            title: "SMM Course",
            progress: "4/7 Tasks – 57%",
            backgroundColor: Color(0xFF9327F0),
            avatars: [
              "assets/Images/avatar.png",
              "assets/Images/avatar2.png",
              "assets/Images/avatar.png",
            ],
            illustration: "assets/Images/(3).png",
          ),
        ],
      ),
    );
  }
}

class TaskCard extends StatelessWidget {
  final String title;
  final String progress;
  final Color backgroundColor;
  final List<String> avatars;
  final String illustration;

  TaskCard({
    required this.title,
    required this.progress,
    required this.backgroundColor,
    required this.avatars,
    required this.illustration,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(bottom: 16.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(35)),
      child: Container(
        padding: EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(35),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children:
                      avatars
                          .map(
                            (avatar) => Padding(
                              padding: const EdgeInsets.only(right: 4.0),
                              child: CircleAvatar(
                                backgroundImage: AssetImage(avatar),
                                radius: 16,
                              ),
                            ),
                          )
                          .toList(),
                ),
                Image.asset(illustration, height: 100, fit: BoxFit.cover),
              ],
            ),
            SizedBox(height: 8.0),
            Text(progress, style: TextStyle(color: Colors.white, fontSize: 16)),
            SizedBox(height: 4.0),
            Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
