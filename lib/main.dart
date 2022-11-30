import 'package:darkmode_lightmode/theme.dart';
import 'package:flutter/material.dart';

final ValueNotifier<ThemeMode> themeNotifier = ValueNotifier(ThemeMode.light);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ThemeMode>(
      valueListenable: themeNotifier,
      builder: (_, ThemeMode currentMode, __) {
          return MaterialApp(
            theme: lightTheme,
            darkTheme: darkTheme,
            themeMode: currentMode,
            debugShowCheckedModeBanner: false,
            home: const MyHomePage()
        );
      }
    );
  }
}


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key,});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_rounded),
        centerTitle: true,
        backgroundColor: Colors.green,
        title: const Text('Dark Mode & Light Mode',style: TextStyle(fontSize: 15),),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: 130,
              child: ElevatedButton(
                style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.green)),
                onPressed: (){
                  themeNotifier.value = themeNotifier.value == ThemeMode.light
                    ? ThemeMode.dark
                    : ThemeMode.light;
                  setState(() {});
                }, 
              child: Text(themeNotifier.value == ThemeMode.light ? 'Dark Mode' : 'Light Mode')),
            ),
          ],
        ),
      ),
    );
  }
}
