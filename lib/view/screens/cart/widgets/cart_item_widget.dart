// ignore_for_file: must_be_immutable

import 'package:tremortech/controller/category_controller.dart';
import 'package:tremortech/data/model/cart_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tremortech/util/dimensiona.dart';
import 'package:tremortech/util/images.dart';
import 'package:tremortech/view/widgets/custom_square_button_widget.dart';
import 'package:get/get.dart';

class CartItemWidget extends StatefulWidget {
  final CartModel cartitem;
  int sum;
  CartItemWidget(
      {super.key,
      required this.cartitem,
      required this.sum});

  @override
  State<CartItemWidget> createState() => _CartItemWidgetState();
}

class _CartItemWidgetState extends State<CartItemWidget> {
  int quantity = 1;
  @override
  Widget build(BuildContext context) {
    return GetBuilder<CategoryController>(
        builder: (categoryController) => Container(
              padding: EdgeInsets.symmetric(
                vertical: Dimensions.paddingSizeDefault,
              ),
              color: Colors.white,
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        width: 75,
                        height: 75,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            Dimensions.radiusSmall,
                          ),
                          color: const Color(0xFFDAE4E7).withOpacity(0.25),
                        ),
                        child: SvgPicture.asset(
                          Images.imageIcon,
                          width: 5,
                          height: 20,
                          fit: BoxFit.scaleDown,
                          color: Color(0xFFDAE4E7),
                        ),
                      ),
                      SizedBox(
                        width: Dimensions.paddingSizeDefault,
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.cartitem.name ?? "",
                              selectionColor: null,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall
                                  ?.copyWith(
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                            SizedBox(
                              height: Dimensions.paddingSizeDefault,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      "\$${widget.cartitem.price}",
                                      selectionColor: null,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyLarge
                                          ?.copyWith(
                                              fontWeight: FontWeight.w700,
                                              color: Theme.of(context)
                                                  .primaryColor),
                                    ),
                                    SizedBox(
                                      width: Dimensions.paddingSizeSmall,
                                    ),
                                    if(widget.cartitem.oldPrice!=null)
                                    Text(
                                      "\$${widget.cartitem.oldPrice}",
                                      selectionColor: null,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall
                                          ?.copyWith(
                                            decoration:
                                                TextDecoration.lineThrough,
                                            fontWeight: FontWeight.w400,
                                            color: Theme.of(context).hintColor,
                                          ),
                                    ),
                                  ],
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    CustomSquareButtonWidget(
                                      width: 30,
                                      height: 30,
                                      icon: Icons.remove,
                                      backgroundColor: Theme.of(context)
                                          .hintColor
                                          .withOpacity(0.5),
                                      onTap: () {
                                        categoryController
                                            .removeItemToCart(widget.cartitem.id);
                                      },
                                    ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal:
                                              Dimensions.paddingSizeSmall),
                                      child: Text(
                                        categoryController
                                            .quantityInCart(widget.cartitem.id)
                                            .toString(),
                                        selectionColor: null,
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyMedium
                                            ?.copyWith(
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                    ),
                                    CustomSquareButtonWidget(
                                      width: 30,
                                      height: 30,
                                      icon: Icons.add,
                                      backgroundColor: Theme.of(context)
                                          .hintColor
                                          .withOpacity(0.5),
                                      onTap: () {
                                        categoryController
                                            .addItemToCart(widget.cartitem.id);
                                      },
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: Dimensions.paddingSizeDefault,
                  ),
                  Divider(
                    height: 2,
                    thickness: 2,
                    color: const Color(0xFFDAE4E7).withOpacity(0.25),
                  ),
                ],
              ),
            ));
  }
}
