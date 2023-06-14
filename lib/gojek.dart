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
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.network(
                "https://rasabunda.com/wp-content/uploads/2022/06/Nasi-Goreng-Terasi-Belacan.jpg",
                width: 120,
                height: 80,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 8,),
            const Text('2.54 Km'),
            const Text(
              'Netflix',
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 4,),
            const Text('18 MB'),
          ],
        ),
    );
  }
}