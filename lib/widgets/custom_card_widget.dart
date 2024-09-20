import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';

class CustomCardWidget extends StatelessWidget {
  final String titleText;
  final String subTitleText;
  final Color color;
  final String imagePath;
  final String buttonText;
  const CustomCardWidget(
      {super.key,
      required this.titleText,
      required this.subTitleText,
      required this.color,
      required this.imagePath,
      required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: color,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15, bottom: 12),
              child: Image.asset(
                imagePath,
                height: 80,
              ),
            ),
            Text(
              titleText,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
            ),
            const SizedBox(
              height: 2,
            ),
            Text(
              subTitleText,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 15, bottom: 20),
              child: DottedLine(
                dashLength: 10,
                dashGapLength: 10,
                lineThickness: 1,
                dashColor: Colors.grey,
              ),
            ),
            Expanded(
              child: SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      buttonText,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
