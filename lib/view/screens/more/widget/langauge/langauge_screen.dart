import 'package:tremortech/controller/category_controller.dart';
import 'package:tremortech/util/dimensiona.dart';
import 'package:tremortech/util/images.dart';
import 'package:tremortech/view/widgets/custom_selection_box_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyLanguageScreen extends StatefulWidget {
  const MyLanguageScreen({super.key});

  @override
  State<MyLanguageScreen> createState() => _MyLanguageScreenState();
}

class _MyLanguageScreenState extends State<MyLanguageScreen> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<CategoryController>(
      builder: (categoryController) => Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          surfaceTintColor: Colors.transparent,
          automaticallyImplyLeading: true,
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            "Manage Language",
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w700,
                ),
          ),
        ),
        body: SafeArea(
          child: Container(
            color: Colors.white,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Divider(
                    thickness: 10,
                    color: Theme.of(context).hintColor.withOpacity(
                          0.25,
                        ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                        vertical: Dimensions.paddingSizeDefault,
                        horizontal: Dimensions.paddingSizeDefault),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 25,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    color: Theme.of(context).hintColor,
                                    borderRadius: BorderRadius.circular(
                                      Dimensions.radiusSmall,
                                    ),
                                    image: const DecorationImage(image:   AssetImage(Images.zwFlag))
                                  
                                  ),
                                  
                                ),
                                SizedBox(
                                  width: Dimensions.paddingSizeDefault,
                                ),
                                Text(
                                  "ZW English",
                                  selectionColor: null,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall
                                      ?.copyWith(
                                        fontWeight: FontWeight.w400,
                                      ),
                                ),
                              ],
                            ),
                            SelectionBoxWidget(
                              width: 20,
                              height: 20,
                              value: true,
                              activeColor: Theme.of(context).primaryColor,
                              onChanged: (bool) {},
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
