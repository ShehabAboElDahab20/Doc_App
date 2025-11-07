import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_complete_project/core/di/depndency_injection.dart';

import 'doc_app.dart';

void main() {
  setupGetIt();
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.white,
    statusBarIconBrightness: Brightness.dark,
  ));
  runApp(const DocApp());
}
