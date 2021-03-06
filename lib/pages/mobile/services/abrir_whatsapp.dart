import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

abrirWhatsApp() async {
  var numero = '+5569993510094';
  var mensagem = 'Oi! Vi o seu site e preciso de ajuda';

  var url_web = 'https://wa.link/hwu2yd';
  var url_android =
      "whatsapp://send?phone=$numero&text=${Uri.encodeFull(mensagem)}";
  var url_IOS = "whatsapp://wa.me/$numero/?text=${Uri.encodeFull(mensagem)}";
  // var whatsappUrl =
  //     "whatsapp://send?phone=+5569993510094&text=Oi! Vi o seu site e preciso de ajuda";

  if (await canLaunch(url_IOS)) {
    await launch(url_IOS);
  } else {
    if (await canLaunch(url_android)) {
      await launch(url_android);
    } else {
      if (await canLaunch(url_web)) {
        await launch(url_web);
      } else {
        Get.showSnackbar(GetSnackBar(
          message: 'Sem Internet?',
        ));
      }
    }
  }
}

abrirSite(String link) async {
  // var link = '';

  if (await canLaunch(link)) {
    await launch(link);
  } else {
    Get.showSnackbar(GetSnackBar(
      message: 'Não foi possível acessar',
    ));
  }
}
