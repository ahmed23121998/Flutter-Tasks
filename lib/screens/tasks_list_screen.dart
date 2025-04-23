import 'package:flutter/material.dart';

class TasksListScreen extends StatelessWidget {
  const TasksListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
        title: const Text(
          "Tayo's Projects",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [IconButton(icon: const Icon(Icons.add), onPressed: () {})],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Filter Buttons
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  FilterButton(
                    label: "All",
                    count: 17,
                    color: Color(0xff0DA6C2),
                    isSelected: true,
                  ),
                  const SizedBox(width: 8),
                  FilterButton(
                    label: "To Do",
                    count: 5,
                    color: Color(0xff7B78AA),
                    isSelected: true,
                  ),
                  const SizedBox(width: 8),
                  FilterButton(
                    label: "In Progress",
                    count: 3,
                    color: Color(0xffFFC239),
                    isSelected: true,
                  ),
                  const SizedBox(width: 8),
                  FilterButton(
                    label: "Done",
                    count: 0,
                    color: Color(0xffD9D9D9),
                    isSelected: true,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),

            // Project List
            Expanded(
              child: ListView(
                children: const [
                  ProjectCard(
                    title: "Create Ad Banner",
                    time: "2 hours ago",
                    avatars: [
                      "assets/Images/avatar.png",
                      "assets/Images/avatar2.png",
                    ],
                    dotColor: Colors.purple,
                  ),
                  ProjectCard(
                    title: "Create New Blog Post",
                    time: "2 hours ago",
                    avatars: ["assets/Images/avatar.png"],
                    dotColor: Colors.yellow,
                  ),
                  ProjectCard(
                    title: "Online Course",
                    time: "2 hours ago",
                    avatars: ["assets/Images/avatar.png"],
                    dotColor: Colors.blue,
                  ),
                  ProjectCard(
                    title: "Complete Portfolio",
                    time: "2 hours ago",
                    avatars: [
                      "assets/Images/avatar2.png",
                      "assets/Images/avatar.png",
                      "assets/Images/avatar2.png",
                    ],
                    dotColor: Colors.grey,
                  ),
                  ProjectCard(
                    title: "Plan For Next Week",
                    time: "2 hours ago",
                    avatars: [
                      "assets/Images/avatar2.png",
                      "assets/Images/avatar.png",
                    ],
                    dotColor: Color(0xffFFC239),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ---------------- Filter Button ----------------
class FilterButton extends StatelessWidget {
  final String label;
  final int count;
  final Color color;
  final bool isSelected;

  const FilterButton({
    super.key,
    required this.label,
    required this.count,
    required this.color,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: isSelected ? color : Colors.grey[200],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Text(
            label,
            style: TextStyle(
              color: isSelected ? Colors.white : Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(width: 4),
          Text(
            count.toString(),
            style: TextStyle(color: isSelected ? Colors.white : Colors.black),
          ),
        ],
      ),
    );
  }
}

// ---------------- Project Card ----------------
class ProjectCard extends StatelessWidget {
  final String title;
  final String time;
  final List<String> avatars;
  final Color dotColor;

  const ProjectCard({
    super.key,
    required this.title,
    required this.time,
    required this.avatars,
    required this.dotColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 121,
      margin: const EdgeInsets.only(bottom: 16.0),
      decoration: BoxDecoration(
        color: const Color(0xFFB5B5B5),
        borderRadius: BorderRadius.circular(35),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            // Dot + Text
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                    color: dotColor,
                    shape: BoxShape.circle,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    const Icon(
                      Icons.calendar_today,
                      size: 16,
                      color: Colors.grey,
                    ),
                    const SizedBox(width: 4),
                    Text(
                      time,
                      style: const TextStyle(
                        color: Color.fromARGB(255, 89, 87, 87),
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const Spacer(),
            SizedBox(
              width: 80,
              height: 40,
              child: Stack(
                children:
                    avatars.asMap().entries.map((entry) {
                      int index = entry.key;
                      String avatar = entry.value;
                      return Positioned(
                        left: index * 20.0,
                        child: CircleAvatar(
                          backgroundImage: AssetImage(avatar),
                          radius: 16,
                        ),
                      );
                    }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
