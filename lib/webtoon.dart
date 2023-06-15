import 'package:flutter/material.dart';

class Webtoon extends StatelessWidget {
  const Webtoon({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Webtoon')),
        body: ListView.separated(
          itemCount: 8,
          separatorBuilder: (context, index) => 
            const Divider(thickness: 1, height: 1,),
          itemBuilder: (context, index) {
            return itemWebtoon();
          },
        ),
    );
  }

  Widget itemWebtoon() {
    return Row(
      children: [
        Image.network(
          'https://www.liveabout.com/thmb/oJ5pD1eUgjj86urmzc1rPX-HU6Q=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/powerpuff_girls-56a00bc45f9b58eba4aea61d.jpg',
          width: 80,
          height: 80,
          fit: BoxFit.cover,
        ),
        const SizedBox(width: 16,),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Tower of God',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 4,),
              Text(
                'SIU',
                style: TextStyle(color: Colors.grey[600]),
              ),
              const SizedBox(height: 2,),
              Text(
                '2 days ago',
                style: TextStyle(color: Colors.grey[600]),
              ),
            ],
          ),
        ),
        Text(
          '#506',
          style: TextStyle(
            fontSize: 18,
            color: Colors.grey[600],
          ),
        ),
        const SizedBox(width: 16,),
      ],
    );
  }
}