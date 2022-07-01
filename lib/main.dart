import 'package:dev_and_prod_flutter/home_page.dart';
import 'package:dev_and_prod_flutter/config_reader.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ConfigReader.initialize();

  runApp(
    const MaterialApp(home: MyHomePage()),
  );
}
