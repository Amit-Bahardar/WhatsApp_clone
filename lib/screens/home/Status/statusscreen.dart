import 'package:flutter/material.dart';
import 'package:whatsapp_clone/widgets/UiHelper.dart';

class StatusScreen extends StatelessWidget {
  var statusContent = [
    {
      "images": "https://img.magnific.com/free-photo/portrait-white-man-isolated_53876-40306.jpg?semt=ais_hybrid&w=740&q=80",
      "name": " Michael",
      "statusTime": "15 min ago",
    },

    {
      "images": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS1kozsmb9D_7gEBycFy9IXcxMne7cN8gTOUKkZK3fWTyx-ook-4DfyBrs&s=10",
      "name": "Cherry",
      "statusTime": "10 min ago",
    },

    {
      "images": "https://images.pexels.com/photos/614810/pexels-photo-614810.jpeg?cs=srgb&dl=pexels-simon-robben-55958-614810.jpg&fm=jpg",
      "name": "Charlie",
      "statusTime": "1 hour ago",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 30),
          Row(
            children: [
              SizedBox(width: 20),
              UiHelper.CustomText(text: "Status", height: 20),
            ],
          ),
          SizedBox(height: 10),
          ListTile(
            leading: Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Stack(
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundImage: NetworkImage(
                      "https://as1.ftcdn.net/v2/jpg/01/71/25/36/1000_F_171253635_8svqUJc0BnLUtrUOP5yOMEwFwA8SZayX.jpg",
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: CircleAvatar(
                      radius: 10,
                      backgroundColor: Color(0XFF008069),
                      child: Center(
                        child: Icon(
                          Icons.add,
                          color: Color(0XFFFFFFFF),
                          size: 15,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            title: UiHelper.CustomText(text: "Add status", height: 20),
            subtitle: UiHelper.CustomText(
              text: "Tap to add status update",
              height: 15,
            ),
          ),
          SizedBox(height: 20),
          Row(
            children: [
              SizedBox(width: 20),
              UiHelper.CustomText(text: "Recent updates", height: 15),
            ],
          ),
          SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                      statusContent[index]["images"].toString(),
                    ),
                  ),
                  title: UiHelper.CustomText(
                    text: statusContent[index]["name"].toString(),
                    height: 16,
                    fontweight: FontWeight.bold,
                  ),
                  subtitle: UiHelper.CustomText(
                    text: statusContent[index]["statusTime"].toString(),
                    height: 14,
                  ),
                );
              },
              itemCount: statusContent.length,
            ),
          ),
        ],
      ),
    );
  }
}
