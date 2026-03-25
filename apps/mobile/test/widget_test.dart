import 'package:flutter_test/flutter_test.dart';
import 'package:turno_mobile/app/app.dart';

void main() {
  testWidgets('renders the app shell and home sections', (tester) async {
    await tester.pumpWidget(const App());

    expect(find.text('Continue Playing'), findsOneWidget);
    expect(find.text('Quick Match'), findsOneWidget);
    expect(find.text('Play with Friends'), findsOneWidget);
    expect(find.text('Featured Games'), findsOneWidget);
    expect(find.text('Games'), findsOneWidget);
    expect(find.text('Social'), findsOneWidget);
    expect(find.text('Profile'), findsOneWidget);
  });
}
