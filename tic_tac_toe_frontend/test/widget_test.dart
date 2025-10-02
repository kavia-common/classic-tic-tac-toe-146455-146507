import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tic_tac_toe_frontend/main.dart';

void main() {
  testWidgets('Shows selection UI and title', (WidgetTester tester) async {
    await tester.pumpWidget(const TicTacToeApp());

    expect(find.text('Tic Tac Toe'), findsWidgets);
    expect(find.text('Choose your symbol'), findsOneWidget);
  });

  testWidgets('Selecting symbol starts the game and shows turn', (WidgetTester tester) async {
    await tester.pumpWidget(const TicTacToeApp());

    // Tap the first selectable tile by Key (knight)
    await tester.tap(find.byKey(const ValueKey('choice-knight')));
    await tester.pumpAndSettle();

    expect(find.textContaining('Turn'), findsOneWidget);
  });
}
