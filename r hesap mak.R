# Basit Hesap Makinesi by eyo

cat("R'Hesap Makinesi\n")
cat("---------------------------------\n")

while (TRUE) {
  cat("Çıkmak için 'çıkış' yazın.\n")
  işlem <- readline(prompt="İşlemi girin (+, -, *, /): ")
  
  if (işlem == "çıkış") {
    cat("Hesap makinesinden çıkılıyor.\n")
    break
  }
  
  sayı1 <- as.numeric(readline(prompt="İlk sayıyı girin: "))
  sayı2 <- as.numeric(readline(prompt="İkinci sayıyı girin: "))
  
  if (işlem == "+") {
    sonuç <- sayı1 + sayı2
  } else if (işlem == "-") {
    sonuç <- sayı1 - sayı2
  } else if (işlem == "*") {
    sonuç <- sayı1 * sayı2
  } else if (işlem == "/") {
    if (sayı2 == 0) {
      cat("Hata: Sıfıra bölünemez\n\n")
      next
    } else {
      sonuç <- sayı1 / sayı2
    }
  } else {
    cat("Geçersiz işlem.\n\n")
    next
  }
  
  cat("Sonuç: ", sonuç, "\n\n")
}
