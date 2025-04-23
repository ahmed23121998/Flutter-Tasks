import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header Row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hello, Mo",
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        "Welcome Back",
                        style: TextStyle(fontSize: 16, color: Colors.grey[600]),
                      ),
                    ],
                  ),
                  Icon(Icons.notifications_none, size: 28),
                ],
              ),

              SizedBox(height: 20),

              // Today Card
              Container(
                height: 120,
                width: double.infinity,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Color(0xFF00ACC1),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Stack(
                  children: [
                    Padding(padding: const EdgeInsets.all(20)),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Today",
                          style: TextStyle(color: Colors.white, fontSize: 14),
                        ),
                        SizedBox(height: 6),
                        Text(
                          "2/10 Tasks",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Positioned(
                      right: 20,
                      bottom: 20,
                      height: 60,
                      child: Image.asset('assets/Images/Group.png'),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20),

              // To Do Section
              Row(
                children: [
                  Text(
                    "To Do",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                    decoration: BoxDecoration(
                      color: Color(0xfff0f0f0),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    margin: EdgeInsets.only(left: 10),
                    child: Text(
                      "3",
                      style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 10),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(child: todoCard("Project", "Redesign", "25th Oct")),
                  SizedBox(width: 8),
                  Expanded(
                    child: todoCard("Practise", "UX Research", "17th Jul"),
                  ),
                  SizedBox(width: 8),
                  Expanded(
                    child: todoCard("Duplicate", "Blog Sample", "20th Oct"),
                  ),
                ],
              ),

              SizedBox(height: 20),

              // In Progress Section
              Row(
                children: [
                  Text(
                    "In progress",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                    decoration: BoxDecoration(
                      color: Color(0xfff0f0f0),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    margin: EdgeInsets.only(left: 10),
                    child: Text(
                      "3",
                      style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              progressCard(
                "Tommy max's Project",
                "Create Ad Banner",
                "2 hours ago",
                0.7,
              ),
              progressCard(
                "Personal Work",
                "Create New Blog Post",
                "2 Days ago",
                0.45,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget todoCard(String tag, String title, String date) {
    return Container(
      width: 100,
      margin: EdgeInsets.only(right: 6),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(tag, style: TextStyle(fontSize: 10, color: Colors.grey[600])),
          SizedBox(height: 2),
          Text(
            title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
          ),
          SizedBox(height: 6),
          Row(
            children: [
              Icon(Icons.circle, size: 8, color: Colors.green),
              SizedBox(width: 4),
              Expanded(
                child: Text(
                  date,
                  style: TextStyle(fontSize: 8),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget progressCard(String tag, String title, String time, double progress) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                tag,
                style: TextStyle(fontSize: 12, color: Colors.grey[600]),
              ),
              SizedBox(height: 4),
              Text(
                title,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 4),
              Text(time, style: TextStyle(fontSize: 12, color: Colors.grey)),
            ],
          ),
          Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
              boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 4)],
            ),
            child: Text(
              "${(progress * 100).toInt()}%",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: const Color(0xff4C91FF),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
