import 'package:flutter/material.dart';

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
                    'Início',
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
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/first_page_bg.png"),
            ),
          ),
        ),
      ),
    );
  }
}
