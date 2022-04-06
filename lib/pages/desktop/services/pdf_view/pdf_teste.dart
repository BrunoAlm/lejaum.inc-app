import 'package:flutter/material.dart';
import 'package:lejaum/pages/desktop/widgets/tela3/widgets/galeria/widgets/galeria_widgets.dart';
import 'package:pdf_render/pdf_render_widgets.dart';

import '../../../mobile/services/styles_mobile.dart';

List<String> _pdfs = [
  'assets/pdf/azardi_shop.pdf',
  'assets/pdf/janfie.pdf',
  'assets/pdf/mustagrill.pdf',
  'assets/pdf/lejaum.pdf',
];

class PdfTeste extends StatefulWidget {
  PdfTeste({Key? key, required this.pdfClicado}) : super(key: key);
  int pdfClicado;
  bool carregamento = false;
  @override
  State<PdfTeste> createState() => _PdfTesteState();
}

class _PdfTesteState extends State<PdfTeste> {
  @override
  Widget build(BuildContext context) {
    var _largura = MediaQuery.of(context).size.width;
    var _altura = MediaQuery.of(context).size.height;
    return Stack(children: [
      GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: borrada(),
      ),
      Align(
        alignment: Alignment.center,
        child: Container(
          color: Styles.quaseBlack,
          // color: widget.pdfClicado == 0
          //     ? Colors.pink
          //     : widget.pdfClicado == 1
          //         ? Colors.blue
          //         : widget.pdfClicado == 2
          //             ? Colors.yellow
          //             : Colors.green,
          height: _altura,
          width: _largura * 0.5,
          child: widget.carregamento
              ? SizedBox(
                  height: 10,
                  width: 10,
                  child: Center(
                    child: CircularProgressIndicator(
                      color: Styles.laranjaum,
                      strokeWidth: 5,
                    ),
                  ),
                )
              : PdfDocumentLoader.openAsset(
                  _pdfs[widget.pdfClicado],
                  documentBuilder: (context, pdfDocument, pageCount) =>
                      ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: pageCount,
                    itemBuilder: (context, index) => Container(
                      margin: EdgeInsets.all(2),
                      padding: EdgeInsets.all(0),
                      color: Colors.black12,
                      child: PdfPageView(
                        pdfDocument: pdfDocument,
                        pageNumber: index + 1,
                      ),
                    ),
                  ),
                ),
        ),
      ),
      Positioned(
        left: _largura * 0.20,
        bottom: _altura - _altura * 0.95,
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Material(
                color: Color(0xFF696969),
                child: IconButton(
                  padding: const EdgeInsets.all(12),
                  alignment: Alignment.center,
                  onPressed: () {
                    if (widget.pdfClicado == 0) {
                      setState(() {
                        widget.carregamento = true;
                        widget.pdfClicado = _pdfs.length - 1;
                        Future.delayed(
                          Duration(seconds: 2),
                          () {
                            setState(() {});
                            widget.carregamento = false;
                          },
                        );
                      });
                    } else {
                      setState(() {
                        widget.carregamento = true;
                        widget.pdfClicado--;
                        Future.delayed(
                          Duration(seconds: 2),
                          () {
                            setState(() {
                              widget.carregamento = false;
                            });
                          },
                        );
                      });
                    }
                  },
                  icon: Icon(Icons.arrow_back_ios_new_rounded,
                      color: Styles.quaseWhite, size: 20),
                ),
              ),
            ),
            const SizedBox(height: 5),
            Material(
              color: Colors.transparent,
              child: Text(
                'Anterior',
                style: TextStyle(fontFamily: "Georama", color: Colors.white),
              ),
            ),
          ],
        ),
      ),
      Positioned(
        right: _largura * 0.20,
        bottom: _altura - _altura * 0.95,
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Material(
                color: Color(0xFF696969),
                child: IconButton(
                  padding: const EdgeInsets.all(12),
                  alignment: Alignment.center,
                  onPressed: () {
                    if (widget.pdfClicado == _pdfs.length - 1) {
                      setState(() {
                        widget.carregamento = true;
                        widget.pdfClicado = 0;
                        Future.delayed(
                          Duration(seconds: 2),
                          () {
                            setState(() {
                              widget.carregamento = false;
                            });
                          },
                        );
                      });
                    } else {
                      setState(() {
                        widget.carregamento = true;
                        widget.pdfClicado++;
                        Future.delayed(
                          Duration(seconds: 2),
                          () {
                            setState(() {});
                            widget.carregamento = false;
                          },
                        );
                      });
                    }
                  },
                  icon: Icon(Icons.arrow_forward_ios_rounded,
                      color: Styles.quaseWhite, size: 20),
                ),
              ),
            ),
            const SizedBox(height: 5),
            Material(
              color: Colors.transparent,
              child: Text(
                'Próximo',
                style: TextStyle(fontFamily: "Georama", color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    ]);
  }
}
