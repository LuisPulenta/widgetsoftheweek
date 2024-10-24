import 'package:flutter/material.dart';
import 'package:widgetsoftheweek/screens/screens.dart';
import 'package:widgetsoftheweek/share_preferences/preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //GoogleFonts.config.allowRuntimeFetching = false;

  await Preferences.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        // theme: ThemeData.light().copyWith(
        //   textTheme: ThemeData.light().textTheme.apply(
        //         fontFamily: "PTSansNarrow-Regular",
        //       ),
        // ),
        title: 'Material App',
        home: HomeScreen());
  }
}
