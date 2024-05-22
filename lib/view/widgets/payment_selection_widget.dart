import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:tremortech/util/dimensiona.dart';
import 'package:tremortech/util/images.dart';

class PaymentSelectionWidget extends StatefulWidget {
  final List<String> selectionWidgetList;
  final List<String> selectedWidgetList;
  final ValueChanged<List<String>> onSelectionChanged;
  final int maximumSelectionSize;

  PaymentSelectionWidget(
      {required this.selectionWidgetList,
      required this.selectedWidgetList,
      required this.onSelectionChanged,
      required this.maximumSelectionSize});

  @override
  _PaymentSelectionWidgetState createState() => _PaymentSelectionWidgetState();
}

class _PaymentSelectionWidgetState extends State<PaymentSelectionWidget> {
  int tappedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: widget.selectionWidgetList.asMap().entries.map(
        (entry) {
          int index = entry.key;
          String hobby = entry.value;
          bool isSelected = widget.selectedWidgetList.contains(hobby);

          return GestureDetector(
            onTap: () {
              
              setState(() {
                widget.selectedWidgetList.clear();
                tappedIndex = index;
              });
              Future.delayed(const Duration(milliseconds: 10), () {
                setState(() {
                  tappedIndex = -1;
                });
              });

              if (!widget.selectedWidgetList.contains(hobby)) {
                if (widget.selectedWidgetList.length <
                    widget.maximumSelectionSize) {
                  widget.selectedWidgetList.add(hobby);
                }
              } else {
                widget.selectedWidgetList
                    .removeWhere((element) => element == hobby);
              }
              widget.onSelectionChanged(widget.selectedWidgetList);
            },
            child: AnimatedContainer(
              width: Get.width * 0.42,
              constraints: const BoxConstraints(maxHeight: 100),
              duration: Duration(milliseconds: 300),
              margin: EdgeInsets.symmetric(horizontal: 5, vertical: 4),
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: isSelected
                      ? Theme.of(context).primaryColor
                      : Theme.of(context).disabledColor,
                  width: 1,
                ),
                boxShadow: [
                  BoxShadow(
                    color: tappedIndex == index
                        ? Theme.of(context).shadowColor
                        : Colors.transparent,
                    blurRadius: 5,
                    spreadRadius: 2,
                  ),
                ],
              ),
              child: Container(
                padding: EdgeInsets.all(Dimensions.paddingSizeDefault),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.all(
                            Dimensions.paddingSizeExtraSmall,
                          ),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: isSelected
                                  ? Theme.of(context).primaryColor
                                  : Theme.of(context).disabledColor,
                              width: 1,
                            ),
                          ),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                width: 10,
                                height: 10,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: isSelected
                                      ? Theme.of(context).primaryColor
                                      : Theme.of(context).disabledColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SvgPicture.asset(
                          index == 0 ? Images.cashback : Images.delivery,
                          height: 40,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: Dimensions.paddingSizeDefault,
                    ),
                    Text(
                      hobby,
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: isSelected
                              ? Theme.of(context).primaryColor
                              : Theme.of(context).disabledColor,
                          fontSize: Dimensions.fontSizeExtraSmall),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ).toList(),
    );
  }
}

//how to use it 

// PaymentSelectionWidget(
//           selectionWidgetList: selectionWidgetList,
//           selectedWidgetList: selectedWidgetList,
//           maximumSelectionSize:10,
//           onSelectionChanged: (selected) {
//             setState(() {
//               selectedWidgetList = selected;
//             });
//           },
//         )