import 'package:flutter/material.dart';
import 'package:lejaum/pages/mobile/services/styles_mobile.dart';
import 'package:pdf_render/pdf_render_widgets.dart';

class PdfLejaum extends StatefulWidget {
  const PdfLejaum({Key? key}) : super(key: key);

  @override
  _PdfLejaumState createState() => _PdfLejaumState();
}

class _PdfLejaumState extends State<PdfLejaum> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Styles.pretao,
        title: const Text('Lejaum - Id. Visual e Naming',
            style: Styles.textoBrancoBold),
      ),
      // backgroundColor: Colors.grey,
      body: Center(
        child: PdfDocumentLoader.openAsset(
          'pdf/janfie.pdf',
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
