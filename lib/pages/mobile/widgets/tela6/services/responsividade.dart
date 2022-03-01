import 'package:lejaum/pages/mobile/services/themes.dart';

double mudarFonteTitulo(double largura) {
  double tamanho_fonte = largura <= motog4 ? 16 : 23;
  return tamanho_fonte;
}

double mudarAlturaSvg(double largura) {
  double tamanho_fonte = largura <= motog4 ? 16 : 23;
  return tamanho_fonte;
}

double mudarFonteSubTitulo(double largura) {
  double tamanho_fonte = largura <= motog4 ? 12 : 16;
  return tamanho_fonte;
}
