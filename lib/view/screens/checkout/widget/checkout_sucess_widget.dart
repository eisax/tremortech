import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:tremortech/util/dimensiona.dart';

class ResponseDialog extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final Color? color;
  final Function() onTap;
  final String buttonTitle;
  const ResponseDialog(
      {super.key,
      required this.icon,
      required this.title,
      required this.subtitle,
      required this.onTap,
      this.color,
      required this.buttonTitle});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 500),
        width: Get.width * 0.8,
        padding: EdgeInsets.all(Dimensions.paddingSizeLarge),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Dimensions.radiusLarge),
            color: Colors.white),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(
                Dimensions.paddingSizeLarge,
              ),
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: Colors.green),
              child: Icon(
                icon,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: Dimensions.paddingSizeDefault,
            ),
            Text(
              title,
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall
                  ?.copyWith(fontWeight: FontWeight.w500, color: Colors.black),
            ),
            SizedBox(
              height: Dimensions.paddingSizeSmall,
            ),
            Text(
              subtitle,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.w400,
                  color: Theme.of(context).hintColor),
            ),
            SizedBox(
              height: Dimensions.paddingSizeSmall,
            ),
            SizedBox(
              height: 50,
              width: Get.width * 0.7,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  animationDuration: const Duration(milliseconds: 500),
                  elevation: 0,
                  backgroundColor: Theme.of(context).primaryColor,
                  textStyle: const TextStyle(
                      color: Colors.white, fontStyle: FontStyle.normal),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      100,
                    ),
                  ),
                  shadowColor: Colors.transparent,
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text(
                  buttonTitle,
                  style: Theme.of(context).textTheme.labelSmall?.copyWith(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
