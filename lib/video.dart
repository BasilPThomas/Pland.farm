import 'package:video_player/video_player.dart';
import 'package:flutter/material.dart';

void main() => runApp(VideoApp());

class VideoApp extends StatefulWidget {
  @override
  _VideoAppState createState() => _VideoAppState();
}

class _VideoAppState extends State<VideoApp> {
  VideoPlayerController _controller;
  Widget _widgetForDrawer() {
    return Container(
        alignment: Alignment.bottomLeft,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 40,),
                Text('Javan',
                  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20),textAlign: TextAlign.center,),
                SizedBox(height: 10,),
                Text('Number', style: TextStyle(
                    fontWeight: FontWeight.bold,fontSize: 12, color: Colors.white),),
              ],),
            Expanded(
              child : CircleAvatar(
                radius: 60.0, backgroundImage: AssetImage('images/profile.jpg'),),
            ),

          ],
        )
    );
  }

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(
        // 'https://youtu.be/AhR29rCtMvk'
            'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4')
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Video Demo',
      home: Scaffold(
        // drawer: Drawer(
        //   child: ListView(
        //     children: <Widget>[
        //       DrawerHeader(
        //         child: Column(
        //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //           children: [_widgetForDrawer()],
        //         ),
        //         decoration: BoxDecoration(
        //           color: Colors.green,
        //           // borderRadius: BorderRadius.all(Radius.circular(30)),
        //           // :  Rect.fromLTWH(50.0, 50.0, 220.0, 90.0),
        //         ),),
        //       ListTile(
        //         title: Text('Profile', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold, color: Colors.green),),
        //         // leading: Icon(Icons.person_pin ,color: Colors.blue[900],),
        //       ),
        //       ListTile(
        //         title: Text('Tractor', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold, color: Colors.green),),
        //         // leading: Icon(Icons.person_pin ,color: Colors.blue[900],),
        //       ),
        //       ListTile(
        //         title: Text('Farmer Equipments', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold, color: Colors.green),),
        //         // leading: Icon(Icons.person_pin ,color: Colors.blue[900],),
        //       ),
        //       ListTile(
        //         title: Text('Market Place', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold, color: Colors.green),),
        //         // leading: Icon(Icons.person_pin ,color: Colors.blue[900],),
        //       ),
        //       ListTile(
        //         title: Text('Weather', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold, color: Colors.green),),
        //         // leading: Icon(Icons.person_pin ,color: Colors.blue[900],),
        //       ),
        //       ListTile(
        //         title: Text('Seed', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold, color: Colors.green),),
        //         // leading: Icon(Icons.person_pin ,color: Colors.blue[900],),
        //       ),
        //       ListTile(
        //         title: Text('Fertilizers', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold, color: Colors.green),),
        //         // leading: Icon(Icons.person_pin ,color: Colors.blue[900],),
        //       ),
        //       ListTile(
        //         title: Text('Farmer Scheme', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold, color: Colors.green),),
        //         // leading: Icon(Icons.person_pin ,color: Colors.blue[900],),
        //       ),
        //     ],),),
      body: Center(
          child: Container(
            height: 100,
            width: 100,
            child: _controller.value.isInitialized
                ? AspectRatio(
              // aspectRatio: _controller.value.aspectRatio,
              aspectRatio: 1,
              child: VideoPlayer(_controller),
            )
                : Container(),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              _controller.value.isPlaying
                  ? _controller.pause()
                  : _controller.play();
            });
          },
          child: Icon(
            _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}
