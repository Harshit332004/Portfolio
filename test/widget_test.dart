// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';
import 'package:harshit_portfolio/main.dart';

void main() {
  group('Portfolio App Tests', () {
    testWidgets('App should render without crashing', (WidgetTester tester) async {
      await tester.pumpWidget(const PortfolioApp());

      expect(find.byType(PortfolioApp), findsOneWidget);
    });

    testWidgets('Landing section should display portfolio content', (WidgetTester tester) async {
      await tester.pumpWidget(const PortfolioApp());

      // Wait for loading to complete
      await tester.pump(const Duration(seconds: 3));

      // Verify landing section content is displayed
      expect(find.text('HARSHIT GYANCHANDANI'), findsOneWidget);
      expect(find.text('Aspiring Flutter & Full-Stack Software Engineer'), findsOneWidget);
    });

    testWidgets('Portfolio sections should be present', (WidgetTester tester) async {
      await tester.pumpWidget(const PortfolioApp());

      // Wait for loading to complete
      await tester.pump(const Duration(seconds: 3));

      // Verify sections are present
      expect(find.text('PROFESSIONAL SUMMARY'), findsOneWidget);
      expect(find.text('SKILLS'), findsOneWidget);
      expect(find.text('PROJECTS'), findsOneWidget);
      expect(find.text('EXPERIENCE'), findsOneWidget);
      expect(find.text('CERTIFICATIONS'), findsOneWidget);
      expect(find.text('EXTRA-CURRICULAR ACTIVITIES'), findsOneWidget);
    });
  });
}
