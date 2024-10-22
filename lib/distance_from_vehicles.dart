/* 5) Dois veículos, um carro e um caminhão, saem respectivamente de cidades opostas pela mesma rodovia. O carro, de Ribeirão Preto em direção a Barretos, 
a uma velocidade constante de 90 km/h, e o caminhão, de Barretos em direção a Ribeirão Preto,
 a uma velocidade constante de 80 km/h. Quando eles se cruzarem no percurso, 
 qual estará mais próximo da cidade de Ribeirão Preto?

a) Considerar a distância de 125km entre a cidade de Ribeirão Preto <-> Barretos.
b) Considerar 3 pedágios como obstáculo e que o carro leva 5 minutos a mais para passar em cada um deles, pois ele não possui dispositivo de cobrança de pedágio.
c)Explique como chegou no resultado. */

void run() {
  print("""
  Primeiro vamos imaginar que os veículos quando eles se cruzarem a soma da distancia que cada um percorreu é a distancia total de uma cidade a outra
  que é de 125km

  Então para definirmos o tempo devemos pegar a distancia total e dividir pela soma velocidade de ambos:
  Velocidade do carro: 90 km/h
  Velocidade do caminhão: 80km/h

  então a soma dará 170 e assim o resultado do tempo se dá: 128/170 = 0,735 horas
  e isso dá multiplicando por 60 (quantidade de minutos por hora): 44,1 minutos
  Assim sabemos que na velocidade média dos dois, será percorrido em 44,1 minutos todo percurso

  A distância percorrida pelo carro será feita com o cálculo: Velocidade do carro * média das horas percorridas
  será: 90 (vel. carro) * 0,735(distancia/soma das velocidades de ambos) = 66,17 km percorridos pelo carro

  A distância percorrida pelo caminhão será feita com o cálculo: Velocidade do caminhão * média das horas percorridas
  será: 80 (vel. caminhão) * 0,735(distancia/soma das velocidades de ambos) = 58,8 km percorridos pelo caminhão

  Só que sabemos que o carro tem 3 pedágios para passsar que dá em 15 min no total, isso em horas da 0,25 ( 15 min / 60 = 0,25),
  Então diminuimos aumentamos a distancia percorrida do caminhão em 20km (80km/h * 0.25 horas do atraso do carro = 20km)
  Caminhão : 58,8 + 20 = 78,8
  Distancia percorrida pelo carro: 125km - 78,8 = 46,2km

  Finalizando: 
  O carro está com distancia de 46,2 km de Ribeirão Preto
  o caminhão está com a distancia de 46,2 km de Ribeirão preto (125 - 78,8)

  Conclusão:
  Ambos veiculos estão na mesma distancia de ribeirão, isso por conta do atraso do carro nos pedágios


""");
}
