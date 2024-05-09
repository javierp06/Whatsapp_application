import 'package:flutter/material.dart';

class StatusScreen extends StatelessWidget {
  final List<String> statusImages;

  StatusScreen(
      {Key? key,
      this.statusImages = const [
        'assets/walter.jpeg',
        'assets/walter.jpeg',
        'assets/walter.jpeg',
      ]})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Ver estados',
            style: TextStyle(fontSize: 18),
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: statusImages.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage(statusImages[index]),
                  ),
                  title: Text(
                      'Contacto ${index + 1}'), 
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            ImageScreen(imagePath: statusImages[index]),
                      ),
                    );
                  },
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

class ImageScreen extends StatelessWidget {
  final String imagePath;

  ImageScreen({Key? key, required this.imagePath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Estado'),
      ),
      body: Center(
        child: Image.asset(imagePath),
      ),
    );
  }
}
