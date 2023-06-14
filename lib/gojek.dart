import 'package:flutter/material.dart';

class Gojek extends StatelessWidget {
  const Gojek({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Gojek')),
      body: SizedBox(
        height: 280,
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
      width: 220,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.white,
          boxShadow: const [
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
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.network(
                      "https://cdn1-production-images-kly.akamaized.net/a6xvLhjIWqlrNOdjaI40qxT_Jr0=/0x148:1920x1230/640x360/filters:quality(75):strip_icc():format(webp)/kly-media-production/medias/3093328/original/069244600_1585909700-fried-2509089_1920.jpg",
                      fit: BoxFit.cover,
                      width: 220,
                    ),
                  ),
                  Positioned(
                    top: 16,
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(30),
                          bottomRight: Radius.circular(30),
                        ),
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                      child: const Text (
                        '30% off', 
                      style: TextStyle(color: Colors.white),),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [  
                Text(
                  '2.54 Km',
                  style: TextStyle(color: Colors.grey[600]),
                ),
                const SizedBox(height: 8,),
                const Text(
                'Nasi Goreng Ganteng, Tarogong Kaler',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
                const SizedBox(height: 8,),
                Row(
                  children: [
                    Icon(Icons.star, color: Colors.orange[800], size: 20,),
                    const SizedBox(width: 8,),
                    const Text('4.3'),
                    const Text(' * 100+ Rating'),
                  ],
                ),
                ],
              ),
            ),
          ],
        ),
    );
  }
}