import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFFF5400),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Text(
              "lejaum",
              style: TextStyle(
                fontFamily: 'Georama',
                color: Color(0xFFE5E5E5),
                fontStyle: FontStyle.italic,
                fontSize: 40,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(width: 10),
            Row(
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'teste2',
                    style: TextStyle(
                      fontFamily: 'Georama',
                      color: Color(0xFFE5E5E5),
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Soluções',
                    style: TextStyle(
                      fontFamily: 'Georama',
                      color: Color(0xFFE5E5E5),
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Portfólio',
                    style: TextStyle(
                      fontFamily: 'Georama',
                      color: Color(0xFFE5E5E5),
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Sac',
                    style: TextStyle(
                      fontFamily: 'Georama',
                      color: Color(0xFFE5E5E5),
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Contato',
                    style: TextStyle(
                      fontFamily: 'Georama',
                      color: Color(0xFFE5E5E5),
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      body: Center(
        child: Container(
          color: const Color(0xFF2C394B),
          // child: Image.asset(
          //   'assets/images/backgroundlejaum.png',
          //   fit: BoxFit.fill,
          // ),
        ),
      ),
    );
  }
}
