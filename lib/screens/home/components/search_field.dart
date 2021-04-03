import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(horizontal: 10),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(25),
            ),
            borderSide: BorderSide.none,
          ),
          fillColor: Colors.white,
          filled: true,
          prefixIcon: Icon(
            Icons.search,
            size: 28,
          ),
          suffixIcon: Icon(
            Icons.filter_alt_outlined,
            size: 28,
          ),
          hintText: 'Search pet to adopt',
        ),
      ),
    );
  }
}
