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
        toolbarHeight: MediaQuery.of(context).size.height * 0.15,
        centerTitle: true,
        title: const Text(
          'Sign In',
          textAlign: TextAlign.center,
        ),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        )),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: SizedBox(
          height: MediaQuery.of(context).size.height * 0.85,
          child: Column(
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
                style: ElevatedButton.styleFrom(
                    elevation: 1,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                    minimumSize: const Size(double.infinity, 55),
                    backgroundColor: const Color(0xff59b747)),
                onPressed: () {},
                child: const Text('SIGN IN'),
              ),
              const Spacer(),
              const Text('Don\'t have account', style: TextStyle(color: Color(0xffc4c4c4))),
              const Text('SIGN UP NOW', style: TextStyle(color: Color(0xff8eb388), fontWeight: FontWeight.bold)),
              const SizedBox(height: 40),
            ],
          ),
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
