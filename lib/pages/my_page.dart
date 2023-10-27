import 'package:flutter/material.dart';

class  MyPage extends StatelessWidget {
  MyPage({ Key? key}) : super(key: key);
final images = [
  'https://user0514.cdnw.net/shared/img/thumb/TSU1994105_TP_V.jpg',
  'https://www.pakutaso.com/shared/img/thumb/PAK86_futaridesyame20140321.jpg',
  'https://getnews.jp/img/archives/2014/07/pakutaso_03.jpg',
  'https://user0514.cdnw.net/shared/img/thumb/PAKUTASO458A8788_TP_V.jpg',
  'https://www.pakutaso.com/shared/blog/3853de0e-2d71-414c-ab2f-dfbe59a88478_base_resized.jpg',
  'https://www.pakutaso.com/shared/img/thumb/PAK86_futaridesyame20140321.jpg',
];

  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(title: const Text('マイページ')),
    body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
            Image.network('https://about.fb.com/ja/wp-content/uploads/sites/15/2019/10/new-ig-icon-1.png?fit=1224%2C840',
            width: 80,
              height: 80,
            ),
            Spacer(),
            Column(
              children: [
                Text(
                  '7,041',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                  fontSize: 16,
                  ),
                ),
                Text('投稿')
              ],
            ),
            const SizedBox(width: 16),
            Column(
              children: [
                Text('4.6億',
                  style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
                ),
                Text('フォロワー')
              ],
            ),
            const SizedBox(width: 16),
            Column(
              children: [
                Text('99',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),),
                Text('フォロー')
              ],
            ),
        ],
        ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Instagram',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                Text('#YoursToMake',
                  style: TextStyle(
                      color: Colors.blue
                  ),
                ),
                Text('help.instagram.com',
                  style: TextStyle(
                      color: Colors.blue
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: OutlinedButton(
                            onPressed: () {},
                            child: Text('フォロー中',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12
                              ),
                            ),
                          style: OutlinedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4),
                            )
                          ),
                        ),
                      ),
                      const SizedBox(width: 4),
                      Expanded(
                        child: OutlinedButton(
                          onPressed: () {},
                          child: Text(
                            'メッセージ',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 12
                          ),
                          ),
                          style: OutlinedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4),
                              )
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 4),
                OutlinedButton(
                  onPressed: () {},
                  child: Icon(
                    Icons.keyboard_arrow_down,
                    color: Colors.black,
                  ),
                  style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      )
                  ),
                ),
              ],
            ),
          ),
          GridView.count(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            primary: false,
            crossAxisCount: 3,
            children: images.map((imageUrl) {
              return InstagramPostItem(imageUrl: imageUrl);
            }).toList(),
          )
        ],
      ),
    ),
  );
  }
}

class InstagramPostItem extends StatelessWidget {
  const InstagramPostItem({Key? key, required this.imageUrl}) : super(key: key);
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return Image.network(
        imageUrl,
      fit: BoxFit.cover,
    );
  }
}
