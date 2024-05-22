// ignore_for_file: deprecated_member_use

import 'package:tremortech/controller/category_controller.dart';
import 'package:tremortech/data/model/cart_model.dart';
import 'package:tremortech/data/model/product_item_model.dart';
import 'package:tremortech/view/widgets/custom_square_button_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:tremortech/util/dimensiona.dart';
import 'package:tremortech/util/images.dart';
import 'package:tremortech/view/screens/product_details_screen/product_details_page.dart';

class HorizontalSummaryWidget extends StatefulWidget {
  final CatalogItem item;
  final bool isCategoryGrid;
  final bool isItemCartAddable;
  final bool isItemDelete;
  const HorizontalSummaryWidget(
      {super.key,
      required this.item,
      this.isCategoryGrid = false,
      this.isItemCartAddable = true,
      this.isItemDelete= false});

  @override
  State<HorizontalSummaryWidget> createState() =>
      _HorizontalSummaryWidgetState();
}

class _HorizontalSummaryWidgetState extends State<HorizontalSummaryWidget> {
  bool itemInCart = true;
  @override
  Widget build(BuildContext context) {
    return GetBuilder<CategoryController>(
      builder: (categoryController) => GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ProductDetailsScreen(
                item: widget.item,
              ),
            ),
          );
        },
        child: Container(
          margin: EdgeInsets.symmetric(
              horizontal: Dimensions.paddingSizeDefault,
              vertical: Dimensions.paddingSizeLarge),
          height: 130,
          width: Get.width,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Dimensions.radiusSmall),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.05),
                  spreadRadius: 10,
                  blurRadius: 20,
                  offset: const Offset(3, 3),
                ),
              ],
              color: Colors.white),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(Dimensions.radiusSmall),
                        bottomLeft: Radius.circular(
                          Dimensions.radiusSmall,
                        ),
                      ),
                      color: Colors.white,
                      image: DecorationImage(
                          image: AssetImage(
                              "${widget.item.image}${widget.item.id}.jpeg"),
                          fit: BoxFit.cover)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 20,
                            padding: EdgeInsets.symmetric(
                                horizontal: Dimensions.paddingSizeExtraSmall),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                Dimensions.radiusSmall,
                              ),
                              color: Colors.red,
                            ),
                            child: Center(
                              child: Text(
                                "100%",
                                style: Theme.of(context)
                                    .textTheme
                                    .labelSmall
                                    ?.copyWith(
                                        color: Colors.white,
                                        fontSize: Dimensions.fontSizeSmall,
                                        fontWeight: FontWeight.w400),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: Dimensions.paddingSizeSmall,
              ),
              widget.isCategoryGrid
                  ? Expanded(
                      flex: 3,
                      child: Container(
                        padding: EdgeInsets.all(Dimensions.paddingSizeSmall),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.item.name ?? "",
                              style: Theme.of(context)
                                  .textTheme
                                  .labelLarge
                                  ?.copyWith(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400),
                            ),
                            Row(
                              children: [
                                Text(
                                  "\$70",
                                  style: Theme.of(context)
                                      .textTheme
                                      .displaySmall
                                      ?.copyWith(
                                          fontSize: Dimensions.fontSizeLarge,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500),
                                ),
                                SizedBox(
                                  width: Dimensions.paddingSizeExtraSmall,
                                ),
                                Text(
                                  "\$65",
                                  style: Theme.of(context)
                                      .textTheme
                                      .labelSmall
                                      ?.copyWith(
                                        color: Theme.of(context).disabledColor,
                                        decoration: TextDecoration.lineThrough,
                                        fontSize: Dimensions.fontSizeExtraSmall,
                                        fontWeight: FontWeight.w400,
                                      ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                SvgPicture.asset(
                                  Images.starSolid,
                                  width: 16,
                                  height: 16,
                                  color: Colors.orange,
                                ),
                                SizedBox(
                                  width: Dimensions.paddingSizeExtraSmall,
                                ),
                                Text(
                                  "4.5",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall
                                      ?.copyWith(
                                          fontSize: Dimensions.fontSizeSmall,
                                          fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  "(2)",
                                  style: Theme.of(context)
                                      .textTheme
                                      .labelSmall
                                      ?.copyWith(
                                        fontSize: Dimensions.fontSizeExtraSmall,
                                        fontWeight: FontWeight.w400,
                                      ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    )
                  : Expanded(
                      flex: 3,
                      child: Container(
                        padding: EdgeInsets.all(Dimensions.paddingSizeSmall),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  widget.item.name ?? "",
                                  style: Theme.of(context)
                                      .textTheme
                                      .labelMedium
                                      ?.copyWith(
                                        fontSize: Dimensions.fontSizeDefault,
                                        color: Colors.black.withOpacity(
                                          0.5,
                                        ),
                                        fontWeight: FontWeight.w500,
                                      ),
                                ),
                                if(widget.isItemDelete)
                                GestureDetector(
                                  onTap: () {
                                    //delete item from favourites
                                  },
                                  child: SvgPicture.asset(
                                    Images.bin,
                                    color: Colors.red,
                                    height: 18,
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: Dimensions.paddingSizeExtraSmall,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    SvgPicture.asset(
                                      Images.starSolid,
                                      width: 16,
                                      height: 16,
                                      color: Colors.orange,
                                    ),
                                    SizedBox(
                                      width: Dimensions.paddingSizeExtraSmall,
                                    ),
                                    Text(
                                      "4.5",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall
                                          ?.copyWith(
                                              fontSize:
                                                  Dimensions.fontSizeSmall,
                                              fontWeight: FontWeight.w500),
                                    ),
                                    Text(
                                      "(2)",
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelSmall
                                          ?.copyWith(
                                              fontSize:
                                                  Dimensions.fontSizeSmall,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.black
                                                  .withOpacity(0.25)),
                                    ),
                                  ],
                                ),
                                Text(
                                  "2 Sold",
                                  style: Theme.of(context)
                                      .textTheme
                                      .labelSmall
                                      ?.copyWith(
                                          fontSize: Dimensions.fontSizeSmall,
                                          fontWeight: FontWeight.w400,
                                          color:
                                              Colors.black.withOpacity(0.25)),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: Dimensions.paddingSizeExtraSmall,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "\$70",
                                      style: Theme.of(context)
                                          .textTheme
                                          .displaySmall
                                          ?.copyWith(
                                            fontSize:
                                                Dimensions.fontSizeDefault,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500,
                                          ),
                                    ),
                                    SizedBox(
                                      width: Dimensions.paddingSizeExtraSmall,
                                    ),
                                    if (widget.item.oldPrice != null)
                                      Text(
                                        widget.item.oldPrice.toString(),
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelSmall
                                            ?.copyWith(
                                              color: Theme.of(context)
                                                  .disabledColor,
                                              decoration:
                                                  TextDecoration.lineThrough,
                                              fontWeight: FontWeight.w500,
                                              fontSize:
                                                  Dimensions.fontSizeDefault,
                                            ),
                                      ),
                                  ],
                                ),
                                if (widget.isItemCartAddable == true)
                                  Row(
                                    children: [
                                      categoryController
                                              .itemInCart(widget.item.id)
                                          ? Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                CustomSquareButtonWidget(
                                                  width: 30,
                                                  height: 30,
                                                  icon: Icons.remove,
                                                  backgroundColor:
                                                      Theme.of(context)
                                                          .hintColor
                                                          .withOpacity(0.5),
                                                  onTap: () {
                                                    categoryController
                                                        .removeItemToCart(
                                                            widget.item.id);
                                                  },
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: Dimensions
                                                          .paddingSizeSmall),
                                                  child: Text(
                                                    categoryController
                                                        .quantityInCart(
                                                            widget.item.id)
                                                        .toString(),
                                                    selectionColor: null,
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .bodyMedium
                                                        ?.copyWith(
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                  ),
                                                ),
                                                CustomSquareButtonWidget(
                                                  width: 30,
                                                  height: 30,
                                                  icon: Icons.add,
                                                  backgroundColor:
                                                      Theme.of(context)
                                                          .hintColor
                                                          .withOpacity(0.5),
                                                  onTap: () {
                                                    categoryController
                                                        .addItemToCart(
                                                            widget.item.id);
                                                  },
                                                ),
                                              ],
                                            )
                                          : CustomSquareButtonWidget(
                                              width: 30,
                                              height: 30,
                                              iconColor: Theme.of(context)
                                                  .primaryColor,
                                              icon: Icons.add,
                                              backgroundColor: Theme.of(context)
                                                  .secondaryHeaderColor,
                                              onTap: () {
                                                categoryController
                                                    .addItemInCart(
                                                  item: CartModel(
                                                      id: widget.item.id,
                                                      name: widget.item.image,
                                                      price:
                                                          widget.item.price ??
                                                              0,
                                                      quantity: 1),
                                                );
                                              },
                                            ),
                                    ],
                                  )
                              ],
                            ),
                            SizedBox(
                              height: Dimensions.paddingSizeExtraSmall,
                            ),
                          ],
                        ),
                      ),
                    )
            ],
          ),
        ),
      ),
    );
  }
}
