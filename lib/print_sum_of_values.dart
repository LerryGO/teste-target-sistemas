/*

1) Observe o trecho de código:

int INDICE = 12, SOMA = 0, K = 1;

enquanto K < INDICE faça

{ K = K + 1; SOMA = SOMA + K;}

imprimir(SOMA);


Ao final do processamento, qual será o valor da variável SOMA?

 */

void run() {
  int indice = 12;
  int soma = 0;
  int k = 1;

  while (k < indice) {
    k++;
    soma = soma + k;
  }

  print("Valor da soma: $soma");
  // Reposta: Valor da soma: 77
}
