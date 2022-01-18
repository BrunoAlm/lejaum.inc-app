import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class PdfArzadi extends StatefulWidget {
  const PdfArzadi({Key? key}) : super(key: key);

  @override
  _PdfArzadiState createState() => _PdfArzadiState();
}

class _PdfArzadiState extends State<PdfArzadi> {
  late PdfViewerController _pdfViewerController;

  @override
  void initState() {
    _pdfViewerController = PdfViewerController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Arzadi - Id. Visual e Naming',
        ),
      ),
      body: Container(
        child: SfPdfViewer.asset(
          'assets/pdf/azardi_shop.pdf',
          controller: _pdfViewerController,
        ),
      ),
      floatingActionButton: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton.extended(
            onPressed: () {
              _pdfViewerController.previousPage();
            },
            elevation: 10,
            label: Icon(
              Icons.keyboard_arrow_up,
              color: Colors.black,
            ),
          ),
          // Expanded(child: Container()),
          FloatingActionButton.extended(
            onPressed: () {
              _pdfViewerController.nextPage();
            },
            elevation: 10,
            label: Icon(
              Icons.keyboard_arrow_down,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
