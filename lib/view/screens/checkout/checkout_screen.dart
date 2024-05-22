import 'package:tremortech/controller/category_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:tremortech/util/dimensiona.dart';
import 'package:tremortech/util/images.dart';
import 'package:tremortech/view/screens/checkout/widget/checkout_sucess_widget.dart';
import 'package:tremortech/view/widgets/dialog_helper.dart';
import 'package:tremortech/view/widgets/payment_selection_widget.dart';
import 'package:tremortech/view/widgets/textinput_widget.dart';

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({super.key});

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<CategoryController>(
      builder: (categoryController) => Scaffold(
        backgroundColor: Theme.of(context).hintColor.withOpacity(0.1),
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(62),
          child: SafeArea(
            child: Container(
              padding: EdgeInsets.all(Dimensions.paddingSizeDefault),
              color: Colors.white,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () => Get.back(),
                    child: const Icon(
                      Icons.arrow_back,
                    ),
                  ),
                  SizedBox(
                    width: Dimensions.paddingSizeExtraLarge,
                  ),
                  Text(
                    "Checkout",
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                          fontWeight: FontWeight.w700,
                          fontSize: Dimensions.fontSizeLarge,
                        ),
                  ),
                ],
              ),
            ),
          ),
        ),
        body: Column(
          children: [
            SizedBox(
              height: Dimensions.paddingSizeDefault,
            ),
            Container(
              padding: EdgeInsets.all(Dimensions.paddingSizeDefault),
              color: Colors.white,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Delivery Address",
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium
                            ?.copyWith(
                              fontWeight: FontWeight.w500,
                              fontSize: Dimensions.fontSizeLarge,
                            ),
                      ),
                      Text(
                        "Change",
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            fontWeight: FontWeight.w400,
                            color: Theme.of(context).primaryColor),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: Dimensions.defaultSpacing,
                  ),
                  Container(
                    width: Get.width,
                    padding: EdgeInsets.symmetric(
                        horizontal: Dimensions.paddingSizeDefault,
                        vertical: Dimensions.paddingSizeExtraSmall),
                    decoration: BoxDecoration(
                      color: const Color(0xFFDAE4E7).withOpacity(0.25),
                      borderRadius: BorderRadius.circular(
                        Dimensions.radiusDefault,
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding:
                              EdgeInsets.all(Dimensions.paddingSizeExtraSmall),
                          child: Expanded(
                            child: Row(
                              children: [
                                SvgPicture.asset(
                                  Images.location,
                                  height: 20,
                                  color: Theme.of(context).primaryColor,
                                ),
                                SizedBox(
                                  width: Dimensions.paddingSizeExtraSmall,
                                ),
                                Text(
                                  "Default Address",
                                  selectionColor: null,
                                  style: Theme.of(context)
                                      .textTheme
                                      .labelLarge
                                      ?.copyWith(
                                          fontStyle: FontStyle.italic,
                                          fontWeight: FontWeight.w400,
                                          color:
                                              Colors.black.withOpacity(0.75)),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.all(Dimensions.paddingSizeExtraSmall),
                          child: Expanded(
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
                        ),
                        Padding(
                          padding:
                              EdgeInsets.all(Dimensions.paddingSizeExtraSmall),
                          child: Expanded(
                            child: Text(
                              "+263774259097",
                              selectionColor: null,
                              style: Theme.of(context)
                                  .textTheme
                                  .labelSmall
                                  ?.copyWith(
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black.withOpacity(0.75)),
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.all(Dimensions.paddingSizeExtraSmall),
                          child: Expanded(
                            child: Text(
                              "+5 Meadow, Westgate, Area D, Harare, Zimbabwe, Mashonaland West Province",
                              selectionColor: null,
                              style: Theme.of(context)
                                  .textTheme
                                  .labelSmall
                                  ?.copyWith(
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black.withOpacity(0.75)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                 
                 
                  SizedBox(
                    height: Dimensions.paddingSizeExtraLarge,
                  ),
                  SizedBox(
                    height: 100,
                    child: CustomTextField(
                      maxLines: 3,
                      borderRadius: Dimensions.radiusDefault,
                      hintText: 'Write any additional info',
                      controller: TextEditingController(),
                      fillColor: const Color(0xFFDAE4E7).withOpacity(0.25),
                      focussedBorderColor: Colors.transparent,
                      inputType: TextInputType.emailAddress,
                      borderColor: Colors.transparent,
                      borderWidth: 1,
                    ),
                  ),
                  SizedBox(
                    height: Dimensions.paddingSizeExtraLarge,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "To be paid",
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium
                            ?.copyWith(
                              fontWeight: FontWeight.w500,
                              fontSize: Dimensions.fontSizeLarge,
                            ),
                      ),
                      Text(
                        "\$${categoryController.calculateCartTotal().toString()}",
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium
                            ?.copyWith(
                              fontWeight: FontWeight.w500,
                              fontSize: Dimensions.fontSizeLarge,
                            ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: Dimensions.paddingSizeExtraLarge,
                  ),
                  PaymentSelectionWidget(
                    selectionWidgetList: [
                      "Cash On Delivery",
                      "Credit or Debit Card"
                    ],
                    selectedWidgetList: [],
                    maximumSelectionSize: 1,
                    onSelectionChanged: (selected) {},
                  )
                ],
              ),
            ),
          ],
        ),
        bottomSheet: Container(
          height: 70,
          width: Get.width,
          padding: EdgeInsets.all(Dimensions.paddingSizeSmall),
          color: Colors.white,
          child: SizedBox(
            height: 50,
            width: Get.width * 0.9,
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
              onPressed: () async {
                DialogHelper.showGeneralDialog(
                  context,
                  child: GestureDetector(
                    onTap: () => Get.back(),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ResponseDialog(
                          title: 'Your order has been placed',
                          icon: Icons.done,
                          buttonTitle: 'Continue Shopping',
                          subtitle:
                              'You will receive an order confirmation email with details of your order',
                          onTap: () {},
                        )
                      ],
                    ),
                  ),
                );
              },
              child: Text(
                "Place Order",
                style: Theme.of(context).textTheme.labelSmall?.copyWith(
                    color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
