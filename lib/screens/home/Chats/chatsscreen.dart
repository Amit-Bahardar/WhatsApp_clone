import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screens/home/Contact/contactscreen.dart';
import 'package:whatsapp_clone/widgets/UiHelper.dart';

class ChatsScreen extends StatelessWidget {
  var arrContent = [
    {
      "images": "https://img.magnific.com/free-photo/portrait-white-man-isolated_53876-40306.jpg?semt=ais_hybrid&w=740&q=80",
      "name": "Aron",
      "lastmsg": "Lorem epsum",
      "time": "10:45 am",
      "msg": "10",
    },

    {
      "images": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS1kozsmb9D_7gEBycFy9IXcxMne7cN8gTOUKkZK3fWTyx-ook-4DfyBrs&s=10",
      "name": "Cherry",
      "lastmsg": "Good morning",
      "time": "05:45 am",
      "msg": "7",
    },

    {
      "images": "https://images.pexels.com/photos/614810/pexels-photo-614810.jpeg?cs=srgb&dl=pexels-simon-robben-55958-614810.jpg&fm=jpg",
      "name": "Charlie",
      "lastmsg": "Good night",
      "time": "08:45 pm",
      "msg": "1",
    },

    {
      "images": "https://img.magnific.com/free-photo/portrait-white-man-isolated_53876-40306.jpg?semt=ais_hybrid&w=740&q=80",
      "name": "Aron",
      "lastmsg": "Lorem epsum",
      "time": "10:45 am",
      "msg": "10",
    },

    {
      "images": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS1kozsmb9D_7gEBycFy9IXcxMne7cN8gTOUKkZK3fWTyx-ook-4DfyBrs&s=10",
      "name": "Cherry",
      "lastmsg": "Good morning",
      "time": "05:45 am",
      "msg": "7",
    },

    {
      "images": "https://images.pexels.com/photos/614810/pexels-photo-614810.jpeg?cs=srgb&dl=pexels-simon-robben-55958-614810.jpg&fm=jpg",
      "name": "Charlie",
      "lastmsg": "Good night",
      "time": "08:45 pm",
      "msg": "1",
    },

    {
      "images": "https://img.magnific.com/free-photo/portrait-white-man-isolated_53876-40306.jpg?semt=ais_hybrid&w=740&q=80",
      "name": "Aron",
      "lastmsg": "Lorem epsum",
      "time": "10:45 am",
      "msg": "10",
    },

    {
      "images": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS1kozsmb9D_7gEBycFy9IXcxMne7cN8gTOUKkZK3fWTyx-ook-4DfyBrs&s=10",
      "name": "Cherry",
      "lastmsg": "Good morning",
      "time": "05:45 am",
      "msg": "7",
    },

    {
      "images": "https://images.pexels.com/photos/614810/pexels-photo-614810.jpeg?cs=srgb&dl=pexels-simon-robben-55958-614810.jpg&fm=jpg",
      "name": "Charlie",
      "lastmsg": "Good night",
      "time": "08:45 pm",
      "msg": "1",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    radius: 40,
                    backgroundImage: NetworkImage(
                      arrContent[index]["images"].toString(),
                    ),
                  ),
                  title: UiHelper.CustomText(
                    text: arrContent[index]["name"].toString(),
                    height: 14,
                    fontweight: FontWeight.bold,
                  ),
                  subtitle: UiHelper.CustomText(
                    text: arrContent[index]["lastmsg"].toString(),
                    height: 13,
                    color: Color(0XFF889095),
                  ),
                  trailing: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      UiHelper.CustomText(
                        text: arrContent[index]["time"].toString(),
                        height: 12,
                        color: Color(0XFF026500),
                      ),
                      CircleAvatar(
                        radius: 8,
                        backgroundColor: Color(0XFF036A01),
                        child: UiHelper.CustomText(
                          text: arrContent[index]["msg"].toString(),
                          height: 12,
                          color: Color(0XFFFFFFFF),
                        ),
                      ),
                    ],
                  ),
                );
              },
              itemCount: arrContent.length,
            ),
          ),
        ],
      ),

      floatingActionButton: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ContactScreen()),
          );
        },
        child: CircleAvatar(
          radius: 30,
          backgroundColor: Color(0XFF008665),
          child: Image.asset("assets/images/comment.png"),
        ),
      ),
    );
  }
}
