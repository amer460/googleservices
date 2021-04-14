import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:googleservices/size_config.dart';

class DetailsScreen extends StatefulWidget {
  String naslov;
  DetailsScreen(this.naslov);

  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  AudioCache audioCache = AudioCache();

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SafeArea(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    //width: SizeConfig.screenWidth,
                    child: Image.asset(
                      'assets/${widget.naslov}.png',
                    ),
                  ),
                  IconButton(
                    alignment: Alignment.topLeft,
                    icon: Icon(Icons.arrow_back_rounded, size: 40),
                    onPressed: () {
                      //Navigator.push(context,MaterialPageRoute(builder: (context) => MainScreen()));
                    },
                    color: Colors.black,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    widget.naslov.toUpperCase(),
                    style: TextStyle(fontSize: 30),
                  ),
                  IconButton(
                    icon: Icon(Icons.play_arrow, size: 40),
                    onPressed: () {
                      String path = widget.naslov.toLowerCase() + ".mp3";
                      audioCache.load(path);
                      audioCache.play(path);
                      audioCache.clearCache();
                      audioCache.clear(path);
                    },
                    color: Colors.black,
                  ),
                ],
              ),
              Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Container(
                    alignment: Alignment.topCenter,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Text(''),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
