import 'package:flutter/material.dart';
import '../../models/product_model.dart';
import '../utils/colors.dart';
import '../utils/sizes.dart';
import '../utils/styles/button_styles.dart';
import '../utils/styles/text_styles.dart';

class AuthWidget {
  BuildContext context;
  AuthWidget({required this.context});

  Widget textFiledView(TextEditingController controller, String hintText) {
    return Padding(
      padding:
          const EdgeInsets.only(left: 10.0, right: 10.0, top: 5, bottom: 5),
      child: Container(
        height: AppSize(context: context).getHegiht / 14,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        child: TextField(
          controller: controller,
          decoration: InputDecoration(
              hintText: hintText,
              hintStyle: TextStyle(color: normalTextColor),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: normalTextColor),
              )),
        ),
      ),
    );
  }

  Widget appButtonView(String text, {required void Function()? onPressed}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: AppSize(context: context).getWidth,
        height: AppSize(context: context).getHegiht / 16,
        child: ElevatedButton(
          style: AppButtonStyles().appButton(),
          onPressed: onPressed,
          child: Text(text),
        ),
      ),
    );
  }

  Widget card(String imageUrl, {required void Function()? onPressed}) {
    return MaterialButton(
      minWidth: AppSize(context: context).getWidth / 2.5,
      height: AppSize(context: context).getHegiht / 20,
      color: normalTextColor,
      onPressed: onPressed,
      child: Image.network(
        imageUrl,
        width: AppSize(context: context).getWidth / 13,
        fit: BoxFit.contain,
      ),
    );
  }

  Widget appTextView(String text,
      {double fontSize = 18.0, Color color = Colors.white}) {
    return Text(
      text,
      style:
          AppTextStyles().normalTextStyle(fontSize: fontSize, color: color),
    );
  }

  // Widget with two dividers and text in between
  Widget dividerWithText(String text,
      {double fontSize = 18.0, Color color = Colors.white}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Divider(
              color: cardcolor,
              thickness: 1.0,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              text,
              style: AppTextStyles()
                  .normalTextStyle(fontSize: fontSize, color: color),
            ),
          ),
          Expanded(
            child: Divider(
              color: cardcolor,
              thickness: 1.0,
            ),
          ),
        ],
      ),
    );
  }

  Widget chekbotm(
    String text, {
    required void Function()? onPressed,
    required Color color,
    required double width,
  }) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: width,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: color,
            foregroundColor: Colors.white,
          ),
          onPressed: onPressed,
          child: Text(
            text,
          ),
        ),
      ),
    );
  }





  Widget productWidget(Product product) {
    return Card(

      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        // side: BorderSide(color: Colors.grey.withOpacity(0.5)),
      ),
      child: Container(
        width: 180,
        height: 100,
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                product.imageUrl,
                height: 210,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 10),
            Text(
              product.title,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5),
            Text(
              '\$${product.price.toStringAsFixed(2)}',
              style: TextStyle(fontSize: 14, color: Colors.green),
            ),
            SizedBox(height: 5),
            Row(
              children: List.generate(
                5,
                    (index) => Icon(
                  Icons.star,
                  size: 16,
                  color: index < product.rating ? Colors.yellow : Colors.grey,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

}
