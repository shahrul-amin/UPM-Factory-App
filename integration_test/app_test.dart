import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:upm_factory/main.dart';
import 'package:upm_factory/activation_page.dart';
import 'package:upm_factory/nav_bar.dart';
import 'package:upm_factory/factoryPage/factory_page.dart';
import 'package:upm_factory/invitePage/invite_page.dart';
import 'package:upm_factory/settingPage/setting_page.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets(
    "Integration test for MyApp, ActivationPage, and NavigationBars",
    (WidgetTester tester) async {
      await tester.pumpWidget(MyApp());

      // Verify if the main widgets are present.
      expect(find.byType(MyAppHome), findsOneWidget);

      // Tap the button to navigate to the next page.
      await tester.tap(find.byType(ElevatedButton));
      await tester.pumpAndSettle();

      // Verify that the ActivationPage is displayed.
      expect(find.byType(ActivationPage), findsOneWidget);

      // Tap the activation button.
      await tester.tap(find.byType(ElevatedButton));
      await tester.pumpAndSettle();

      // Verify elements in NavigationBars
      expect(find.byType(NavigationBars), findsOneWidget);

      // Verify navigation bar functionality
      await tester.tap(find.byIcon(Icons.settings));
      await tester.pumpAndSettle();
      expect(find.byType(SettingPage), findsOneWidget);

      // Verify the status widget
      expect(find.byKey(Key('status')), findsOneWidget);

      // Verify the initial factory selection
      expect(find.byKey(Key('factoryOneSelection')), findsOneWidget);

      // Tap on the second factory
      await tester.tap(find.byKey(Key('factoryTwoDiselection')));
      await tester.pumpAndSettle();

      // Verify the second factory selection
      expect(find.byKey(Key('factoryTwoSelection')), findsOneWidget);

      // Tap on the first factory
      await tester.tap(find.byKey(Key('factoryOneDiselection')));
      await tester.pumpAndSettle();

      // Verify the first factory selection
      expect(find.byKey(Key('factoryOneSelection')), findsOneWidget);

      await tester.tap(find.byIcon(Icons.home));
      await tester.pumpAndSettle();
      expect(find.byType(FactoryPage), findsOneWidget);

      // Verify the status widget
      expect(find.byKey(Key('statusOne')), findsOneWidget);

      // Verify the initial factory selection
      expect(find.byKey(Key('factoryOneSelection')), findsOneWidget);

      // Tap on the second factory
      await tester.tap(find.byKey(Key('factoryTwoDiselection')));
      await tester.pumpAndSettle();

      // Verify the status widget
      expect(find.byKey(Key('statusTwo')), findsOneWidget);

      // Verify the second factory selection
      expect(find.byKey(Key('factoryTwoSelection')), findsOneWidget);

      // Tap on the first factory
      await tester.tap(find.byKey(Key('factoryOneDiselection')));
      await tester.pumpAndSettle();

      // Verify the first factory selection
      expect(find.byKey(Key('factoryOneSelection')), findsOneWidget);

      await tester.tap(find.byIcon(Icons.person));
      await tester.pumpAndSettle();
      expect(find.byType(InvitePage), findsOneWidget);

      // Verify the status widget
      expect(find.byKey(Key('employeeOne')), findsOneWidget);

      // Verify the initial factory selection
      expect(find.byKey(Key('factoryOneSelection')), findsOneWidget);

      // Tap on the second factory
      await tester.tap(find.byKey(Key('factoryTwoDiselection')));
      await tester.pumpAndSettle();

      // Verify the status widget
      expect(find.byKey(Key('employeeTwo')), findsOneWidget);

      // Verify the second factory selection
      expect(find.byKey(Key('factoryTwoSelection')), findsOneWidget);

      // Tap on the first factory
      await tester.tap(find.byKey(Key('factoryOneDiselection')));
      await tester.pumpAndSettle();

      // Verify the first factory selection
      expect(find.byKey(Key('factoryOneSelection')), findsOneWidget);
    },
  );
}
