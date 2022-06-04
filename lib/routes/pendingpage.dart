import 'package:flutter/material.dart';
import 'package:survey/components/pending_page_card.dart';

//TODO: Implement this page later.
class PendingPage extends StatelessWidget {
  PendingPage({Key? key}) : super(key: key);

  List<String> pending = [
    'Smart Survey',
    'Animal Survey',
    'Fruits Survey',
    'Local Survey',
    'Location1 Survey',
    'Area Survey',
    'District Survey',
    'Electricity Survey',
    'State Survey',
    'Location2 Survey',
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 60,
            color: Colors.purple,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Pending Surveys",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              itemCount: pending.length,
              itemBuilder: (BuildContext context, int i) {
                return Container(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                  height: 180,
                  width: double.maxFinite,
                  child: PendingPageCard(
                    title: pending[i],
                    val: "OnTime",
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
