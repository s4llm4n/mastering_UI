import 'package:flutter/material.dart';

class Gojek extends StatelessWidget {
  const Gojek({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Gojek')),
      body: SizedBox(
        height: 180,
        child: ListView.builder(
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
              child: itemFood(),
            );
          }
        ),
      ),
    );
  }

  Widget itemFood() {
    return Container(
      width: 120,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 6,
              color: Colors.black26,
            ),
          ],
        ),
          child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.network(
                  "https://cdn1-production-images-kly.akamaized.net/a6xvLhjIWqlrNOdjaI40qxT_Jr0=/0x148:1920x1230/640x360/filters:quality(75):strip_icc():format(webp)/kly-media-production/medias/3093328/original/069244600_1585909700-fried-2509089_1920.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                children: [
                  Text(
                '2.54 Km',
                style: TextStyle(color: Colors.grey[600]),
              ),
              const Text(
                'Netflix',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 4,),
              const Text('18 MB'),
                ],
              ),
            ),
          ],
        ),
    );
  }
}