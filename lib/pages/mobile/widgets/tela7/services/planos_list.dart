import 'package:flutter/material.dart';
import 'package:lejaum/pages/mobile/services/styles_mobile.dart';
import 'package:lejaum/pages/mobile/widgets/tela7/widgets/planos_options.dart';
import 'package:sizer/sizer.dart';
import 'package:universal_html/html.dart';

List<String> planosTitle = [
  "Relacionamento Basic",
  "Visibilidade Plus",
  "Marketing Master",
];

List<String> planosCard1 = [
  "Planejamento de Social Media",
  "até 4 Posts Semanais(16/mês)",
  "Gestão de Anúncios no Facebook e Instagram",
  "Gestão de Anúncios no Google e Youtube",
];

List<String> planosCard2 = [
  "Planejamento de Social Media",
  "até 3 Posts Semanais(12/mês)",
  "Gestão de Anúncios no Facebook e Instagram",
  "Gestão de Anúncios no Google e Youtube",
];
List<String> planosCard3 = [
  "Planejamento de Social Media",
  "até 2 Posts Semanais(8/mês)",
  "Gestão de Anúncios no Facebook e Instagram",
  "Gestão de Anúncios no Google e Youtube",
];

List<Widget> planosList = [
  Plano1(),
  Plano2(),
  Plano3(),
];

// class Plano1 extends StatelessWidget {
//   const Plano1({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Align(
//       alignment: Alignment.center,
//       child: Container(
//         color: Styles.quaseBlack,
//         width: 80.w,
//         height: 50.h,
//         child: Column(
//           children: [
//             Text('Relacionamento Basic'),
//             Card(
//               color: Colors.white,
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

// class Plano2 extends StatelessWidget {
//   const Plano2({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Align(
//       alignment: Alignment.center,
//       child: Container(
//         color: Styles.quaseBlack,
//         width: 80.w,
//         height: 50.h,
//         child: Column(
//           children: [
//             Text('Visibilidade Plus'),
//             Card(
//               color: Colors.white,
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

// class Plano3 extends StatelessWidget {
//   const Plano3({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Align(
//       alignment: Alignment.center,
//       child: Container(
//         color: Styles.quaseBlack,
//         width: 80.w,
//         height: 50.h,
//         child: Column(
//           children: [
//             Text('Marketing Master'),
//             Card(
//               color: Colors.white,
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
class Plano1 extends StatelessWidget {
  const Plano1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      color: Styles.quaseWhite,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 6),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 30),
            flagsDoPlanoAtivado('Planejamento de Social\nMedia'),
            const SizedBox(height: 15),
            flagsDoPlanoAtivado('até 4 Posts Semanais\n(16/mês)'),
            const SizedBox(height: 15),
            flagsDoPlanoAtivado('Gestão de Tráfego\nCompleta'),
            Expanded(child: Container()),
            quoteDoPlano(),
            Expanded(child: Container()),
            cardSolicitacao(
              // nome: 'Digital Master',
              valor: 'Plano Pro - R\$1.997,00',
              descricao: 'Social Media + Tráfego Pago',
            ),
            const SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}

class Plano2 extends StatelessWidget {
  const Plano2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 63.h,
      child: Column(
        children: [
          Text('dataaaaaaaaaaaaaa'),
          Container(
            width: 400,
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              color: Styles.quaseWhite,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 6),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(height: 30),
                    flagsDoPlanoAtivado('Planejamento de Social\nMedia'),
                    const SizedBox(height: 15),
                    flagsDoPlanoAtivado('até 3 Posts Semanais\n(12/mês)'),
                    const SizedBox(height: 15),
                    flagsDoPlanoAtivado(
                        'Gestão de Anúncions\nno Facebook e Instagram'),
                    const SizedBox(height: 15),
                    flagsDoPlanoDesativado(
                        'Gestão de Anúncios no\nGoogle e Youtube'),
                    Expanded(child: Container()),
                    cardSolicitacao(
                      // nome: 'Visibilidade Plus',
                      valor: 'Plano Médio - R\$997,00',
                      descricao: 'Social Media + Tráfego Pago',
                    ),
                    const SizedBox(height: 15),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Plano3 extends StatelessWidget {
  const Plano3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      color: Styles.quaseWhite,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 6),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const SizedBox(height: 30),
            flagsDoPlanoAtivado('Planejamento de Social\nMedia'),
            const SizedBox(height: 15),
            flagsDoPlanoAtivado('até 2 Posts Semanais\n(8/mês)'),
            const SizedBox(height: 15),
            flagsDoPlanoDesativado(
                'Gestão de Anúncions\nno Facebook e Instagram'),
            const SizedBox(height: 15),
            flagsDoPlanoDesativado('Gestão de Anúncios no\nGoogle e Youtube'),
            Expanded(child: Container()),
            cardSolicitacao(
              // nome: 'Relacionamento Basic',
              valor: 'Plano Básico - R\$399,00',
              descricao: 'Social Media',
            ),
            const SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
