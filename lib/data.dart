import 'package:flutter/material.dart' hide Action;
import 'package:counter_7/drawer.dart';
import 'package:counter_7/form.dart';

class BudgetDataPage extends StatefulWidget {
  const BudgetDataPage({super.key});

  @override
  State<BudgetDataPage> createState() => _BudgetDataPageState();
}

class _BudgetDataPageState extends State<BudgetDataPage> {
  int indexLength = currentData.getLength();
  List<String> judul = currentData.getJudul();
  List<String> nominal = currentData.getNominal();
  List<String> budgeting = currentData.getBudgeting();
  
  @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: Text('Data Budget'),
            ),
            drawer: DrawerClass(),
            body: Form(
                child: SingleChildScrollView(
                  child: Container(
                    padding: const EdgeInsets.all(20.0),
                    margin: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(5),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(child: const Text('Data Budget')),
                        for (int i = 0; i < indexLength; i++) ListView(
                          padding: const EdgeInsets.only(top: 20, bottom: 20),
                          shrinkWrap: true,
                          children: [
                            SizedBox(height: 20),
                            // TODO: Munculkan informasi yang didapat dari form
                            Text( 
                              judul[i],
                              textAlign: TextAlign.left,
                            ),
                            Text(
                              nominal[i],
                              textAlign: TextAlign.left,
                            ),
                            Text(
                              budgeting[i],
                              textAlign: TextAlign.right,
                            ),
                          ],
                        ),
                      ]
                  ),
                ),
              ),
            ),
        );
    }
}