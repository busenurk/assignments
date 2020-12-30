# Dersi izleme aşamanızı ders= kısmına yazınız, eğer bitirdiyseniz lütfen ders kısmına "bitti" yazınız,
# hoparlörünüzü açınız ve kodun tamamını çalıştırınız (yüklemek birkaç dakikanızı alacaktır,bekleyiniz).

ders="10. dk"

if(ders=="bitti"){install.packages("audio")
  library(audio)
  christmas_file <- tempfile()
  download.file("https://sites.google.com/site/pocketecoworld/merrychristmas1.wav", christmas_file, mode = "wb")
  xmas <- load.wave(christmas_file)
  play(xmas)
}else{print("izlemeye devam et")
  }

