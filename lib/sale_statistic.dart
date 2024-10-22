/* 3) Dado um vetor que guarda o valor de faturamento diário de uma distribuidora de todos os dias de um ano, faça um programa, na linguagem que desejar, que calcule e retorne:

- O menor valor de faturamento ocorrido em um dia do ano;
- O maior valor de faturamento ocorrido em um dia do ano;
- Número de dias no ano em que o valor de faturamento diário foi superior à média anual.

a) Considerar o vetor já carregado com as informações de valor de faturamento.

b) Podem existir dias sem faturamento, como nos finais de semana e feriados. Estes dias devem ser ignorados no cálculo da média.

c) Utilize o algoritmo mais veloz que puder definir. */

// Valores Gerados para teste

void run() {
  // Vetor com os valores de faturamento diário
  List<double?> dailyRevenue = _valuesList();

  // Chama a função para calcular os resultados
  final Map<String, dynamic> result = _calculateRevenueStats(dailyRevenue);

  // Exibindo os resultados
  print(
      'Menor valor de faturamento ocorrido em um dia do ano: R\$${result['minValue'].toStringAsFixed(2)}');
  print(
      'Maior valor de faturamento ocorrido em um dia do ano: R\$${result['maxValue'].toStringAsFixed(2)}');
  print(
      'Número de dias com faturamento acima da média no ano: ${result['daysAboveAverage']}');
}

// Função para calcular as estatísticas de faturamento
Map<String, dynamic> _calculateRevenueStats(List<double?> dailyRevenue) {
  double? minValue;
  double? maxValue;
  double totalRevenue = 0.0;
  int countDaysWithRevenue = 0;

  // Calculando menor, maior valor e soma do faturamento
  for (var revenue in dailyRevenue) {
    // Considera null como 0
    double value = revenue ?? 0.0;

    // Dias sem faturamento será ignorado
    if (value > 0) {
      // Definindo o maior e menor valor
      if (minValue == null || value < minValue) {
        // Caso for o menor valor
        minValue = value;
      }
      if (maxValue == null || value > maxValue) {
        // Caso for o maior valor
        maxValue = value;
      }
      totalRevenue += value; // Soma o faturamento com o total já adicionado
      countDaysWithRevenue++; // incrementa +1 dia
    }
  }

  // Calculando média anual, se houver dias com faturamento
  double averageRevenue =
      countDaysWithRevenue > 0 ? totalRevenue / countDaysWithRevenue : 0;

  // Contando dias com faturamento acima da média
  int daysAboveAverage = dailyRevenue
      .where((revenue) => revenue != null && revenue > averageRevenue)
      .length;

  // Retornando os resultados em um mapa
  return {
    'minValue': minValue ?? 0,
    'maxValue': maxValue ?? 0,
    'daysAboveAverage': daysAboveAverage,
  };
}

List<double?> _valuesList() {
  return [
    90.0,
    200.0,
    null,
    400.0,
    500.0,
    null,
    300.0,
    150.0,
    null,
    null,
    600.0,
    200.0,
    null,
    350.0,
    400.0,
    800.0,
    null,
    450.0,
    null,
    null,
    900.0,
    250.0,
    null,
    null,
    300.0,
    350.0,
    500.0,
    600.0,
    null,
    null,
    700.0,
    800.0,
    300.0,
    null,
    450.0,
    null,
    500.0,
    600.0,
    150.0,
    250.0,
    350.0,
    null,
    400.0,
    null,
    300.0,
    null,
    null,
    450.0,
    500.0,
    600.0,
    250.0,
    200.0,
    null,
    300.0,
    null,
    450.0,
    null,
    400.0,
    600.0,
    null,
    250.0,
    null,
    700.0,
    null,
    500.0,
    800.0,
    900.0,
    null,
    600.0,
    null,
    700.0,
    800.0,
    null,
    null,
    100.0,
    200.0,
    300.0,
    400.0,
    500.0,
    null,
    250.0,
    null,
    null,
    350.0,
    400.0,
    450.0,
    500.0,
    550.0,
    null,
    null,
    600.0,
    null,
    250.0,
    200.0,
    300.0,
    null,
    350.0,
    null,
    400.0,
    null,
    300.0,
    450.0,
    null,
    500.0,
    600.0,
    700.0,
    null,
    400.0,
    300.0,
    null,
    500.0,
    600.0,
    250.0,
    null,
    700.0,
    800.0,
    900.0,
    null,
    null,
    500.0,
    600.0,
    250.0,
    null,
    300.0,
    400.0,
    null,
    500.0,
    null,
    450.0,
    null,
    null,
    700.0,
    800.0,
    900.0,
    100.0,
    null,
    200.0,
    300.0,
    null,
    400.0,
    500.0,
    600.0,
    250.0,
    null,
    300.0,
    null,
    400.0,
    450.0,
    null,
    500.0,
    600.0,
    null,
    700.0,
    800.0,
    900.0,
    null,
    null,
    250.0,
    null,
    300.0,
    400.0,
    null,
    500.0,
    null,
    600.0,
    700.0,
    800.0,
    900.0,
    null,
    null,
    150.0,
    200.0,
    300.0,
    null,
    null,
    400.0,
    500.0,
    600.0,
    700.0,
    null,
    800.0,
    900.0,
    null,
    null,
    500.0,
    600.0,
    250.0,
    null,
    300.0,
    400.0,
    null,
    null,
    350.0,
    450.0,
    null,
    600.0,
    700.0,
    800.0,
    null,
    900.0,
  ];
}
