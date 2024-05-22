// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:tremortech/data/model/response/user_model.dart';
import 'package:tremortech/helper/route_helper.dart';
import 'package:tremortech/util/dimensiona.dart';
import 'package:tremortech/util/images.dart';

class OrdersScreen extends StatefulWidget {
  const OrdersScreen({super.key});

  @override
  State<OrdersScreen> createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen> {
  bool isLinkes = false;
  int sum = 0;
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(
              vertical: Dimensions.paddingSizeSmall,
              horizontal: Dimensions.paddingSizeDefault),
          width: Get.width,
          height: Get.height,
          child: Column(
            children: [
              //app bar
              Container(
                padding: EdgeInsets.all(Dimensions.paddingSizeSmall),
                width: Get.width,
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                            width: 1,
                            color: Theme.of(context)
                                .dividerColor
                                .withOpacity(0.25)))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Text(
                          "Orders",
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall
                              ?.copyWith(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () => Get.toNamed(RouteHelper.search),
                          child: Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(50),
                              boxShadow: [
                                BoxShadow(
                                  color: Theme.of(context)
                                      .shadowColor
                                      .withOpacity(0.25),
                                  spreadRadius: 5,
                                  blurRadius: 50,
                                  offset: const Offset(0, 0),
                                ),
                              ],
                            ),
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                SvgPicture.asset(
                                  Images.search,
                                  width: 24,
                                  height: 25,
                                  color: Theme.of(context).dividerColor,
                                ),
                              ],
                            ),
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

              // Expanded(
              //   child: SingleChildScrollView(
              //     physics: const BouncingScrollPhysics(),
              //     scrollDirection: Axis.vertical,
              //     child: Column(
              //       children: cart
              //           .asMap()
              //           .entries
              //           .map(
              //             (entry) => GestureDetector(
              //                 onTap: () => Navigator.push(
              //                       context,
              //                       MaterialPageRoute(
              //                         builder: (context) => ProductDetailsScreen(
              //                           item: entry.value,
              //                         ),
              //                       ),
              //                     ),
              //                 child: cartListItem(context, entry,
              //                     isDelete: false)),
              //           )
              //           .toList(),
              //     ),
              //   ),
              // ),
           
            ],
          ),
        ),
      ),
    );
  }

  Widget cartListItem(BuildContext context, final entry,
      {bool isDelete = false}) {
    return Padding(
      padding: EdgeInsets.all(Dimensions.paddingSizeSmall),
      child: Container(
        width: Get.width,
        padding: EdgeInsets.all(Dimensions.paddingSizeDefault),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
              Dimensions.radiusDefault + Dimensions.paddingSizeDefault),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Theme.of(context).shadowColor.withOpacity(0.25),
              spreadRadius: 5,
              blurRadius: 50,
              offset: const Offset(0, 0),
            ),
          ],
        ),
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: Stack(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(entry.value.url),
                            fit: BoxFit.cover),
                        borderRadius:
                            BorderRadius.circular(Dimensions.paddingSizeLarge),
                        color: Theme.of(context).canvasColor),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                padding: EdgeInsets.all(Dimensions.paddingSizeSmall),
                height: 100,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          entry.value.name,
                          style: Theme.of(context)
                              .textTheme
                              .labelLarge
                              ?.copyWith(fontWeight: FontWeight.w500),
                        ),
                        if (isDelete)
                          SvgPicture.asset(
                            Images.notifications,
                            width: 18,
                            height: 18,
                            color: Theme.of(context).dividerColor,
                          ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          width: 12,
                          height: 12,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.blue.withOpacity(0.25)),
                        ),
                        SizedBox(
                          width: Dimensions.paddingSizeSmall,
                        ),
                        Text(
                          "Cream Blue",
                          style: Theme.of(context)
                              .textTheme
                              .labelSmall
                              ?.copyWith(fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "\$140",
                          style: Theme.of(context)
                              .textTheme
                              .labelLarge
                              ?.copyWith(fontWeight: FontWeight.w500),
                        ),
                        Container(
                          height: 30,
                          padding: EdgeInsets.symmetric(
                              vertical: Dimensions.paddingSizeExtraSmall,
                              horizontal: Dimensions.paddingSizeDefault),
                          decoration: BoxDecoration(
                            color: Theme.of(context).primaryColor,
                            borderRadius: BorderRadius.circular(
                                Dimensions.radiusExtraLarge),
                          ),
                          child: Row(
                            children: [
                              Text(
                                "Completed",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall
                                    ?.copyWith(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class UserTile extends StatelessWidget {
  final User user;

  const UserTile({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image:
              DecorationImage(image: AssetImage(user.image), fit: BoxFit.cover),
          color: Colors.white,
          borderRadius: BorderRadius.circular(Dimensions.radiusLarge)),
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(
              Dimensions.paddingSizeDefault,
            ),
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                Dimensions.radiusLarge,
              ),
              gradient: const LinearGradient(
                colors: [Colors.transparent, Colors.transparent, Colors.black],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "${user.name} (18)",
                  style: Theme.of(context).textTheme.labelMedium?.copyWith(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),

                //user name
                Text(
                  "Harare, Zimbabwe",
                  style: Theme.of(context).textTheme.labelSmall?.copyWith(
                      fontSize: 8,
                      color: Colors.white,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
