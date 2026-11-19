import 'package:flutter/material.dart';
import 'package:whatsapp_clone/widgets/UiHelper.dart';

class ContactScreen extends StatelessWidget {
  var contactContent = [
    {
      "images": "https://img.magnific.com/free-photo/portrait-white-man-isolated_53876-40306.jpg?semt=ais_hybrid&w=740&q=80",
      "name": "Aron",
      "status": "Busy",
    },

    {
      "images": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS1kozsmb9D_7gEBycFy9IXcxMne7cN8gTOUKkZK3fWTyx-ook-4DfyBrs&s=10",
      "name": "Cherry",
      "status": "cool",
    },

    {
      "images": "https://images.pexels.com/photos/614810/pexels-photo-614810.jpeg?cs=srgb&dl=pexels-simon-robben-55958-614810.jpg&fm=jpg",
      "name": "Charlie",
      "status": "Busy",
    },

    {
      "images": "https://img.magnific.com/free-photo/portrait-white-man-isolated_53876-40306.jpg?semt=ais_hybrid&w=740&q=80",
      "name": "Aron",
      "status": "Busy",
    },

    {
      "images": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS1kozsmb9D_7gEBycFy9IXcxMne7cN8gTOUKkZK3fWTyx-ook-4DfyBrs&s=10",
      "name": "Cherry",
      "status": "Busy",
    },

    {
      "images": "https://images.pexels.com/photos/614810/pexels-photo-614810.jpeg?cs=srgb&dl=pexels-simon-robben-55958-614810.jpg&fm=jpg",
      "name": "Charlie",
      "status": "Busy",
    },

    {
      "images": "https://img.magnific.com/free-photo/portrait-white-man-isolated_53876-40306.jpg?semt=ais_hybrid&w=740&q=80",
      "name": "Aron",
      "status": "Busy",
    },

    {
      "images": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS1kozsmb9D_7gEBycFy9IXcxMne7cN8gTOUKkZK3fWTyx-ook-4DfyBrs&s=10",
      "name": "Cherry",
      "status": "Busy",
    },

    {
      "images": "https://images.pexels.com/photos/614810/pexels-photo-614810.jpeg?cs=srgb&dl=pexels-simon-robben-55958-614810.jpg&fm=jpg",
      "name": "Charlie",
      "status": "Busy",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: UiHelper.CustomText(
          text: "Select contact",
          height: 16,
          color: Colors.white,
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert_sharp)),
        ],
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                contactContent[index]["images"].toString(),
              ),
            ),
            title: UiHelper.CustomText(
              text: contactContent[index]["name"].toString(),
              height: 16,
              fontweight: FontWeight.bold,
            ),
            subtitle: UiHelper.CustomText(
              text: contactContent[index]["status"].toString(),
              height: 14,
            ),
          );
        },
        itemCount: contactContent.length,
      ),
    );
  }
}
