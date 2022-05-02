import 'package:dcat/dcat.dart' as dcat;

void main(List<String> arguments) {

  int linha = int.parse(arguments[0]);
  int coluna = int.parse(arguments[1]);
  
  print('Hello world: ${dcat.TamanhoMatriz(linha, coluna)}!');
  //List<DateTime> datas = [DateTime.parse("2022-05-01 06:00:00"), DateTime.parse("2022-05-01 07:00:00"), DateTime.parse("2022-05-01 08:00:00")];
  //print("diferença de horas : ${dcat.DiferencaDateTime(datas)}");
}
