import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:t2_avaliacao/contador_app.dart';

void main() {
  testWidgets('O contador incrementa', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    // Verifica se o contador iniciou em 0.
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // Clica no icone '+' para acionar a função.
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Verifique se o contador foi incrementado.
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });
}
