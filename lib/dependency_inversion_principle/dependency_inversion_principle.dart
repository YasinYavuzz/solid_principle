// üst seviye sınıflar alt seviye sınıflara bağlı olmamalıdır.
// ilişkiler abstraction veya interface kullanarak sağlanmalıdır.
// bağımlılıklar azaltılmalıdır. 

// Ana sınıfımız üretim high-level class araba ise low-level classtır.
// Uretim classı içerisindeki uretimYap() metodu araba classındaki parcalariMonteEt()
// metoduna bağlıdır.
// Araba classındaki metodlarda yapılacak olan değişiklikler üst sınıfıda etkilemektedir
// yani oraya da metod eklememiz gerekir.

// dolayısıyla bu durum Dependency Inversion Principle aykırı bir durumdur.  

// class Uretim{

//   void uretimYap(){
//     Araba araba = Araba();
//     araba.parcalariMonteEt();
//   }

// }

// class Araba{

//   bool parcalariMonteEt(){
//     return true;
//   }

// }


// Şimdi bunun doğru kullanımını görecek olursak 
// Üst sınıfın alt sınıfla olan bağımlılığını koparttık.

// mixin IUretim{
//   bool parcalariMonteEt();
// }

// class SeriUretim{
//   IUretim? _iUretim;
//   SeriUretim(){
//     _iUretim = new Motor();
//   }

//   void Uret(){
//     _iUretim!.parcalariMonteEt();
//   }
// }

// class Traktor implements IUretim{
//   @override
//   bool parcalariMonteEt() {
//     return false;
//   }
// }


// class Motor implements IUretim{
  
//   @override
//   bool parcalariMonteEt() {
//     return true;
//   }
// }


// Başka bir örnek Dependency Inversion Principle

// class Blog
// {
//   // High Level Class
//   void Create()
//   {
//     // Low level sınıfımızda bir metod yazdığımızda burada da 
//     // belirtmem gerekiyor. O yüzden bu bağımlılığı kaldırmak için
//     // abstract ve interface (mixin) yapılarını kullanacağız 
//     Post post = new Post();
//     post.CreatePost(true);
//   }
// }
// class Post
// {
//   // Low Level Class
//   void CreatePost(bool picture)
//   {
//     // Process
//   }
// }

mixin IContent{
  bool createContent();
}

// High Level Class 
class Blog{
  IContent? content;
  Blog(){
    // implemente ettiğimiz sınıfların tipini girebiliriz ve orada özelleştirdiğimiz
    // metodları buna göre çağırabiliriz.
    // bu şekilde bağımlılığını azalttık
    content = Post();
  }
  void create(){
    content!.createContent();
  }
}

class Post implements IContent{
  @override
  bool createContent() {
    return true;
  }
}