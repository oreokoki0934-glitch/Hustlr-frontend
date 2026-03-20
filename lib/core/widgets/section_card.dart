import 'package:flutter/material.dart';
import '../constants/dimensions.dart';

class SectionCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String image;
  final bool expanded;
  final VoidCallback onTap;
  final Widget? child;

  const SectionCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.image,
    required this.expanded,
    required this.onTap,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    final w = AppSizes.width(context);

    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(bottom: w * 0.04),
        padding: EdgeInsets.all(w * 0.04),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(w * 0.05),
          border: Border.all(color: Colors.grey.shade300),
        ),
        child: Column(
          children: [

            Row(
              children: [
                Image.asset(image, width: w * 0.08),
                SizedBox(width: w * 0.03),

                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(title,
                          style: TextStyle(fontWeight: FontWeight.w600)),
                      Text(subtitle,
                          style: TextStyle(color: Colors.grey)),
                    ],
                  ),
                ),

                Icon(
                  expanded ? Icons.expand_less : Icons.expand_more,
                )
              ],
            ),

            if (expanded) ...[
              SizedBox(height: w * 0.04),
              child ?? const SizedBox()
            ]
          ],
        ),
      ),
    );
  }
}