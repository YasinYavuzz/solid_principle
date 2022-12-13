// Rapor olustur sınıfını bu prensipte ele alalım.

import 'package:solid_principles/single_responsibility_principle/single_responsibility_principle.dart';

// Burada çok fazla if cümleleri var 
// Bu prensibe göre classlar gelişime açık, değişime kapalı olmalıdır.
// yeni bir tipte rapor olusturacaksak if() ile değiştirmemiz gerekiyor 
// bu işlem bu prensibe kapalı olmalıdır. 
// Hatalı kullanım

// class RaporOlusturma{
//   void raporOlustur(Employee em){
//     if ("raporTipi" == "Excel") {
//       // Excel tipinde rapor olusturur
//     }
//     if ("raporTipi" == "PDF") {
//       // PDF tipinde rapor olusturur
//     }
//   }
// }



abstract class Rapor{

  int? raporId;
  String? raporAdi;

  void raporOlustur(Employee em);
}

// Excel tipine göre bir class
class ExcelRaporOlustur extends Rapor{
  
  @override
  void raporOlustur(Employee em) {
    // TODO: implement raporOlustur
  }
}

// PDF tipine göre bir class
class PDFRaporOlustur extends Rapor{
  @override
  void raporOlustur(Employee em) {
    // TODO: implement raporOlustur
  }

  
}

// OCP prensibine göre doğru bir kullanım