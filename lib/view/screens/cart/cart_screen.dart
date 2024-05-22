import 'package:tremortech/controller/category_controller.dart';
import 'package:tremortech/view/screens/dashboard/dashboard_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:tremortech/util/dimensiona.dart';
import 'package:tremortech/util/images.dart';
import 'package:tremortech/view/screens/cart/widgets/cart_item_widget.dart';
import 'package:tremortech/view/screens/checkout/checkout_screen.dart';
import 'package:tremortech/view/widgets/custom_selection_box_widget.dart';
import 'package:tremortech/view/widgets/dashed_divider_widget.dart';
import 'package:tremortech/view/widgets/textinput_widget.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  bool isLinkes = false;
  int sum = 0;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CategoryController>(
      builder: (categoryController) => Scaffold(
        backgroundColor: const Color(0xFFDAE4E7).withOpacity(0.25),
        body: SafeArea(
          child: SizedBox(
            width: Get.width,
            height: Get.height,
            child: categoryController.cart.isEmpty
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        Images.emptyCart,
                        height: 100,
                        color: Theme.of(context).primaryColor,
                      ),
                      SizedBox(
                        height: Dimensions.paddingSizeExtraLarge,
                      ),
                      Text(
                        "Your cart is empty!",
                        selectionColor: null,
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                              fontWeight: FontWeight.w700,
                              color: Colors.black.withOpacity(
                                0.5,
                              ),
                            ),
                      ),
                      SizedBox(
                        height: Dimensions.paddingSizeExtraLarge,
                      ),
                      SizedBox(
                        height: 50,
                        width: Get.width * 0.9,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            backgroundColor: Colors.white,
                            foregroundColor: Colors.white.withOpacity(0.1),
                            surfaceTintColor: Colors.white.withOpacity(0.1),
                            textStyle: const TextStyle(
                              color: Colors.white,
                              fontStyle: FontStyle.normal,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: const BorderRadius.all(
                                Radius.circular(
                                  200,
                                ),
                              ),
                              side: BorderSide(
                                color: Theme.of(context).primaryColor,
                                width: 1,
                              ),
                            ),
                            shadowColor: Colors.transparent,
                          ),
                          onPressed: () async {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const DashboardScreen(),
                              ),
                            );
                          },
                          child: Text(
                            'Continue Shopping',
                            style:
                                Theme.of(context).textTheme.bodySmall?.copyWith(
                                      color: Theme.of(context).primaryColor,
                                      fontWeight: FontWeight.bold,
                                    ),
                          ),
                        ),
                      ),
                    ],
                  )
                : SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: Column(
                      children: [
                        Container(
                          width: Get.width,
                          padding: EdgeInsets.all(
                            Dimensions.paddingSizeDefault,
                          ),
                          color: Colors.white,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "My Cart",
                                selectionColor: null,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge
                                    ?.copyWith(
                                      fontWeight: FontWeight.w500,
                                    ),
                              ),
                              Row(
                                children: [
                                  SelectionBoxWidget(
                                    width: 20,
                                    height: 20,
                                    value: false,
                                    activeColor: Theme.of(context).primaryColor,
                                    onChanged: (bool) {},
                                  ),
                                  SizedBox(
                                    width: Dimensions.paddingSizeSmall,
                                  ),
                                  Text(
                                    "All",
                                    selectionColor: null,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall
                                        ?.copyWith(
                                          fontWeight: FontWeight.w500,
                                        ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: Dimensions.defaultSpacing,
                        ),
                        Container(
                          width: Get.width,
                          padding: EdgeInsets.symmetric(
                            horizontal: Dimensions.paddingSizeDefault,
                          ),
                          color: Colors.white,
                          child: Column(
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: Dimensions.paddingSizeDefault,
                                    vertical: Dimensions.paddingSizeDefault),
                                color: Colors.white,
                                child: Row(
                                  children: [
                                    SelectionBoxWidget(
                                      width: 20,
                                      height: 20,
                                      value: false,
                                      activeColor:
                                          Theme.of(context).primaryColor,
                                      onChanged: (bool) {},
                                    ),
                                    SizedBox(
                                      width: Dimensions.paddingSizeSmall,
                                    ),
                                    Text(
                                      "Unilever",
                                      selectionColor: null,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall
                                          ?.copyWith(
                                            fontWeight: FontWeight.w500,
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                              Divider(
                                height: 2,
                                thickness: 2,
                                color:
                                    const Color(0xFFDAE4E7).withOpacity(0.25),
                              ),
                              categoryController.cart.isNotEmpty
                                  ? CartItemWidget(
                                      cartitem: categoryController.cart[0],
                                      sum: sum,
                                    )
                                  : Container(),
                              SizedBox(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        SvgPicture.asset(
                                          Images.coupon,
                                          height: 30,
                                          color: Color(0xFFDAE4E7),
                                        ),
                                        SizedBox(
                                          width: Dimensions.paddingSizeSmall,
                                        ),
                                        Text(
                                          "Store voucher",
                                          selectionColor: null,
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodySmall
                                              ?.copyWith(
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.black
                                                      .withOpacity(0.25)),
                                        ),
                                      ],
                                    ),
                                    SvgPicture.asset(
                                      Images.arrowforward,
                                      height: 20,
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: Dimensions.defaultSpacing,
                              ),
                              SizedBox(
                                width: Get.width,
                                child: DashedDivider(
                                  color: Colors.black.withOpacity(0.25),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: Dimensions.defaultSpacing,
                        ),
                        Container(
                          width: Get.width,
                          padding: EdgeInsets.all(
                            Dimensions.paddingSizeDefault,
                          ),
                          color: Colors.white,
                          child: Row(
                            children: [
                              Expanded(
                                child: CustomTextField(
                                  borderRadius: Dimensions.radiusDefault,
                                  hintText: 'Enter promo code here',
                                  controller: TextEditingController(),
                                  fillColor: Colors.transparent,
                                  inputType: TextInputType.emailAddress,
                                  prefixIcon: Images.discount,
                                  borderColor: Theme.of(context).primaryColor,
                                  borderWidth: 1,
                                ),
                              ),
                              SizedBox(
                                width: Dimensions.paddingSizeDefault,
                              ),
                              GestureDetector(
                                onTap: () {},
                                child: AnimatedContainer(
                                  duration: const Duration(
                                    milliseconds: 200,
                                  ),
                                  padding: EdgeInsets.all(
                                    Dimensions.paddingSizeDefault,
                                  ),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                        Dimensions.radiusLarge,
                                      ),
                                      color: Theme.of(context)
                                          .primaryColor
                                          .withOpacity(0.05)),
                                  child: Text(
                                    "Apply",
                                    selectionColor: null,
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelLarge
                                        ?.copyWith(
                                            color:
                                                Theme.of(context).primaryColor,
                                            fontWeight: FontWeight.w700),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: Dimensions.defaultSpacing,
                        ),
                        Container(
                          width: Get.width,
                          padding: EdgeInsets.all(
                            Dimensions.paddingSizeDefault,
                          ),
                          color: Colors.white,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Order Summary",
                                selectionColor: null,
                                style: Theme.of(context)
                                    .textTheme
                                    .labelMedium
                                    ?.copyWith(
                                      fontWeight: FontWeight.w700,
                                    ),
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
                                  color:
                                      const Color(0xFFDAE4E7).withOpacity(0.25),
                                  borderRadius: BorderRadius.circular(
                                    Dimensions.radiusDefault,
                                  ),
                                ),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.all(
                                          Dimensions.paddingSizeSmall),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Sub Total",
                                            selectionColor: null,
                                            style: Theme.of(context)
                                                .textTheme
                                                .labelSmall
                                                ?.copyWith(
                                                    fontWeight: FontWeight.w400,
                                                    color: Colors.black
                                                        .withOpacity(0.75)),
                                          ),
                                          Text(
                                            "\$0.00",
                                            selectionColor: null,
                                            style: Theme.of(context)
                                                .textTheme
                                                .labelSmall
                                                ?.copyWith(
                                                    fontWeight: FontWeight.w400,
                                                    color: Colors.black
                                                        .withOpacity(0.75)),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(
                                          Dimensions.paddingSizeSmall),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Discount",
                                            selectionColor: null,
                                            style: Theme.of(context)
                                                .textTheme
                                                .labelSmall
                                                ?.copyWith(
                                                    fontWeight: FontWeight.w400,
                                                    color: Colors.black
                                                        .withOpacity(0.75)),
                                          ),
                                          Text(
                                            "-\$0.00",
                                            selectionColor: null,
                                            style: Theme.of(context)
                                                .textTheme
                                                .labelSmall
                                                ?.copyWith(
                                                    fontWeight: FontWeight.w400,
                                                    color: Theme.of(context)
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
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Delivery Charge",
                                            selectionColor: null,
                                            style: Theme.of(context)
                                                .textTheme
                                                .labelSmall
                                                ?.copyWith(
                                                    fontWeight: FontWeight.w400,
                                                    color: Colors.black
                                                        .withOpacity(0.75)),
                                          ),
                                          Text(
                                            "\$0.00",
                                            selectionColor: null,
                                            style: Theme.of(context)
                                                .textTheme
                                                .labelSmall
                                                ?.copyWith(
                                                    fontWeight: FontWeight.w400,
                                                    color: Colors.black
                                                        .withOpacity(0.75)),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Divider(
                                      height: 2,
                                      thickness: 2,
                                      color: const Color(0xFFDAE4E7)
                                          .withOpacity(0.5),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(
                                          Dimensions.paddingSizeSmall),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Payable Amount",
                                            selectionColor: null,
                                            style: Theme.of(context)
                                                .textTheme
                                                .labelSmall
                                                ?.copyWith(
                                                    fontWeight: FontWeight.w700,
                                                    color: Colors.black
                                                        .withOpacity(0.75)),
                                          ),
                                          Text(
                                            "\$0.00",
                                            selectionColor: null,
                                            style: Theme.of(context)
                                                .textTheme
                                                .labelSmall
                                                ?.copyWith(
                                                    fontWeight: FontWeight.w700,
                                                    color: Colors.black
                                                        .withOpacity(0.75)),
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
                        SizedBox(
                          height: Dimensions.paddingSizeExtraLarge,
                        ),
                      ],
                    ),
                  ),
          ),
        ),
        extendBody: true,
        extendBodyBehindAppBar: true,
        bottomNavigationBar: !categoryController.cart.isEmpty
            ? Container(
                height: 70,
                margin: EdgeInsets.only(
                    bottom: 60 + Dimensions.paddingSizeExtraSmall),
                width: Get.width,
                padding: EdgeInsets.all(Dimensions.paddingSizeSmall),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    Dimensions.radiusSmall,
                  ),
                  color: Colors.white,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Total Price",
                          selectionColor: null,
                          style: Theme.of(context)
                              .textTheme
                              .labelLarge
                              ?.copyWith(fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          height: Dimensions.paddingSizeExtraSmall,
                        ),
                        Text(
                          "\$${categoryController.calculateCartTotal().toString()}",
                          selectionColor: null,
                          style: Theme.of(context)
                              .textTheme
                              .labelMedium
                              ?.copyWith(fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          height: 50,
                          width: Get.width * 0.5,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              animationDuration:
                                  const Duration(milliseconds: 500),
                              elevation: 0,
                              backgroundColor: Theme.of(context).primaryColor,
                              textStyle: const TextStyle(
                                  color: Colors.white,
                                  fontStyle: FontStyle.normal),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                  100,
                                ),
                              ),
                              shadowColor: Colors.transparent,
                            ),
                            onPressed: () async {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const CheckoutScreen()),
                              );
                            },
                            child: Text(
                              "Checkout",
                              style: Theme.of(context)
                                  .textTheme
                                  .labelSmall
                                  ?.copyWith(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            : null,
      ),
    );
  }
}
