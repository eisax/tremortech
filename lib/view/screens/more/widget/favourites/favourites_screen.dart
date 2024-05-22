import 'package:tremortech/controller/category_controller.dart';
import 'package:tremortech/view/screens/explore/widgets/horizontal_summary_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyFavouritesScreen extends StatefulWidget {
  const MyFavouritesScreen({super.key});

  @override
  State<MyFavouritesScreen> createState() => _MyFavouritesScreenState();
}

class _MyFavouritesScreenState extends State<MyFavouritesScreen> {
  String selectedOrderType = "All";
  @override
  Widget build(BuildContext context) {
    return GetBuilder<CategoryController>(
      builder: (categoryController) => Scaffold(
        backgroundColor: const Color(0xFFDAE4E7).withOpacity(0.25),
        appBar: AppBar(
          surfaceTintColor: Colors.transparent,
          automaticallyImplyLeading: true,
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            "My Wishlist",
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w700,
                ),
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: categoryController.products
                  .map(
                    (product) => HorizontalSummaryWidget(
                      item: product,
                      isItemDelete: true,
                      isItemCartAddable: true,
                    ),
                  )
                  .toList(),
            ),
          ),
        ),
      ),
    );
  }
}
