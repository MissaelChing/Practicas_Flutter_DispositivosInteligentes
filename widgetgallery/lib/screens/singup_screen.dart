import 'package:widgetgallery/models/models.dart';
import 'package:widgetgallery/routes/app_routes.dart';
import 'package:widgetgallery/widgets/widgets.dart';
import 'package:flutter/material.dart';

class SingUpScreen extends StatelessWidget {
  const SingUpScreen({Key? key}) : super(key: key);
  List<Country> _getCountries() => <Country>[
        const Country(name: 'United States', code: 'US'),
        const Country(name: 'Canada', code: 'CA'),
        const Country(name: 'United Kingdom', code: 'UK'),
        const Country(name: 'Australia', code: 'AU'),
        const Country(name: 'Germany', code: 'DE'),
        const Country(name: 'France', code: 'FR'),
        const Country(name: 'Italy', code: 'IT'),
        const Country(name: 'Spain', code: 'ES'),
        const Country(name: 'Brazil', code: 'BR'),
        const Country(name: 'Argentina', code: 'AR'),
        const Country(name: 'Mexico', code: 'MX'),
        const Country(name: 'India', code: 'IN'),
        const Country(name: 'China', code: 'CN'),
        const Country(name: 'Japan', code: 'JP'),
        const Country(name: 'Korea', code: 'KR'),
        const Country(name: 'Taiwan', code: 'TW'),
        const Country(name: 'Russia', code: 'RU'),
        const Country(name: 'Netherlands', code: 'NL'),
        const Country(name: 'Select a country', code: 'none'),
      ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomMenu(items: AppRoute.listScreens),
      backgroundColor: Colors.purpleAccent,
      appBar: AppBar(
        title: const Text('Widget Gallery'),
      ),
      body: SingleChildScrollView(
          child: Form(
        child: Column(
          children: const <Widget>[
            InputForm(
              labelText: 'Email',
              hintText: 'Enter your email',
              icon: Icons.email,
              isRequired: true,
              keyboardType: TextInputType.emailAddress,
            ),
          ],
        ),
      )),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.save),
        onPressed: () {
          const snackBar = SnackBar(
            content: Text('You have successfully signed up!!!'),
            backgroundColor: Colors.green,
          );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
      ),
    );
  }
}
