import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      themeMode: ThemeMode.system,
      title: 'Sign in',
      home: const MyApp(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff59b747),
        toolbarHeight: MediaQuery.of(context).size.height / 5,
        centerTitle: true,
        title: const Text(
          'Sign In',
          textAlign: TextAlign.center,
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 50), //left top right bottom
        constraints: const BoxConstraints.expand(),
        color: Colors.white,

        child: ListView(
          shrinkWrap: true,
          children: [
            const SizedBox(height: 30),
            _textField('Username'),
            const SizedBox(height: 15),
            _textField('Password'),
            const SizedBox(height: 15),
            RichText(
              textAlign: TextAlign.right,
              text: const TextSpan(
                children: [
                  TextSpan(text: 'Forgot: ', style: TextStyle(color: Color(0xffc4c4c4))),
                  TextSpan(text: 'Username/Password?', style: TextStyle(color: Color(0xff8eb388))),
                ],
              ),
            ),
            const SizedBox(height: 15),
            ElevatedButton(
                style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all<Color>(const Color(0xffd4ffcf)),
                  overlayColor: MaterialStateProperty.resolveWith<Color?>(
                    (Set<MaterialState> states) {
                      if (states.contains(MaterialState.hovered)) {
                        return Colors.blue.withOpacity(0.04);
                      }
                      if (states.contains(MaterialState.focused) || states.contains(MaterialState.pressed)) {
                        return Colors.blue.withOpacity(0.12);
                      }
                      return null; // Defer to the widget's default.
                    },
                  ),
                ),
                onPressed: () {},
                child: const Text('SIGN IN'))
          ],
        ),
      ),
    );
  }

  Widget _textField(String title) {
    return TextField(
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(horizontal: 30),
        filled: true,
        fillColor: const Color(0xffececec),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide.none,
        ),
        labelText: title,
        labelStyle: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Color(0xff1a2817)),
      ),
    );
  }
}
