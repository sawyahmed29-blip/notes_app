import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NotsCardChilds extends StatelessWidget {
  const NotsCardChilds({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        ListTile(
          title: Text(
            "Flutter Tips",
            style: TextStyle(color: Colors.black, fontSize: 25),
          ),
          subtitle: Text(
            "Build your carier",
            style: TextStyle(
              fontSize: 18,
              color: Colors.black.withValues(alpha: .5),
            ),
          ),
          trailing: IconButton(
            onPressed: () {},
            icon: FaIcon(FontAwesomeIcons.trash, color: Colors.black),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 16, bottom: 12),
          child: Text(
            "may,21,2025",
            style: TextStyle(
              fontSize: 18,
              color: Colors.black.withValues(alpha: .5),
            ),
          ),
        ),
      ],
    );
  }
}
