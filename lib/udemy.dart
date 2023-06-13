import 'package:flutter/material.dart';

class Udemy extends StatelessWidget {
  const Udemy({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Udemy')),
        body: ListView.separated(
          itemCount: 8,
          separatorBuilder: (context, index) => const Divider(),
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.fromLTRB(
                 
                16, 
                index == 0 ? 16 :8,
                
                16,
                index == 7 ? 16 : 8,
              ),
              child: itemCourse(),
            );
          },
        ),
    );
  }

  Widget itemCourse() {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.network(
            'https://studymalaysia.com/images/education/top-stories-wrong-course-1.jpg',
            width: 80,
            height: 80,
          ),
        ),
        Expanded(
          child: Column(
            children: [
              Text('Mastering UI 2020 Bahasa Indonesia',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 18
              ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}