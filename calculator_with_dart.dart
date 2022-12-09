import 'dart:io';

void main() {
  print("Programa Giriş Yapmak İçin 1'e basıp enterlayınız...");
  int? giris = int.parse(stdin.readLineSync()!);

  program:
  while (giris == 1) {
    print(
        "yapmak istediğiniz işlemi seçiniz: \n1-)Toplama\n2-)Cikarma \n3-)Carpma\n4-)Bolme\n5-)Cıkıs");

    int? islem = int.parse(stdin.readLineSync()!);
    if (islem == 5) {
      exit(0);
    }
    print("1. Sayiyi Giriniz:");
    int? a = int.parse(stdin.readLineSync()!);
    print("2. Sayiyi Giriniz:");
    int? b = int.parse(stdin.readLineSync()!);
    int toplam = a + b;
    int cikarma = a - b;
    int carpma = a * b;
    double bolme = a / b;

    switch (islem) {
      case 1:
        {
          print("Sonuc =$toplam ");
        }
        break;
      case 2:
        {
          print("Sonuc =$cikarma ");
        }
        break;
      case 3:
        {
          print("Sonuc =$carpma ");
        }
        break;
      case 4:
        {
          print("Sonuc =$bolme ");
        }
        break;

      default:
        {
          print("Hatalı İşlem Yaptınız !!! ");
          continue program;
        }
    }
  }
}
