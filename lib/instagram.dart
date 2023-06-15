import 'package:flutter/material.dart';

class Instagram extends StatelessWidget {
  const Instagram({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Instagram')),
        body: ListView.builder(
          itemCount: 8,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.fromLTRB(
                 
                16, 
                index == 0 ? 16 :8,
                
                16,
                index == 7 ? 16 : 8,
              ),
              child: itemComment(),
            );
          },
        ),
    );
  }

  Widget itemComment() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(40),
          child: Image.network(
            'https://static.republika.co.id/uploads/images/inpicture_slide/082853700-1588046918-59323d9324cf5-salman-khanjpg.jpg',
            width: 40,
            height: 40,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(width: 16,),
        Expanded(
          child: Column(
            children: [
              RichText(
                text: const TextSpan(
                  style: TextStyle(color: Colors.black),
                  children: [
                    TextSpan(
                      text: 'Salman Hatrash',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text: ' Your Comment asfsd gadfgadfh adfgadfga agadfg',
                    ),
                  ],
              ),
              ),
              const SizedBox(height: 8,),
              Row(
                children: [
                  Text(
                    '1 Hour',
                    style: TextStyle(color: Colors.grey[600], fontSize: 12),
                  ),
                  const SizedBox(width: 16),
                  Text(
                    '17 Like',
                    style: TextStyle(color: Colors.grey[600], fontSize: 12),
                  ),
                  const SizedBox(width: 16),
                  Text(
                    'Reply',
                    style: TextStyle(color: Colors.grey[600], fontSize: 12),
                  ),
                ],
              ),
            ],
          ),
        ),
        IconButton(
          onPressed: (){}, 
          icon: Icon(Icons.favorite_border, size: 20,color: Colors.grey[600]),),
      ],
    );
  }
}