import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_tests/functions/datetime.dart';
import 'package:flutter_tests/functions/matriz.dart';
import 'package:flutter_tests/main.dart';


void main() {
  test('Tamanho da matriz', () {
    expect(tamanhoMatriz(9,9), 81);
    expect(tamanhoMatriz(1,1), 1);
    expect(tamanhoMatriz(3,5), 15);
  });

    test('Diferença de horas entre datas ( precisa passar )', () {
    expect(diferencaDateTime([DateTime.parse("2022-05-01 06:00:00"), DateTime.parse("2022-05-01 08:30:00")]), 2);
  });

  testWidgets("Testando botão de increment", (WidgetTester tester) async {

    await tester.pumpWidget(const MyApp());
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);

  });


  

}
