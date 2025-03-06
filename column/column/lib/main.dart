import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Flutter Column Example')),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              // Column Pertama
              Column(
                children: <Widget>[
                  // Tambahkan widget di sini jika ada
                ],
              ),
              SizedBox(height: 20), // Spacer
              // Column Kedua
              Column(
                children: const <Widget>[
                  Text('Deliver features faster'),
                  Text('Craft beautiful UIs'),
                  SizedBox(height: 10), // Spacer
                  FittedBox(
                    fit: BoxFit.contain, // otherwise the logo will be tiny
                    child: FlutterLogo(
                      size: 100,
                    ), // Tambahkan ukuran agar terlihat
                  ),
                ],
              ),
              SizedBox(height: 20), // Spacer
              // Column Ketiga
              Builder(
                builder: (context) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const Text('We move under cover and we move as one'),
                      const Text(
                        'Through the night, we have one shot to live another day',
                      ),
                      const Text('We cannot let a stray gunshot give us away'),
                      const Text(
                        'We will fight up close, seize the moment and stay in it',
                      ),
                      const Text(
                        'It’s either that or meet the business end of a bayonet',
                      ),
                      const Text('The code word is ‘Rochambeau,’ dig me?'),
                      Text(
                        'Rochambeau!',
                        style: DefaultTextStyle.of(
                          context,
                        ).style.apply(fontSizeFactor: 2.0),
                      ),
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
