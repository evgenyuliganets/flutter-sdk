import 'package:example/publisher.dart';
import 'package:example/viewer.dart';
import 'package:flutter_webrtc/flutter_webrtc.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:millicast_flutter_sdk/millicast_flutter_sdk.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

const type = String.fromEnvironment('type');
void main() async {
  Logger.level = Level.debug;
  await dotenv.load(fileName: '.env');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Millicast SDK Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(title: 'Millicast SDK Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final RTCVideoRenderer _localRenderer = RTCVideoRenderer();
  @override
  void dispose() {
    _localRenderer.dispose();
    super.dispose();
  }

  @override
  void initState() {
    initRenderers();
    switch (type) {
      case 'subscribe':
        subscribeExample();
        break;
      case 'publish':
        publishExample();
        break;
      default:
    }
    super.initState();
  }

  void publishExample() async {
    PeerConnection pc = await publishConnect(_localRenderer);
    pc.on('track', this, (ev, context) {
      setState(() {
        _localRenderer.srcObject = ev.eventData as MediaStream?;
      });
    });
  }

  void subscribeExample() async {
    PeerConnection pc = await viewConnect(_localRenderer);
    pc.on('track', this, (ev, context) {
      setState(() {
        _localRenderer.srcObject = ev.eventData as MediaStream?;
      });
    });
  }

  void initRenderers() async {
    await _localRenderer.initialize();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: OrientationBuilder(
        builder: (context, orientation) {
          return Center(
            child: Container(
              margin: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: RTCVideoView(_localRenderer, mirror: true),
              decoration: const BoxDecoration(color: Colors.black54),
            ),
          );
        },
      ),
    );
  }
}
