import 'package:dev_and_prod_flutter/config_reader.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("widget.title"),
        backgroundColor: Color(ConfigReader.getSecretKey().toInt()),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            Text(
              'Revealed secret:\n${ConfigReader.getSecretKey()}',
              textAlign: TextAlign.center,
            ),
            const Align(
              alignment: Alignment.topCenter,
              child: Banner(
                message: "Custom",
                location: BannerLocation.bottomStart,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
