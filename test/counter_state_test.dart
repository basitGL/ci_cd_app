import 'package:ci_cd_app/counter_state.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Counter', () {
    test('Counter value should start at 0', () {
      // Arrange
      final counter = CounterState();

      // Assert
      expect(counter.counter, 0);
    });

    test('Counter value should be incremented', () {
      // Arrange
      final counter = CounterState();

      // Act
      counter.incrementCounter();

      // Assert
      expect(counter.counter, 1);
    });

    test('Counter value should be incremented twice', () {
      // Arrange
      final counter = CounterState();

      // Act
      counter.incrementCounter();
      counter.incrementCounter();

      // Assert
      expect(counter.counter, 2);
    });
  });
}
