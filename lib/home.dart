import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:googleservices/details_screen.dart';

class Home extends StatelessWidget {
  final List<String> _images = [
    'assets/youtube.png',
    'assets/gmail.png',
    'assets/firebase.png',
    'assets/flutter.png',
    'assets/maps.png',
    'assets/play.png',
    'assets/ads.jpg'
  ];

  final List<String> _titles = [
    'Youtube',
    'Gmail',
    'Firebase',
    'Flutter',
    'Google Maps',
    'Google Play',
    'Google Ads'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Padding(
            padding: const EdgeInsets.all(100.0),
            child: Image.asset('assets/logo.png'),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: StaggeredGridView.countBuilder(
            crossAxisCount: 2,
            mainAxisSpacing: 15,
            crossAxisSpacing: 10,
            itemCount: 7,
            itemBuilder: _getChild,
            staggeredTileBuilder: (int index) =>
                new StaggeredTile.count(1, index.isEven ? 1.1 : 1),
          ),
        ));
  }

  Widget _getChild(BuildContext context, int index) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DetailsScreen(_titles[index])));
      },
      child: Container(
        child: Center(
          child: Column(
            children: [
              Image.asset(_images[index], width: 100),
              Text(_titles[index])
            ],
          ),
        ),
      ),
    );
  }
}
