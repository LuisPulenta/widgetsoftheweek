import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
      title: 'Material App',
      home: HomeScreen(),
      // theme: ThemeData.light().copyWith(
      //   textTheme: ThemeData.light().textTheme.apply(
      //         fontFamily: "PTSansNarrow-Regular",
      //       ),
      // ),
      // theme: ThemeData(
      //   colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.orange),
      //   textTheme: GoogleFonts.emilysCandyTextTheme(),
      //   scaffoldBackgroundColor: Colors.orange[100],
      //   inputDecorationTheme: InputDecorationTheme(),
      //   iconTheme: IconThemeData(),
      //   primaryIconTheme: IconThemeData(),
      //   sliderTheme: SliderThemeData(),
      //   tabBarTheme: TabBarTheme(),
      //   tooltipTheme: TooltipThemeData(),
      //   cardTheme: CardTheme(),
      //   chipTheme: ChipThemeData(),
      //   scrollbarTheme: ScrollbarThemeData(),
      //   dialogTheme: DialogTheme(),
      //   floatingActionButtonTheme: FloatingActionButtonThemeData(),
      //   typography: Typography(),
      //   bottomSheetTheme: BottomSheetThemeData(),
      //   dividerTheme: DividerThemeData(),
      //),
      //darkTheme: ThemeData.dark(),
    );
  }
}
