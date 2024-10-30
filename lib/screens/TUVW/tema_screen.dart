import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TemaScreen extends StatelessWidget {
  const TemaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tema'),
        centerTitle: true,
      ),
      body: const Padding(
        padding: EdgeInsets.all(20.0),
        child: Text('''
Hay muchas cosas que se pueden definir en el theme de main.dart:

theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.orange),
        textTheme: GoogleFonts.emilysCandyTextTheme(),
        scaffoldBackgroundColor: Colors.orange[100],
        inputDecorationTheme: InputDecorationTheme(),
        iconTheme: IconThemeData(),
        primaryIconTheme: IconThemeData(),
        sliderTheme: SliderThemeData(),
        tabBarTheme: TabBarTheme(),
        tooltipTheme: TooltipThemeData(),
        cardTheme: CardTheme(),
        chipTheme: ChipThemeData(),
        scrollbarTheme: ScrollbarThemeData(),
        dialogTheme: DialogTheme(),
        floatingActionButtonTheme: FloatingActionButtonThemeData(),
        typography: Typography(),
        bottomSheetTheme: BottomSheetThemeData(),
        dividerTheme: DividerThemeData(),

        y hay más....

'''),
      ),
    );
  }
}
