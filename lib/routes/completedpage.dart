import 'package:flutter/material.dart';
import 'package:survey/components/completed_page_card.dart';

class CompletedPage extends StatelessWidget {
  CompletedPage({Key? key}) : super(key: key);

  List<String> completed = [
    'University Survey',
    'School Survey',
    'LocalStore Survey',
    'MegaMart Survey',
    'Neighbour Survey',
    'Home Survey',
    'Village Survey',
    'Town Survey',
    'District Survey',
    'Smart Survey',
    'Location Survey',
    'Area Survey',
    'Electricity Survey',
    'State Survey',
    'Local Survey',
    'Fruits Survey',
    'Animal Survey',
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
                "Completed Surveys",
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
              itemCount: completed.length,
              itemBuilder: (BuildContext context, int i) {
                return Container(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                  height: 100,
                  width: double.maxFinite,
                  child: CompletedPageCard(
                    title: completed[i],
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
