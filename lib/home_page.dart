import 'package:first_app/banking_app.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          //navigate to the banking app page
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (BuildContext context) {
            return const BankingApp();
          }));
        },
        child: const Text('banking app'),
      ),
    );
  }
}
