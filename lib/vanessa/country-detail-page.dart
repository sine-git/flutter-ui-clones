import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CountryDetailPage extends StatefulWidget {
  const CountryDetailPage({super.key});

  @override
  State<CountryDetailPage> createState() => _CountryDetailPageState();
}

class _CountryDetailPageState extends State<CountryDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Stack(
          children: [
            Image.network(
              'https://cdn.authentik.com/usa/uploads/images/orig/blog/lower-antelope-canyon-visiter.jpg',
              fit: BoxFit.cover,
              //width: double.infinity,
              //height: double.infinity,
            ),
          ],
        ),
      ),
    );
  }
}
