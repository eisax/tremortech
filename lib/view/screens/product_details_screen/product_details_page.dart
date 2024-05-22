// ignore_for_file: deprecated_member_use
import 'package:tremortech/controller/category_controller.dart';
import 'package:tremortech/data/model/product_item_model.dart';
import 'package:tremortech/util/dimensiona.dart';
import 'package:tremortech/util/images.dart';
import 'package:tremortech/view/screens/explore/widgets/item_summary_widget.dart';
import 'package:tremortech/view/screens/home/widget/page_image_scroll_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class ProductDetailsScreen extends StatefulWidget {
  final CatalogItem item;
  const ProductDetailsScreen({Key? key, required this.item}) : super(key: key);

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
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
                actions: [
                  Container(
                    padding: EdgeInsets.all(Dimensions.paddingSizeSmall),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Theme.of(context).hintColor.withOpacity(
                            0.25,
                          ),
                    ),
                    child: SvgPicture.asset(
                      Images.cartSolid,
                      color: Colors.blue,
                    ),
                  ),
                  SizedBox(
                    width: Dimensions.paddingSizeDefault,
                  ),
                ],
              ),
              body: SafeArea(
                child: Container(
                  color: Theme.of(context).hintColor.withOpacity(0.25),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ImageScrollTemplate(
                          imageScrollList: [
                            "${widget.item.image}${widget.item.id}.jpeg",
                            "${widget.item.image}${widget.item.id}.jpeg",
                          ],
                          height: Get.height * 0.3,
                          isScrollIndicatorVisible: true,
                          isTimer: true,
                          borderRadius: 0,
                          fit: BoxFit.fitWidth,
                        ),
                        SizedBox(
                          height: Dimensions.paddingSizeLarge,
                        ),
                        Container(
                          color: Colors.white,
                          padding: EdgeInsets.symmetric(vertical: Dimensions.paddingSizeDefault, horizontal: Dimensions.paddingSizeSmall),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                            
                              Text(
                                '${widget.item.name}',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.copyWith(
                                        color: Theme.of(context).primaryColor,
                                        fontWeight: FontWeight.w700,
                                        fontSize: Dimensions.fontSizeDefault),
                              ),
                              SizedBox(
                                height: Dimensions.paddingSizeSmall,
                              ),
                              Text(
                                'Crowdbury Gold',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.copyWith(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                    ),
                              ),
                              SizedBox(
                                height: Dimensions.paddingSizeSmall,
                              ),
                              SizedBox(
                                width: Get.width,
                                child: Text(
                                  'The Samsung Notebook 9 is a line of lightweight and portable laptops produced by Samsung Electronics. Here\'s some information about it.',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall
                                      ?.copyWith(
                                        color: Colors.black.withOpacity(0.5),
                                        fontWeight: FontWeight.w400,
                                      ),
                                ),
                              ),
                              SizedBox(
                                height: Dimensions.paddingSizeSmall,
                              ),
                              Text(
                                'Read More',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall
                                    ?.copyWith(
                                      color: Theme.of(context).primaryColor,
                                      decoration: TextDecoration.underline,
                                      decorationColor:
                                          Theme.of(context).primaryColor,
                                      fontWeight: FontWeight.w400,
                                    ),
                              ),
                              SizedBox(
                                height: Dimensions.paddingSizeSmall,
                              ),
                              Row(
                                children: [
                                  SvgPicture.asset(
                                    Images.starSolid,
                                    width: 14,
                                    height: 14,
                                    color: Colors.orange,
                                  ),
                                  SizedBox(
                                    width: Dimensions.paddingSizeExtraSmall,
                                  ),
                                  Text(
                                    '0.0',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall
                                        ?.copyWith(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w400,
                                        ),
                                  ),
                                  SizedBox(
                                    width: Dimensions.paddingSizeExtraSmall,
                                  ),
                                  Text(
                                    '(0)',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall
                                        ?.copyWith(
                                          color:
                                              Theme.of(context).disabledColor,
                                          fontWeight: FontWeight.w400,
                                        ),
                                  ),
                                  SizedBox(
                                    width: Dimensions.paddingSizeDefault,
                                  ),
                                  Text(
                                    '•',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineMedium
                                        ?.copyWith(
                                          color:
                                              Theme.of(context).disabledColor,
                                          fontWeight: FontWeight.w400,
                                        ),
                                  ),
                                  SizedBox(
                                    width: Dimensions.paddingSizeDefault,
                                  ),
                                  Text(
                                    '1 Sold',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall
                                        ?.copyWith(
                                          color:
                                              Theme.of(context).disabledColor,
                                          fontWeight: FontWeight.w400,
                                        ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: Dimensions.paddingSizeSmall,
                              ),
                              Row(
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        '\$2,304',
                                        style: Theme.of(context)
                                            .textTheme
                                            .headlineSmall
                                            ?.copyWith(
                                              fontWeight: FontWeight.w500,
                                              fontSize:
                                                  Dimensions.fontSizeExtraLarge,
                                            ),
                                      ),
                                      const SizedBox(
                                        width: Dimensions.defaultSpacing,
                                      ),
                                      Text(
                                        '\$2,304',
                                        style: Theme.of(context)
                                            .textTheme
                                            .headlineSmall
                                            ?.copyWith(
                                              color: Theme.of(context)
                                                  .disabledColor,
                                              fontWeight: FontWeight.w400,
                                              decoration:
                                                  TextDecoration.lineThrough,
                                              decorationColor: Theme.of(context)
                                                  .disabledColor,
                                              decorationThickness: 2,
                                              fontSize:
                                                  Dimensions.fontSizeExtraLarge,
                                            ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.all(
                                            Dimensions.paddingSizeExtraSmall),
                                        child: Container(
                                          height: 20,
                                          padding: EdgeInsets.symmetric(
                                              horizontal: Dimensions
                                                  .paddingSizeExtraSmall),
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
                                                      fontSize: Dimensions
                                                          .fontSizeSmall,
                                                      fontWeight:
                                                          FontWeight.w400),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: Dimensions.paddingSizeDefault,
                            left: Dimensions.paddingSizeSmall,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Similar Products',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge
                                    ?.copyWith(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                    ),
                              ),
                              SizedBox(
                                height: Dimensions.paddingSizeDefault,
                              ),
                              SizedBox(
                                height: Get.height * 0.4,
                                width: Get.width,
                                child: SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  physics: const BouncingScrollPhysics(),
                                  child: Row(
                                    children: categoryController.products
                                        .asMap()
                                        .entries
                                        .map(
                                          (product) => Padding(
                                            padding: EdgeInsets.only(
                                              right:
                                                  Dimensions.paddingSizeSmall,
                                            ),
                                            child: GestureDetector(
                                              child: ItemSummaryWidget(
                                                  isCategoryGrid: false,
                                                  item: product.value),
                                            ),
                                          ),
                                        )
                                        .toList(),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 60 + Dimensions.defaultSpacing,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              bottomSheet: Container(
                padding: EdgeInsets.all(Dimensions.paddingSizeSmall),
                color: Colors.white,
                height: 60,
                child: Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 50,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            backgroundColor: Colors.white,
                            foregroundColor: Theme.of(context).primaryColor,
                            surfaceTintColor: Colors.transparent,
                            textStyle: const TextStyle(
                                color: Colors.white,
                                fontStyle: FontStyle.normal),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(Dimensions.radiusExtraLarge),
                              ),
                              side: BorderSide(
                                color: Theme.of(context).primaryColor,
                                width: 1,
                              ),
                            ),
                            shadowColor: Theme.of(context).primaryColor,
                          ),
                          onPressed: () async {},
                          child: Text(
                            'ADD TO CARD',
                            style:
                                Theme.of(context).textTheme.bodySmall?.copyWith(
                                      color: Theme.of(context).primaryColor,
                                      fontWeight: FontWeight.bold,
                                    ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: Dimensions.paddingSizeDefault,
                    ),
                    Expanded(
                      child: SizedBox(
                        height: 50,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            backgroundColor: Theme.of(context).primaryColor,
                            foregroundColor: Colors.white,
                            textStyle: const TextStyle(
                                color: Colors.white,
                                fontStyle: FontStyle.normal),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(Dimensions.radiusExtraLarge),
                              ),
                            ),
                            shadowColor: Theme.of(context).primaryColor,
                          ),
                          onPressed: () async {},
                          child: Text(
                            'BUY NOW',
                            style:
                                Theme.of(context).textTheme.bodySmall?.copyWith(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ));
  }
}
