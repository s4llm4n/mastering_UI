import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Udemy extends StatelessWidget {
  const Udemy({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Udemy')),
        body: ListView.separated(
          itemCount: 8,
          separatorBuilder: (context, index) => const Divider(
            indent: 16,
            endIndent: 16,
            thickness: 1,
          ),
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
      crossAxisAlignment: CrossAxisAlignment.start,
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
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Mastering UI 2020 Bahasa Indonesia',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 8,),
                Text(
                  'Salman Hatrash',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontWeight: FontWeight.w300,
                  fontSize: 18
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 8,),
                Row(
                  children: [
                    Text(
                      '4.5',
                    style: TextStyle(
                    color: Colors.amber[900],
                    fontWeight: FontWeight.bold,
                    fontSize: 12
                      ),
                    ),
                    const SizedBox(width: 8,),
                    RatingBar.builder(
                      initialRating: 4.5, 
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemSize: 15,
                      itemBuilder: (context, _) => const Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (rating) {},
                      ignoreGestures: true,
                    ),
                    const SizedBox(width: 8,),
                    Text(
                      '(128)',
                    style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 12
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8,),
                const Text(
                      'Rp129.000',
                    style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                      ),
                    ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}