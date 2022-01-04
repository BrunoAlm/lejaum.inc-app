import 'package:flutter/material.dart';
import 'package:lejaum/pages/mobile/services/styles_mobile.dart';

Widget boxMao() => Row(
      children: [
        Expanded(
          child: Container(
            height: 80,
            decoration: StylesMobile.boxesDecoration,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(width: 14),
                Image.asset(
                  'assets/images/boxes/mao_icon.png',
                  fit: BoxFit.cover,
                  height: 60,
                ),
                const SizedBox(width: 15),
                RichText(
                  text: TextSpan(
                    style: StylesMobile.boxesStyle,
                    children: [
                      TextSpan(text: 'Seja reconhecido pelos seus\n'),
                      TextSpan(text: 'clientes e fidelize eles com\n'),
                      TextSpan(
                          text: 'identidade visual',
                          style: StylesMobile.boxesStyleBold),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );

Widget boxCoracao() => Row(
      children: [
        Expanded(
          child: Container(
            height: 66,
            decoration: StylesMobile.boxesDecoration,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(width: 14),
                Image.asset('assets/images/boxes/like_insta_icon.png'),
                const SizedBox(width: 15),
                RichText(
                  text: TextSpan(
                    style: StylesMobile.boxesStyle,
                    children: [
                      TextSpan(text: 'Crie relacionamento com seu\n'),
                      TextSpan(text: 'público com '),
                      TextSpan(
                          text: 'social media',
                          style: StylesMobile.boxesStyleBold),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );

Widget boxSino() => Row(
      children: [
        Expanded(
          child: Container(
            decoration: StylesMobile.boxesDecoration,
            height: 80,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(width: 14),
                Image.asset('assets/images/boxes/sino_icon.png'),
                const SizedBox(width: 15),
                RichText(
                  text: TextSpan(
                    style: StylesMobile.boxesStyle,
                    children: [
                      TextSpan(text: 'Apareça no digital para a\n'),
                      TextSpan(text: 'pessoa certa e no momento\n'),
                      TextSpan(text: 'certo com '),
                      TextSpan(
                          text: 'tráfego pago',
                          style: StylesMobile.boxesStyleBold),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );

Widget boxGrafico() => Row(
      children: [
        Expanded(
          child: Container(
            height: 66,
            decoration: StylesMobile.boxesDecoration,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(width: 14),
                Image.asset('assets/images/boxes/grafico_icon.png'),
                const SizedBox(width: 15),
                RichText(
                  text: TextSpan(
                    style: StylesMobile.boxesStyle,
                    children: [
                      TextSpan(text: 'Transforme seus Leads em\n'),
                      TextSpan(text: 'Vendas com '),
                      TextSpan(
                          text: 'marketing',
                          style: StylesMobile.boxesStyleBold),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
