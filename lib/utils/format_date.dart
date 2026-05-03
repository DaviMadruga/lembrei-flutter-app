String formatDate(DateTime data){
  return "${data.day} de ${nomeMes(data.month)}";
}

String nomeMes(int mes){
  const meses = [
    "Janeiro",
    "Fevereiro",
    "Março",
    "Abril",
    "Maio",
    "Junho",
    "Julho",
    "Agosto",
    "Setembro",
    "Outubro",
    "Novembro",
    "Dezembro",
  ];

  return meses [mes - 1];
}