import 'package:flutter/material.dart';
import 'package:pdf_render/pdf_render_widgets.dart';

class PdfJanfie extends StatefulWidget {
  const PdfJanfie({Key? key}) : super(key: key);

  @override
  _PdfJanfieState createState() => _PdfJanfieState();
}

class _PdfJanfieState extends State<PdfJanfie> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Janfie PDF'),
      ),
      backgroundColor: Colors.grey,
      body: Center(
        child: PdfDocumentLoader.openAsset(
          'assets/pdf/janfie-apresentacao.pdf',
          documentBuilder: (context, pdfDocument, pageCount) => LayoutBuilder(
            builder: (context, constraints) => ListView.builder(
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
    );
  }
}
