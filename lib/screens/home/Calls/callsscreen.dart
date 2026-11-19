import 'package:flutter/material.dart';
import 'package:whatsapp_clone/widgets/UiHelper.dart';

class CallsScreen extends StatelessWidget {
  var callContent = [
    {
      "images": "https://images.pexels.com/photos/614810/pexels-photo-614810.jpeg?cs=srgb&dl=pexels-simon-robben-55958-614810.jpg&fm=jpg",
      "name": "Charlie",
      "callTime": "15 min ago",
    },

    {
      "images": "https://img.magnific.com/free-photo/portrait-white-man-isolated_53876-40306.jpg?semt=ais_hybrid&w=740&q=80",
      "name": "Aron",
      "callTime": "20 min ago",
    },

    {
      "images": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS1kozsmb9D_7gEBycFy9IXcxMne7cN8gTOUKkZK3fWTyx-ook-4DfyBrs&s=10",
      "name": "Cherry",
      "callTime": "1 hour ago",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 20),
          Row(
            children: [
              SizedBox(width: 20),
              UiHelper.CustomText(text: "Recent", height: 18),
            ],
          ),
          SizedBox(height: 20),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(
                      callContent[index]["images"].toString(),
                    ),
                  ),
                  title: UiHelper.CustomText(
                    text: callContent[index]["name"].toString(),
                    height: 16,
                    fontweight: FontWeight.bold,
                    color: Colors.black
                  ),
                  subtitle: UiHelper.CustomText(
                    text: callContent[index]["callTime"].toString(),
                    height: 14,
                  ),
                  trailing: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.call, color: Color(0XFF00A884)),
                  ),
                );
              },
              itemCount: callContent.length,
            ),
          ),
        ],
      ),
    );
  }
}
