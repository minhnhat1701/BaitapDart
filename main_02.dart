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
      debugShowCheckedModeBanner: false,
      title: 'Sign in',
      home: const MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   toolbarHeight: 100,
      //   title: const Text(
      //     'SIGN IN TO YOUR ACCOUNT',
      //     style: TextStyle(
      //       fontSize: 25,
      //       color: Color(0xff4F4F4F),
      //       fontWeight: FontWeight.bold,
      //     ),
      //   ),
      //   centerTitle: true,
      //   backgroundColor: Colors.white,
      // ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 60),
        color: Colors.white,
        child: ListView(
          children: [
            const SizedBox(height: 50),
            RichText(
              textAlign: TextAlign.center,
              text: const TextSpan(children: [
                TextSpan(
                  text: 'SIGN IN TO YOUR ACCOUNT',
                  style: TextStyle(
                    fontSize: 25,
                    color: Color(0xff4F4F4F),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ]),
            ),
            const SizedBox(height: 45),
            _sizedBox('johnnythedesigner@gmail.com'),
            const SizedBox(height: 18),
            _sizedBox('********'),
            const SizedBox(height: 15),
            ListTile(
              leading: Checkbox(
                value: true,
                checkColor: const Color(0xffE7E4FB),
                activeColor: const Color(0xff766CD8),
                tristate: true,
                onChanged: (value) {},
              ),
              title: const Text(
                'Keep me signed in',
                style: TextStyle(
                  fontSize: 15,
                  color: Color(0xffA1A2A6),
                ),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 70,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(const Color(0xff746BDE)),
                  foregroundColor: MaterialStateProperty.all(
                    const Color(0xffF7F6FF),
                  ),
                  overlayColor: MaterialStateProperty.resolveWith<Color?>(
                    (Set<MaterialState> states) {
                      if (states.contains(MaterialState.hovered)) {
                        return Colors.black.withOpacity(0.1);
                      }
                      if (states.contains(MaterialState.focused) ||
                          states.contains(MaterialState.pressed)) {
                        return Colors.black.withOpacity(0.1);
                      }
                      return null;
                    },
                  ),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
                onPressed: () {},
                child: const Text(
                  'SIGN IN',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
            RichText(
              textAlign: TextAlign.center,
              text: const TextSpan(
                  text: 'Forgot your password?',
                  style: TextStyle(
                    color: Color(0xffA1A2A6),
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  )),
            )
          ],
        ),
      ),
    );
  }

  Widget _sizedBox(String hint) {
    return SizedBox(
      height: 70,
      child: TextField(
        expands: true,
        maxLines: null,
        decoration: InputDecoration(
          labelText: '',
          labelStyle: const TextStyle(
            fontSize: 18,
            color: Color(0xff80838C),
            fontWeight: FontWeight.bold,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide.none,
          ),
          fillColor: const Color(0xffE5E8ED),
          filled: true,
          contentPadding: const EdgeInsets.symmetric(horizontal: 25),
          hintText: hint,
          hintStyle: const TextStyle(
            color: Color(0xff80838C),
          ),
        ),
        style: const TextStyle(
          color: Color(0xff80838C),
        ),
      ),
    );
  }
//  Widget _textField(String title) {
//     return TextField(
//       decoration: InputDecoration(
//         contentPadding: const EdgeInsets.symmetric(horizontal: 30),
//         filled: true,
//         fillColor: const Color(0xffececec),
//         border: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(30),
//           borderSide: BorderSide.none,
//         ),
//         labelText: title,
//         labelStyle: const TextStyle(
//           fontWeight: FontWeight.bold,
//           fontSize: 13,
//           color: Color(0xff1a2817),
//         ),
//       ),
//     );
//   }
}
