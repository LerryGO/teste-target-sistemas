/* 2) Descubra a lógica e complete o próximo elemento:

a) 1, 3, 5, 7, ___

b) 2, 4, 8, 16, 32, 64, ____

c) 0, 1, 4, 9, 16, 25, 36, ____

d) 4, 16, 36, 64, ____

e) 1, 1, 2, 3, 5, 8, ____

f) 2,10, 12, 16, 17, 18, 19, ____ */

void run() {
  print("""
  Descubra a lógica e complete o próximo elemento:

  a) 1, 3, 5, 7, ___
  R: É dado uma sequencia de números impares, então o próximo elemento é 9

  b) 2, 4, 8, 16, 32, 64, ____
  R: É dado uma sequencia de números que é o dobro do número anterior, então o próximo elemento é 128

  c) 0, 1, 4, 9, 16, 25, 36, ____
  R: é dado uma sequencia que são o valor ao quadrado da sequencia dele, como 0^2 = 0, 1^2 = 1, 2^2 = 4, 3^2 = 9...,
    então por fim no ultimo valor é 7^2 = 49

  d) 4, 16, 36, 64, ____
  R: Da mesma forma da anterior, porém apenas com números pares  2^2 = 4, 4^2 = 16, 6^2 = 36, 8^2 = 64...
    então por fim no ultimo valor é 10^2 = 100

  e) 1, 1, 2, 3, 5, 8, ____
  R: Aqui é um número é a soma dos dois anteriores, então 5 + 8 = 13.

  f) 2,10, 12, 16, 17, 18, 19, ____
  R: Não consegui ver nenhuma sequencia, apenas que os 4 últimos foram sequenciais,
    então para dar o ultimo valor eu colocaria o número 20
""");
}
