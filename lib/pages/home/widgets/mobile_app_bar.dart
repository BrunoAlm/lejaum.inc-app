import 'package:flutter/material.dart';

class MobileAppBar extends StatelessWidget {
  const MobileAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color(0xFFFF5400),
      title: Text(
        'lejaum',
        style: TextStyle(
          color: Color(0xFFE5E5E5),
          fontSize: 40,
          fontFamily: 'Georama',
          fontStyle: FontStyle.italic,
        ),
      ),
      actions: [
        TextButton(
          onPressed: () {},
          child: Text(
            'Início',
            style: TextStyle(
              color: Color(0xFFE5E5E5),
              fontSize: 25,
              fontFamily: 'Georama',
              fontStyle: FontStyle.normal,
            ),
          ),
        ),
        TextButton(
          // botão início
          style: ButtonStyle(
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                side: BorderSide(
                  color: Color(0xFFE5E5E5),
                  width: 2,
                ),
              ),
            ),
          ),
          onPressed: () {},
          child: Text(
            'Início',
            style: TextStyle(
              color: Color(0xFFE5E5E5),
              fontSize: 25,
              fontFamily: 'Georama',
              fontStyle: FontStyle.normal,
            ),
          ),
        ),
        TextButton(
          // botão soluções
          style: ButtonStyle(
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                side: BorderSide(
                  color: Color(0xFFE5E5E5),
                  width: 2,
                ),
              ),
            ),
          ),
          onPressed: () {},
          child: Text(
            'Soluções',
            style: TextStyle(
              color: Color(0xFFE5E5E5),
              fontSize: 25,
              fontFamily: 'Georama',
              fontStyle: FontStyle.normal,
            ),
          ),
        ),
        TextButton(
          // botão porfólio
          style: ButtonStyle(
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                side: BorderSide(
                  color: Color(0xFFE5E5E5),
                  width: 2,
                ),
              ),
            ),
          ),
          onPressed: () {},
          child: Text(
            'Portfólio',
            style: TextStyle(
              color: Color(0xFFE5E5E5),
              fontSize: 25,
              fontFamily: 'Georama',
              fontStyle: FontStyle.normal,
            ),
          ),
        ),
        TextButton(
          // botão faq
          style: ButtonStyle(
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                side: BorderSide(
                  color: Color(0xFFE5E5E5),
                  width: 2,
                ),
              ),
            ),
          ),
          onPressed: () {},
          child: Text(
            'FAQ',
            style: TextStyle(
              color: Color(0xFFE5E5E5),
              fontSize: 25,
              fontFamily: 'Georama',
              fontStyle: FontStyle.normal,
            ),
          ),
        ),
        TextButton(
          // botão contato
          style: ButtonStyle(
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                side: BorderSide(
                  color: Color(0xFFE5E5E5),
                  width: 2,
                ),
              ),
            ),
          ),
          onPressed: () {},
          child: Text(
            'Contato',
            style: TextStyle(
              color: Color(0xFFE5E5E5),
              fontSize: 25,
              fontFamily: 'Georama',
              fontStyle: FontStyle.normal,
            ),
          ),
        ),
      ],
    );
  }
}
