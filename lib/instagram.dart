import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Instagram extends StatelessWidget {
  const Instagram({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Instagram')),
        // body: ListView.builder(
        //   itemCount: 8,
        //   itemBuilder: (context, index) {
        //     return Padding(
        //       padding: EdgeInsets.fromLTRB(
                 
        //         16, 
        //         index == 0 ? 16 :8,
                
        //         16,
        //         index == 7 ? 16 : 8,
        //       ),
        //       child: itemComment(),
        //     );
        //   },
        // ),
        // body: ListView.builder(
        //   itemCount: 8,
        //   itemBuilder: (context, index) {
        //     return itemPost();
        //   },
        // ),
        // body: SizedBox(
        //   height: 100,
        //   child: ListView.builder(
        //     itemCount: 8,
        //     scrollDirection: Axis.horizontal,
        //     itemBuilder: (context, index) {
        //       return Padding(
        //         padding: EdgeInsets.fromLTRB(
        //           index == 0? 16 : 8, 4, 
        //           index == 7 ? 16 : 8, 4,
        //         ),
        //         child: itemStory(),
        //       );
        //     },
        //   ),
        // ),
        body: SizedBox(
          height: 250,
          child: ListView.builder(
            itemCount: 8,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.fromLTRB(
                  index == 0? 16 : 8, 4, 
                  index == 7 ? 16 : 8, 4,
                ),
                child: bannerItemStory(),
              );
            },
          ),
        ),
    );
  }


  Widget bannerItemStory() {
    String imageUrl = 
      'https://www.chiesapositano.com/wp-content/uploads/2022/01/travel-world.jpg';
    
    return SizedBox(
      width: 150,
      child: Stack(
        fit: StackFit.expand,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(
              imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            bottom: 16,
            left: 0,
            right: 0,
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.pink[600]!, width: 2),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(85),
                    child: Image.network(
                      imageUrl,
                      fit: BoxFit.cover,
                      width: 60,
                      height: 60,
                    ),
                  ),
                ),
                const SizedBox(height: 9),
                const Text(
                  'salman', 
                  maxLines: 1, 
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }


  Widget itemStory() {
    bool isLive = true;
    String imageUrl = 
      'https://www.chiesapositano.com/wp-content/uploads/2022/01/travel-world.jpg';
    return SizedBox(
      height: 85,
      width: 85,
      child: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 4),
                    child: AspectRatio(
                      aspectRatio: 1,
                      child: Container(
                        padding: const EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.pink[600]!, width: 2),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(85),
                          child: Image.network(
                            imageUrl,
                            fit: BoxFit.cover,
                            width: 100,
                            height: 100,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                if (isLive) 
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.pink[700],
                      border: Border.all(color: Colors.white, width: 2),
                      borderRadius: BorderRadius.circular(4),
                    ),
                      padding: 
                        const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                      child: const Text(
                        'LIVE',
                        style: TextStyle(color: Colors.white, fontSize: 10,),
                      ),
                    ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 4,),
          const Text(
            'salman', 
            maxLines: 1, 
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontSize: 9),
          ),
        ],
      ),
    );
  }


  Widget itemPost() {
    PageController pageController = PageController();
    List<String> listImage = [
      'https://unimmafm.com/wp-content/uploads/2022/07/travel-022-1536x864.jpg',
      'https://www.chiesapositano.com/wp-content/uploads/2022/01/travel-world.jpg',
      'https://prod-virtuoso.dotcmscloud.com/dA/188da7ea-f44f-4b9c-92f9-6a65064021c1/heroImage1/PowerfulReasons_hero.jpg',
      'https://img.okezone.com/content/2020/09/17/406/2279484/4-tips-traveling-ala-travel-blogger-emilia-tanova-Jhs2ffCuYT.jpg',
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const SizedBox(width: 8,),
            Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.pink[600]!),
              shape: BoxShape.circle,
          ),
          padding: const EdgeInsets.all(2),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Image.network(
              'https://static.republika.co.id/uploads/images/inpicture_slide/082853700-1588046918-59323d9324cf5-salman-khanjpg.jpg',
              width: 40,
              height: 40,
              fit: BoxFit.cover,
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(8),
          child: Text('Salman'),
        ),
        const Spacer(),
        IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
        ],
        ),   
        SizedBox(
          height: 300,
          child: PageView.builder(
            controller: pageController,
            itemCount: listImage.length,
            itemBuilder: (context, index) {
              String imageUrl = listImage[index];
              return AspectRatio(
                aspectRatio: 16/9,
                child: Image.network(imageUrl, fit: BoxFit.cover,),
              );
            },
          ),
        ),
        Row(
          children: [
            Expanded(
              child: Row(
                children: [
                  SizedBox(
                    width: 35,
                    child: IconButton(
                      onPressed: () {}, icon: const Icon(Icons.favorite_border)),
                  ),
                  SizedBox(
                    width: 35,
                    child: IconButton(
                      onPressed: () {}, icon: const Icon(Icons.comment_outlined)),
                  ),
                  SizedBox(
                    width: 35,
                    child: IconButton(onPressed: () {}, icon: const Icon(Icons.send_outlined))),
                ],
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                child: SmoothPageIndicator(
                  controller: pageController, 
                  count: listImage.length,
                  effect: const WormEffect(
                    dotHeight: 7,
                    dotWidth: 8,
                    spacing: 4,
                  ),
                  onDotClicked: (index) {},
                ),
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.centerRight,
                child: IconButton(
                  onPressed: () {}, 
                  icon: const Icon(Icons.bookmark_border),
                ),
              ),
            ),
          ],
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: Text(
            '1,238 Like',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8),
          child: RichText(
            textAlign: TextAlign.justify,
            text: const TextSpan(
              style: TextStyle(color: Colors.black),
              children: [
                TextSpan(
                  text: 'salman',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text: 'Smooth page indicator will inherit directionality from its ancestop unless you specify, Smooth page indicator will inherit directionality from its ancestop unless you specify',
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(8, 0, 8, 16),
          child: GestureDetector(
            onTap: () {},
            child: Text(
              'Lihat semua 36 Komentar',
              style: TextStyle(color: Colors.grey[600], fontSize: 12),
            ),
          ),
        ),
      ],
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