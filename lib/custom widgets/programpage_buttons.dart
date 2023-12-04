import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class ProgramPageButtons extends StatefulWidget {
  const ProgramPageButtons({super.key});

  @override
  State<ProgramPageButtons> createState() => _ProgramPageButtonsState();
}

class _ProgramPageButtonsState extends State<ProgramPageButtons> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(
                  blurRadius: 1,
                  spreadRadius: 2,
                  color: Colors.grey.withOpacity(0.5),
                )
              ],
            ),
            child: const Icon(
              Icons.add,
              size: 35,
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
              boxShadow: [
                BoxShadow(
                  blurRadius: 1,
                  spreadRadius: 2,
                  color: Colors.grey.withOpacity(0.5),
                )
              ],
            ),
            child: const Icon(
              Icons.favorite_outline,
              size: 35,
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(
                  blurRadius: 1,
                  spreadRadius: 2,
                  color: Colors.grey.withOpacity(0.5),
                )
              ],
            ),
            child: const Icon(
              Icons.download,
              size: 35,
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(
                  blurRadius: 1,
                  spreadRadius: 2,
                  color: Colors.grey.withOpacity(0.5),
                )
              ],
            ),
            child: const Icon(
              Icons.share,
              size: 35,
            ),
          ),
        ],
      ),
    );
  }
}
