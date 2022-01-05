import 'package:flutter/material.dart';
import 'package:lejaum/pages/mobile/services/styles_mobile.dart';

class BoxMao extends StatelessWidget {
  const BoxMao({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
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
                    style: StylesMobile.boxesStyle.merge(
                      TextStyle(color: Theme.of(context).colorScheme.secondary),
                    ),
                    children: [
                      TextSpan(text: 'Seja reconhecido pelos seus\n'),
                      TextSpan(text: 'clientes e fidelize eles com\n'),
                      TextSpan(
                        text: 'identidade visual',
                        style: StylesMobile.boxesStyleBold.merge(
                          TextStyle(
                              color: Theme.of(context).colorScheme.secondary),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class BoxCoracao extends StatelessWidget {
  const BoxCoracao({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
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
                    style: StylesMobile.boxesStyle.merge(
                      TextStyle(color: Theme.of(context).colorScheme.secondary),
                    ),
                    children: [
                      TextSpan(text: 'Crie relacionamento com seu\n'),
                      TextSpan(text: 'público com '),
                      TextSpan(
                        text: 'social media',
                        style: StylesMobile.boxesStyleBold.merge(
                          TextStyle(
                              color: Theme.of(context).colorScheme.secondary),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class BoxSino extends StatelessWidget {
  const BoxSino({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
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
                    style: StylesMobile.boxesStyle.merge(
                      TextStyle(color: Theme.of(context).colorScheme.secondary),
                    ),
                    children: [
                      TextSpan(text: 'Apareça no digital para a\n'),
                      TextSpan(text: 'pessoa certa e no momento\n'),
                      TextSpan(text: 'certo com '),
                      TextSpan(
                        text: 'tráfego pago',
                        style: StylesMobile.boxesStyleBold.merge(
                          TextStyle(
                              color: Theme.of(context).colorScheme.secondary),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class BoxGrafico extends StatelessWidget {
  const BoxGrafico({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
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
                    style: StylesMobile.boxesStyle.merge(
                      TextStyle(color: Theme.of(context).colorScheme.secondary),
                    ),
                    children: [
                      TextSpan(text: 'Transforme seus Leads em\n'),
                      TextSpan(text: 'Vendas com '),
                      TextSpan(
                        text: 'marketing',
                        style: StylesMobile.boxesStyleBold.merge(
                          TextStyle(
                              color: Theme.of(context).colorScheme.secondary),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
