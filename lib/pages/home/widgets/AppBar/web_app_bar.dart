import 'package:flutter/material.dart';

class WebAppBar extends StatelessWidget {
  const WebAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color(0xFFFF5400),
      toolbarHeight: 72,
      elevation: 5,
      title: Row(
        children: [
          Text(
            'lejaum',
            style: TextStyle(
              color: Color(0xFFE5E5E5),
              fontSize: 30,
              fontFamily: 'Georama',
              fontStyle: FontStyle.italic,
            ),
          ),
          Expanded(child: Container()),
          TextButton(
            onPressed: () {},
            child: Text(
              // Início
              'Início',
              style: TextStyle(
                color: Color(0xFFE5E5E5),
                fontFamily: "Georama",
                fontStyle: FontStyle.normal,
                fontSize: 20,
              ),
            ),
            style: ButtonStyle(
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  side: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),
          const SizedBox(width: 32),
          TextButton(
            onPressed: () {},
            child: Text(
              // Soluções
              'Soluções',
              style: TextStyle(
                color: Color(0xFFE5E5E5),
                fontFamily: "Georama",
                fontStyle: FontStyle.normal,
                fontSize: 20,
              ),
            ),
            style: ButtonStyle(
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  side: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),
          const SizedBox(width: 32),
          TextButton(
            onPressed: () {},
            child: Text(
              // Portfólio
              'Portfólio',
              style: TextStyle(
                color: Color(0xFFE5E5E5),
                fontFamily: "Georama",
                fontStyle: FontStyle.normal,
                fontSize: 20,
              ),
            ),
            style: ButtonStyle(
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  side: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),
          const SizedBox(width: 32),
          TextButton(
            // FAQ
            onPressed: () {},
            child: Text(
              'FAQ',
              style: TextStyle(
                color: Color(0xFFE5E5E5),
                fontFamily: "Georama",
                fontStyle: FontStyle.normal,
                fontSize: 20,
              ),
            ),
            style: ButtonStyle(
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  side: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),
          const SizedBox(width: 32),
          TextButton(
            // Contato
            onPressed: () {},
            child: Text(
              'Contato',
              style: TextStyle(
                color: Color(0xFFE5E5E5),
                fontFamily: "Georama",
                fontStyle: FontStyle.normal,
                fontSize: 20,
              ),
            ),
            style: ButtonStyle(
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  side: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),
          const SizedBox(width: 32),
        ],
      ),
    );
  }
}
