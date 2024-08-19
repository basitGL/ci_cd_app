// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:ci_cd_app/counter_state.dart';
import 'package:ci_cd_app/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build the widget tree for the CounterScreen inside a ChangeNotifierProvider
    await tester.pumpWidget(
      ChangeNotifierProvider(
        create: (context) => CounterState(),
        child: const MaterialApp(
          home: MyHomePage(
            title: "Test App",
          ),
        ),
      ),
    );

    // Verify that the initial counter value is 0
    expect(find.text('0'), findsOneWidget,
        reason: "Initial counter value should be 0");
    expect(find.text('1'), findsNothing,
        reason: "Counter value should not be 1 initially");

    // Tap the '+' icon and trigger a frame
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Verify that the counter has incremented
    expect(find.text('1'), findsOneWidget,
        reason: "Counter value should increment to 1");
    expect(find.text('0'), findsNothing,
        reason: "Counter value should no longer be 0");
  });
}
