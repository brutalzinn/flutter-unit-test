import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_tests/functions/datetime.dart';
import 'package:flutter_tests/functions/matriz.dart';


void main() {
  test('Tamanho da matriz', () {
    expect(tamanhoMatriz(9,9), 81);
    expect(tamanhoMatriz(1,1), 1);
    expect(tamanhoMatriz(3,5), 15);
  });

    test('Diferença de horas entre datas ( precisa passar )', () {
    expect(diferencaDateTime([DateTime.parse("2022-05-01 06:00:00"), DateTime.parse("2022-05-01 08:30:00")]), 2);
  });
  // test('Diferença de horas entre datas ( precisa quebrar )', () {
  //   expect(diferencaDateTime([DateTime.parse("2022-05-01 06:00:00"), DateTime.parse("2022-05-01 08:30:00"), DateTime.parse("2022-05-01 09:30:00")]), 2);
  // });
  

}
