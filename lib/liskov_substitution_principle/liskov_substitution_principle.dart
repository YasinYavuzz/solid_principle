// Bir sınıfta bulunan özellikler, kendisinden kalıtım alan classlarda kullanılmayacaksa bu durum 
// bu prensibe aykırıdır.

// abstract class Kus{ 

//   String uc();
//   String yuru();

// }

// // Liskov prensibine göre kus classında olusturmus olduğumuz tüm metodları miras almış olduğumuz 
// // sınıflarda kullanmamız gerekir.
// // Guvercin sınıfında hepsini kullandık
// class Guvercin implements Kus{
//   @override
//   String uc() {
//     return "Uçtu";
//   }

//   @override
//   String yuru() {
//     return "Yürüdü";
//   }

// }

// // Tavuk sınıfında ise miras aldığımız tüm metodlar uymadı bu liskov prensibine aykırı bir durum
// class Tavuk implements Kus{
//   @override
//   String uc() {
//     throw UnimplementedError();
//   }

//   @override
//   String yuru() {
//     return "Yürüdü";
//   }

// }


// bu yapıyı liskov prensibine uygun hale getirecek olursak 

// mixin diğer dillerdeki interface kavramına denk gelir ve sınıfımıza yeni özellikler kazandırmayı sağlar 

mixin IUcanlar{ // ucma özelliği
  String uc();
}

mixin IYuruyenler{ // yurume özelliği
  String yuru();
}

class Tavuk implements IYuruyenler{
  @override
  String yuru() {
    return "Yürüdü";    
  }
} 

class Guvercin implements IUcanlar,IYuruyenler{
  @override
  String uc() {
    return "Ucuyor";
  }

  @override
  String yuru() {
    return "Yuruyor";
  }

}