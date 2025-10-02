import 'package:flutter_test/flutter_test.dart';
import 'package:tic_tac_toe_frontend/main.dart';

void main() {
  testWidgets('Shows selection UI and title', (WidgetTester tester) async {
    await tester.pumpWidget(const TicTacToeApp());

    expect(find.text('Tic Tac Toe'), findsWidgets);
    expect(find.text('Choose your symbol'), findsOneWidget);
    expect(find.text('X'), findsWidgets);
    expect(find.text('O'), findsWidgets);
  });

  testWidgets('Selecting X starts the game and shows turn', (WidgetTester tester) async {
    await tester.pumpWidget(const TicTacToeApp());

    await tester.tap(find.text('X').first);
    await tester.pumpAndSettle();

    expect(find.textContaining('Turn: '), findsOneWidget);
  });
}
