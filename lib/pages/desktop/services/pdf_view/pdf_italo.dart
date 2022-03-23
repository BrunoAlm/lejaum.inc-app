import 'package:flutter/material.dart';
import 'package:lejaum/pages/mobile/services/styles_mobile.dart';
import 'package:pdf_render/pdf_render_widgets.dart';

class PdfItaloDesktop extends StatefulWidget {
  const PdfItaloDesktop({Key? key}) : super(key: key);

  @override
  _PdfItaloDesktopState createState() => _PdfItaloDesktopState();
}

class _PdfItaloDesktopState extends State<PdfItaloDesktop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Styles.pretao,
        title: const Text('Italo - Id. Visual e Site',
            style: Styles.textoBrancoBold),
      ),
      // backgroundColor: Colors.grey,
      body: Center(
        child: PdfDocumentLoader.openAsset(
          'assets/pdf/italo.pdf',
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
