import 'package:flutter/material.dart';
import 'package:provider/provider.dart';                 // new
import 'app.dart';
import 'home.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(ChangeNotifierProvider(
    create: (context) => ApplicationState(),
    builder: ((context, child) => const App()),
  ));
}