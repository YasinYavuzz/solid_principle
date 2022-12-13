// istemcilerin kullanılmayan arayüzleri uygulamamaya zorlanmamasını amaçlayan prensiptir.

// Futbolcu örneğinde oyuncuların hepsi birçok mevkide oynamaktadır.
// burada futbolculara oynamadıkları mevkiler için zorlamamalıyız. 


// mixin IFutbolcu{
//   void defansYap();
//   void penaltiKurtar();
//   void pasAt();
//   void golAt();
// }

// // Bir defans oyuncusunun tüm bunları yapma sorumluluğu yok
// // o yüzden bunları eklemek bu prensiblere aykırıdır.
// // Onun için bunları düzenlemiz gerekiyor.
// class DeafansOyuncusu implements IFutbolcu{
//   @override
//   void defansYap() {
//     // TODO: implement defansYap
//   }

//   @override
//   void golAt() {
//     // TODO: implement golAt
//   }

//   @override
//   void pasAt() {
//     // TODO: implement pasAt
//   }

//   @override
//   void penaltiKurtar() {
//     // TODO: implement penaltiKurtar
//   }
// }


mixin IFutbolcu{ // mevkilerde ortak yapılacak işlemler
  void pasAt();
}

mixin IForvet{
  void golAt();
}

// Mevkilere göre yapılacak işlemler ayrı ayrı tanımlanmalıdır.
// Sadece kullanılacaklar dahil edilmelidir.
// Doğru kullanım
class Forvet implements IFutbolcu, IForvet{
  @override
  void golAt() {
    // TODO: implement golAt
  }

  @override
  void pasAt() {
    // TODO: implement pasAt
  }
}