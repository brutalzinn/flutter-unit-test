import 'package:dcat/dcat.dart';
import 'package:test/test.dart';

void main() {
  test('Tamanho da matriz', () {
    expect(TamanhoMatriz(9,9), 81);
    expect(TamanhoMatriz(1,1), 1);
    expect(TamanhoMatriz(3,5), 15);
  });

    test('Diferença de horas entre datas ( precisa passar )', () {
    expect(DiferencaDateTime([DateTime.parse("2022-05-01 06:00:00"), DateTime.parse("2022-05-01 08:30:00")]), 2);
  });
  test('Diferença de horas entre datas ( precisa quebrar )', () {
    expect(DiferencaDateTime([DateTime.parse("2022-05-01 06:00:00"), DateTime.parse("2022-05-01 08:30:00"), DateTime.parse("2022-05-01 09:30:00")]), 2);
  });
  

}
