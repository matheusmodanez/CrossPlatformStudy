import 'package:app_sis/src/app/components/standard_card.dart';
import 'package:app_sis/src/app/components/standard_page.dart';
import 'package:app_sis/src/app/components/standard_textform.dart';
import 'package:flutter/material.dart';

class BalancePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _BalancePageState();
  }
}

class _BalancePageState extends State<BalancePage> {
  TextEditingController monthlyIncomeController = TextEditingController();
  String initialValue = ''; 

  presentMonthlyIncome({required String value}){
    setState(() {
      initialValue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return StandardPage(
        body: Column(
          children: [
            StandardTextForm(
              label: "Entrada por mês",
              userInputController: monthlyIncomeController,
              onEditingComplete: () {
                presentMonthlyIncome(value: monthlyIncomeController.text);
              },
            ),
            SizedBox(height: 20),
            StandardCard(
              leftText: 'R\$',
              rightText: initialValue,
            ),
          ],
        ),
        pageTitle: "Saldo");
  }
} 
  
  // Widget build(BuildContext context) {
  //   return StandardPage(
  //       body: Column(
  //         children: const [
  //           Text("R\$ 1.000.000,00"),
  //         ],
  //       ),
  //       pageTitle: "Saldo");
  // }
