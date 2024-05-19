import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:flutter_phone_number_field/flutter_phone_number_field.dart';
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
      expect(find.text('Welcome !'), findsOneWidget);
      expect(
          find.text(
              'Enter your mobile phone number \nto activate your account.'),
          findsOneWidget);
      expect(find.byType(FlutterPhoneNumberField), findsOneWidget);
      expect(find.text('I agree to the terms & conditions'), findsOneWidget);
      expect(find.text('Get Activation Code'), findsOneWidget);

      // Enter a phone number.
      await tester.enterText(find.byType(FlutterPhoneNumberField), '123456789');

      // Tap the checkbox.
      await tester.tap(find.byType(Checkbox));
      await tester.pump();

      // Verify the checkbox is checked.
      Checkbox checkbox = tester.widget(find.byType(Checkbox));
      expect(checkbox.value, true);

      // Tap the button to navigate to the next page.
      await tester.tap(find.text('Get Activation Code'));
      await tester.pumpAndSettle();

      // Verify that the ActivationPage is displayed.
      expect(find.byType(ActivationPage), findsOneWidget);

      // Verify that the ActivationPage is displayed.
      expect(find.byType(ActivationPage), findsOneWidget);
      expect(find.text('Enter the activation code \nyou received via SMS.'),
          findsOneWidget);
      expect(find.byType(TextField), findsOneWidget);
      expect(find.text("Didn't receive?"), findsOneWidget);
      expect(find.text('Tap here'), findsOneWidget);
      expect(find.text('Activate'), findsOneWidget);

      // Enter an OTP.
      await tester.enterText(find.byType(TextField), '123456');

      // Tap the activation button.
      await tester.tap(find.text('Activate'));
      await tester.pumpAndSettle();

      // Verify that the NavigationBars is displayed.
      expect(find.byType(NavigationBars), findsOneWidget);

      // Verify elements in NavigationBars
      expect(find.byType(NavigationBars), findsOneWidget);
      expect(find.byType(FactoryPage), findsOneWidget); // Default tab

      // Verify navigation bar functionality
      await tester.tap(find.byIcon(Icons.person));
      await tester.pumpAndSettle();
      expect(find.byType(InvitePage), findsOneWidget);

      await tester.tap(find.byIcon(Icons.home));
      await tester.pumpAndSettle();
      expect(find.byType(FactoryPage), findsOneWidget);

      await tester.tap(find.byIcon(Icons.settings));
      await tester.pumpAndSettle();
      expect(find.byType(SettingPage), findsOneWidget);
    },
  );
}