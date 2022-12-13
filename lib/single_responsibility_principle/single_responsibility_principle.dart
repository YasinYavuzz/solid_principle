// çalışan sınıfı
// Classımızın tek bir sorumluluğu olmalıdır.
// buradaki sorumluluk hiç bir durumda değişmemelidir.
// sürekli değişen veya birden fazla durumu kontrol etmek zorunda olan sınıfların okunması imkansızdır.
class Employee{

  // Single responsibility principle

  // Burada çalışan sınıfında gerçekleşecek işlem çalışanları tabloya eklemek 
  // bu sınıfın sorumluluğu budur.
  
  int? employeeId;
  String? employeeName;


  bool insertIntoEmployeeTable(Employee em){
    return true;
  }

  // aynı zamanda bu sınıfın birde rapor hazırlamasını istememiz gerekiyor birden fazla görev yüklememiz lazım
  // bu raporun excel veya başka bir dosya türünde raporlama isteme olasılığını düşünürsek bu classın değiştirilmesi gerekecektir.
  // bu kullanım hatalı
  
  // void raporOlustur(Employee em){

  // }

}
// SRP göre rapor olusturma için baska sınıf olusturmamız gerekecektir

class RaporOlusturma{

  // rapor olusturma görevi
  void raporOlustur(Employee em){

  }
}