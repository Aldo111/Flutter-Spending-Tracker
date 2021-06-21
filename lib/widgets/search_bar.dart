import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      child: CupertinoSearchTextField(
        borderRadius: BorderRadius.circular(16),
        placeholder: 'Search your spending',
      ),
    );
  }
}
