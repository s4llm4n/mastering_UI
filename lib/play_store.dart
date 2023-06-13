import 'package:flutter/material.dart';

class PlayStore extends StatelessWidget {
  const PlayStore({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Play Store')),
        body: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 8,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.fromLTRB(
                index == 0 ? 16 :8, 
                16, 
                index == 7 ? 16 : 8,
                16,
              ),
              child: itemApp(),
            );
          },
        ),
    );
  }

  Column itemApp() {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.network(
              "https://cdn.justjared.com/wp-content/uploads/headlines/2020/10/netflix-main-pic.jpg",
              width: 80,
              height: 80,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 8,),
          const Text(
            'Netflix',
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 4,),
          const Text('18 MB'),
        ],
      );
  }
}