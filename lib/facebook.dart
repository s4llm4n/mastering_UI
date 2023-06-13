import 'package:flutter/material.dart';

class Facebook extends StatelessWidget {
  const Facebook({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Facebook')),
      body: SizedBox(
        height: 200,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 8,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.fromLTRB(
                  index == 0 ? 16 :8, 
                  16, 
                  index == 7 ? 16 :8,
                  16,
                ),
                child: itemStory(),
              );
            },
          ),
      ),
    );
  }

  Widget itemStory() {
    return SizedBox(
      height: 80,
      width: 80,
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              'https://www.gotravelaindonesia.com/wp-content/uploads/2016/09/Tips-traveling-perjalanan-jauh.jpg',
              width: 80,
              height: 80,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }

  Widget itemGroup() {
    return SizedBox(
        width: 85,
        child: Column(
          children: [
            SizedBox(
              width: 85,
              height: 85,
              child: Stack(
                children: [
                  Material(
                    elevation: 8,
                    
                    borderRadius: BorderRadius.circular(16),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.network(
                        'https://cdn.justjared.com/wp-content/uploads/headlines/2020/10/netflix-main-pic.jpg',
                        width: 80,
                        height: 80,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 6,
                            color: Colors.black26,
                            offset: Offset(5, 5)
                          ),
                        ],
                      ),
                      padding: const EdgeInsets.all(4),
                      child: const Icon(Icons.groups, color: Colors.blue, size: 20,),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 4,),
            const Text(
              'Netflix Developer',
              textAlign: TextAlign.center,
            ),
          ],
        ),
      );
  }
}