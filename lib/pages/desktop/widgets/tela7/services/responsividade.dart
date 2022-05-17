import 'package:lejaum/pages/mobile/services/themes.dart';

double mudarFonteTituloCard(double largura) {
  double tamanho_fonte = largura <= motog4 ? 23 : 25;
  return tamanho_fonte;
}

double mudarAlturaIcone(double largura) {
  double tamanho_fonte = largura <= motog4 ? 5 : 6;
  return tamanho_fonte;
}

double mudarFonteSubTituloCard(double largura) {
  double tamanho_fonte = largura <= motog4 ? 12 : 18;
  return tamanho_fonte;
}

double mudarFonteCardSolicitacao(double largura) {
  double tamanho_fonte = largura <= motog4 ? 12 : 20;
  return tamanho_fonte;
}

double mudarFonteQuote(double largura) {
  double tamanho_fonte = largura <= motog4 ? 13 : 16;
  return tamanho_fonte;
}

double mudarFontefooter(double largura) {
  double tamanho_fonte = largura <= motog4 ? 11 : 16;
  return tamanho_fonte;
}
