import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class DefaultSearchbar extends StatelessWidget {
  DefaultSearchbar({super.key});

  late final TextEditingController _searchquery = TextEditingController();
  final GlobalKey _searchquerykey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Padding(
      key: _searchquerykey,
      padding: const EdgeInsets.all(10.0),
      child: FormBuilderTextField(
        controller: _searchquery,
        name: "Search for Medicines",
        decoration: InputDecoration(
          labelText: "Search for Medicines",
          helper: const Text("Ciplox, Paracetamol, etc."),
          prefixIcon: const Icon(Icons.search),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          suffixIcon: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                icon: const Icon(Icons.clear),
                onPressed: () {
                  _searchquery.clear();
                },
              ),
              IconButton(
                icon: const Icon(Icons.search),
                onPressed: () {
                  String searchQuery = _searchquery.text;
                  debugPrint(searchQuery);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
