import 'package:flutter/material.dart';

const int transactions = 20;

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: transactions,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Text('Transaction ${(index + 1)}'),
          leading: const Icon(Icons.payment_rounded),
          trailing: const Icon(Icons.arrow_drop_down_circle),
          onTap: () {
            debugPrint("Transaction ${(index + 1)}");
          },
        );
      },
    );
  }
}
