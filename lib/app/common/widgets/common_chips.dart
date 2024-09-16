import 'package:flutter/material.dart';

class CommonChip extends StatelessWidget {
  const CommonChip({
    super.key,
    required this.label,
  });

  final String label;

  @override
  Widget build(BuildContext context) {
    return Chip(
      elevation: 0,
      backgroundColor: Colors.white,
      label: Text(
        label,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
      shape: RoundedRectangleBorder(
        side: const BorderSide(color: Colors.transparent),
        borderRadius: BorderRadius.circular(18.0),
      ),
    );
  }
}
