import 'package:flutter/material.dart';

class BankingApp extends StatefulWidget {
  const BankingApp({Key? key}) : super(key: key);

  @override
  State<BankingApp> createState() => _BankingAppState();
}

class _BankingAppState extends State<BankingApp> {
  bool isActive = false;
  bool? isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('The banking app'),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
        actions: [
          IconButton(
            onPressed: () {
              debugPrint("page info");
            },
            icon: const Icon(
              Icons.info_outline_rounded,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('images/banking_logo.png'),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              color: Colors.blue,
            ),
            Container(
              margin: const EdgeInsets.all(10.0),
              padding: const EdgeInsets.all(10.0),
              color: Colors.blueGrey,
              child: const Center(
                child: Text(
                  'Your account transaction history',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            //showcase the type of buttons
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: isActive ? Colors.green : Colors.red),
              onPressed: () {
                debugPrint('January transactions');
              },
              child: const Text('January history'),
            ),
            OutlinedButton(
              onPressed: () {
                debugPrint('Feburary transactions');
              },
              child: const Text('Feburary history'),
            ),
            TextButton(
              onPressed: () {
                debugPrint('March transactions');
              },
              child: const Text('March history'),
            ),
            GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () {
                debugPrint("transactions row");
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Icon(Icons.account_balance_sharp, color: Colors.green),
                  Text('Transaction History'),
                  Icon(Icons.account_balance_sharp, color: Colors.green),
                ],
              ),
            ),
            Switch(
              value: isActive,
              onChanged: (bool newBool) {
                setState(() {
                  isActive = newBool;
                });
              },
            ),
            Checkbox(
                value: isChecked,
                onChanged: (bool? newBool) {
                  setState(() {
                    isChecked = newBool;
                  });
                }),
            Image.network(
                "https://pixelgrade.com/wp-content/uploads/2020/03/footer-featured.png")
          ],
        ),
      ),
    );
  }
}
