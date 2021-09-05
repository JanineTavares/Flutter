class Month {

  int? month;

  Month({this.month});

  String? checkMonth() {

    if(this.month == null)
      return null;

    if(this.month == 1) {
      return 'Numero 1 corresponde a Janeiro';
    } else if(this.month == 2) {
      return 'Numero 2 corresponde a Fevereiro';
    } else if(this.month == 3) {
      return 'Numero 3 corresponde a Março';
    } else if(this.month == 4) {
      return 'Numero 4 corresponde a Abril';
    } else if(this.month == 5) {
      return 'Numero 5 corresponde a Maio';
    } else if(this.month == 6) {
      return 'Numero 6 corresponde a Junho';
    } else if(this.month == 7) {
      return 'Numero 7 corresponde a Julho';
    } else if(this.month == 8) {
      return 'Numero 8 corresponde a Agosto';
    } else if(this.month == 9) {
      return 'Numero 9 corresponde a Setembro';
    } else if(this.month == 10) {
      return 'Numero 10 corresponde a Outubro';
    } else if(this.month == 11) {
      return 'Numero 11 corresponde a Novembro';
    } else if(this.month == 12) {
      return 'Numero 12 corresponde a Dezembro';
    }
    return 'Mês inválido';
  }

}

