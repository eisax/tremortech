import 'package:tremortech/controller/category_controller.dart';
import 'package:tremortech/util/dimensiona.dart';
import 'package:tremortech/util/images.dart';
import 'package:tremortech/view/screens/more/widget/address/widget/add_address_scree.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class MyAddressScreen extends StatefulWidget {
  const MyAddressScreen({super.key});

  @override
  State<MyAddressScreen> createState() => _MyAddressScreenState();
}

class _MyAddressScreenState extends State<MyAddressScreen> {
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
            "Manage Address",
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
                    thickness: 5,
                    color: Theme.of(context).hintColor.withOpacity(
                          0.5,
                        ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: Dimensions.paddingSizeDefault,
                      vertical: Dimensions.paddingSizeSmall,
                    ),
                    child: Column(
                      children: ["Order 1", "Order 2"]
                          .asMap()
                          .map(
                            (key, value) => MapEntry(
                              key,
                              Container(
                                margin: EdgeInsets.symmetric(
                                  vertical: Dimensions.paddingSizeSmall,
                                ),
                                child: Column(
                                  children: [
                                    Container(
                                      width: Get.width,
                                      padding: EdgeInsets.all(
                                          Dimensions.paddingSizeDefault),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                          Dimensions.radiusDefault,
                                        ),
                                        border: Border.all(
                                          width: 1,
                                          color: Theme.of(context)
                                              .hintColor
                                              .withOpacity(0.5),
                                        ),
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.all(
                                                    Dimensions
                                                        .paddingSizeExtraSmall),
                                                child: Row(
                                                  children: [
                                                    SvgPicture.asset(
                                                      Images.location,
                                                      height: 24,
                                                      color: Theme.of(context)
                                                          .primaryColor,
                                                    ),
                                                    SizedBox(
                                                      width: Dimensions
                                                          .paddingSizeExtraSmall,
                                                    ),
                                                    AnimatedContainer(
                                                      duration: const Duration(
                                                          milliseconds: 500),
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                        vertical: Dimensions
                                                            .paddingSizeExtraSmall,
                                                        horizontal: Dimensions
                                                            .paddingSizeSmall,
                                                      ),
                                                      decoration: BoxDecoration(
                                                          borderRadius: BorderRadius
                                                              .circular(Dimensions
                                                                  .radiusSmall),
                                                          color: Colors.black),
                                                      child: Text(
                                                        "Home",
                                                        style: Theme.of(context)
                                                            .textTheme
                                                            .bodySmall
                                                            ?.copyWith(
                                                              fontSize: Dimensions
                                                                  .fontSizeExtraSmall,
                                                              color:
                                                                  Colors.white,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                            ),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: Dimensions
                                                          .paddingSizeExtraSmall,
                                                    ),
                                                    Text(
                                                      "Default Address",
                                                      selectionColor: null,
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .labelLarge
                                                          ?.copyWith(
                                                              fontStyle:
                                                                  FontStyle
                                                                      .italic,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              color: Colors
                                                                  .black
                                                                  .withOpacity(
                                                                      0.75)),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              AnimatedContainer(
                                                duration: const Duration(
                                                    milliseconds: 500),
                                                padding: EdgeInsets.symmetric(
                                                  vertical: Dimensions
                                                      .paddingSizeExtraSmall,
                                                  horizontal: Dimensions
                                                      .paddingSizeSmall,
                                                ),
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                      100,
                                                    ),
                                                    border: Border.all(
                                                        width: 1,
                                                        color: Theme.of(context)
                                                            .primaryColor)),
                                                child: Text(
                                                  "Edit",
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .bodySmall
                                                      ?.copyWith(
                                                        color: Theme.of(context)
                                                            .primaryColor,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding: EdgeInsets.all(Dimensions
                                                .paddingSizeExtraSmall),
                                            child: Text(
                                              "John Adams",
                                              selectionColor: null,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .labelSmall
                                                  ?.copyWith(
                                                    fontWeight: FontWeight.w500,
                                                    color: Colors.black,
                                                  ),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.all(Dimensions
                                                .paddingSizeExtraSmall),
                                            child: Text(
                                              "+263774259097",
                                              selectionColor: null,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .labelSmall
                                                  ?.copyWith(
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: Colors.black
                                                          .withOpacity(0.75)),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.all(Dimensions
                                                .paddingSizeExtraSmall),
                                            child: Text(
                                              "+5 Meadow, Westgate, Area D, Harare, Zimbabwe, Mashonaland West Province",
                                              selectionColor: null,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .labelSmall
                                                  ?.copyWith(
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: Colors.black
                                                          .withOpacity(0.75)),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )
                          .values
                          .toList(),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        bottomSheet: Container(
          height: 80,
          width: Get.width,
          padding: EdgeInsets.all(Dimensions.paddingSizeDefault),
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                  width: 0.5,
                  color: Theme.of(context).dividerColor.withOpacity(0.1))),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              animationDuration: const Duration(milliseconds: 500),
              elevation: 0,
              backgroundColor: Colors.transparent,
              textStyle: const TextStyle(
                  color: Colors.white, fontStyle: FontStyle.normal),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    100,
                  ),
                  side: BorderSide(
                      width: 1, color: Theme.of(context).primaryColor)),
              shadowColor: Colors.transparent,
            ),
            onPressed: () async {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const AddAddressScreen()),
              );
            },
            child: Text(
              "Add New",
              style: Theme.of(context).textTheme.labelSmall?.copyWith(
                  color: Theme.of(context).primaryColor,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
