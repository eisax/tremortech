import 'package:tremortech/controller/category_controller.dart';
import 'package:tremortech/util/dimensiona.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class MyOrdersScreen extends StatefulWidget {
  const MyOrdersScreen({super.key});

  @override
  State<MyOrdersScreen> createState() => _MyOrdersScreenState();
}

class _MyOrdersScreenState extends State<MyOrdersScreen> {
  String selectedOrderType = "All";
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
            "My Order",
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
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    physics: const BouncingScrollPhysics(
                        decelerationRate: ScrollDecelerationRate.fast),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: Dimensions.paddingSizeDefault,
                          vertical: Dimensions.paddingSizeSmall),
                      child: Row(
                        children: [
                          "All",
                          "Pending",
                          "Proccessing",
                          "Confirm",
                          "On The Way",
                          "Delivered",
                          "Cancelled"
                        ]
                            .map(
                              (orderType) => GestureDetector(
                                onTap: () {
                                  setState(() {
                                    selectedOrderType = orderType;
                                  });
                                },
                                child: AnimatedContainer(
                                  duration: const Duration(milliseconds: 500),
                                  margin: EdgeInsets.only(
                                    right: Dimensions.paddingSizeDefault,
                                  ),
                                  padding: EdgeInsets.all(
                                    Dimensions.paddingSizeSmall,
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                      100,
                                    ),
                                    color: selectedOrderType == orderType
                                        ? Theme.of(context).primaryColor
                                        : Theme.of(context)
                                            .hintColor
                                            .withOpacity(
                                              0.5,
                                            ),
                                  ),
                                  child: Text(
                                    orderType,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall
                                        ?.copyWith(
                                          color: selectedOrderType == orderType
                                              ? Colors.white
                                              : Colors.black,
                                          fontWeight: FontWeight.w400,
                                        ),
                                  ),
                                ),
                              ),
                            )
                            .toList(),
                      ),
                    ),
                  ),
                  Divider(
                    thickness: 1,
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
                                      decoration: BoxDecoration(
                                        color: const Color(0xFFDAE4E7)
                                            .withOpacity(0.25),
                                        borderRadius: BorderRadius.circular(
                                          Dimensions.radiusSmall,
                                        ),
                                      ),
                                      padding: EdgeInsets.all(
                                        Dimensions.paddingSizeSmall,
                                      ),
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.all(
                                                Dimensions.paddingSizeSmall),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Row(
                                                  children: [
                                                    Text(
                                                      "Order Id :",
                                                      selectionColor: null,
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .labelSmall
                                                          ?.copyWith(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              color: Colors
                                                                  .black
                                                                  .withOpacity(
                                                                      0.75)),
                                                    ),
                                                    SizedBox(
                                                      width: Dimensions
                                                          .paddingSizeExtraSmall,
                                                    ),
                                                    Text(
                                                      "JK0100203",
                                                      selectionColor: null,
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .labelSmall
                                                          ?.copyWith(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              color: Colors
                                                                  .black
                                                                  .withOpacity(
                                                                      0.75)),
                                                    )
                                                  ],
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
                                                      color: Theme.of(context)
                                                          .primaryColor),
                                                  child: Text(
                                                    "Pending",
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .bodySmall
                                                        ?.copyWith(
                                                          color: Colors.white,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                        ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Divider(
                                            height: 1,
                                            thickness: 1,
                                            color: const Color(0xFFDAE4E7)
                                                .withOpacity(0.5),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.all(
                                                Dimensions.paddingSizeSmall),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  "Address",
                                                  selectionColor: null,
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .labelSmall
                                                      ?.copyWith(
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          color: Colors.black
                                                              .withOpacity(
                                                                  0.75)),
                                                ),
                                                Text(
                                                  "5 Latvia Av",
                                                  selectionColor: null,
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .labelSmall
                                                      ?.copyWith(
                                                          fontWeight:
                                                              FontWeight.w500,
                                                              color: Colors.black.withOpacity(0.75)
                                                      )
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.all(
                                                Dimensions.paddingSizeSmall),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  "Date",
                                                  selectionColor: null,
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .labelSmall
                                                      ?.copyWith(
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          color: Colors.black
                                                              .withOpacity(
                                                                  0.75)),
                                                ),
                                                Text(
                                                  "9 May 2024",
                                                  selectionColor: null,
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .labelSmall
                                                      ?.copyWith(
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          color: Theme.of(
                                                                  context)
                                                              .primaryColor),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.all(
                                                Dimensions.paddingSizeSmall),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  "Amount",
                                                  selectionColor: null,
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .labelSmall
                                                      ?.copyWith(
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          color: Colors.black
                                                              .withOpacity(
                                                                  0.75)),
                                                ),
                                                Text(
                                                  "\$316.00",
                                                  selectionColor: null,
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .labelSmall
                                                      ?.copyWith(
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          color: Colors.black
                                                              .withOpacity(
                                                                  0.75)),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
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
      
      
      ),
    );
  }
}
