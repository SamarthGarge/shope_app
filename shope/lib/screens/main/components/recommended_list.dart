import 'package:shope/app_properties.dart';
import 'package:shope/models/product.dart';
import 'package:shope/screens/product/product_page.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter/material.dart';

class RecommendedList extends StatelessWidget {
  final List<Product> products = [
    Product('assets/bag_1.png', 'Bag', 'Beautiful bag', 233),
    Product('assets/cap_5.png', 'Cap', 'Cap with beautiful design', 10),
    Product('assets/jeans_1.png', 'Jeans', 'Jeans for you', 20),
    Product('assets/womanshoe_3.png', 'Woman Shoes',
        'Shoes with special discount', 30),
    Product('assets/bag_10.png', 'Bag Express', 'Bag for your shops', 40),
    Product('assets/jeans_3.png', 'Jeans', 'Beautiful Jeans', 1023),
    Product('assets/ring_1.png', 'Silver Ring', 'Description', 533),
    Product('assets/shoeman_7.png', 'Shoes', 'Description', 623),
    Product('assets/headphone_9.png', 'Headphones', 'Description', 733),
    Product('assets/headphone_10.png', 'Headphones', 'Description', 73),
    Product('assets/jeans_2.png', 'Jeans', 'Description', 733),
    Product('assets/ring_2.png', 'Silver Ring', 'Description', 723),
    Product('assets/shoeman_8.png', 'Shoes', 'Description', 723),
    Product('assets/womanshoe_5.png', 'Woman Shoes', 'Shoes', 562),
    
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 20,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              IntrinsicHeight(
                child: Container(
                  margin: const EdgeInsets.only(left: 16.0, right: 8.0),
                  width: 4,
                  color: mediumYellow,
                ),
              ),
              Center(
                  child: Text(
                'Recommended',
                style: TextStyle(
                    color: darkGrey,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold),
              )),
            ],
          ),
        ),
        Flexible(
          child: Container(
            padding: EdgeInsets.only(top: 16.0, right: 16.0, left: 16.0),
            child: MasonryGridView.count(
              physics: NeverScrollableScrollPhysics(),
              padding: EdgeInsets.zero,
              crossAxisCount: 4,
              itemCount: products.length,
              itemBuilder: (BuildContext context, int index) => new ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                child: InkWell(
                  onTap: () => Navigator.of(context).push(MaterialPageRoute(
                      builder: (_) => ProductPage(product: products[index]))),
                  child: Container(
                      decoration: BoxDecoration(
                        gradient: RadialGradient(
                            colors: [
                              Colors.grey.withValues(alpha: 0.3),
                              Colors.grey.withValues(alpha: 0.7),
                            ],
                            center: Alignment(0, 0),
                            radius: 0.6,
                            focal: Alignment(0, 0),
                            focalRadius: 0.1),
                      ),
                      child: Hero(
                          tag: products[index].image,
                          child: Image.asset(products[index].image))),
                ),
              ),
              mainAxisSpacing: 4.0,
              crossAxisSpacing: 4.0,
            ),
          ),
        ),
      ],
    );
  }
}

// import 'package:shope/app_properties.dart';
// import 'package:shope/models/product.dart';
// import 'package:shope/screens/product/product_page.dart';
// import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
// import 'package:flutter/material.dart';

// class RecommendedList extends StatelessWidget {
//   final List<Product> products = [
//     Product('assets/bag_1.png', 'Bag', 'Beautiful bag', 2.33),
//     Product('assets/cap_5.png', 'Cap', 'Cap with beautiful design', 10),
//     Product('assets/jeans_1.png', 'Jeans', 'Jeans for you', 20),
//     Product('assets/womanshoe_3.png', 'Woman Shoes',
//         'Shoes with special discount', 30),
//     Product('assets/bag_10.png', 'Bag Express', 'Bag for your shops', 40),
//     Product('assets/jeans_3.png', 'Jeans', 'Beautiful Jeans', 102.33),
//     Product('assets/ring_1.png', 'Silver Ring', 'Description', 52.33),
//     Product('assets/shoeman_7.png', 'Shoes', 'Description', 62.33),
//     Product('assets/headphone_9.png', 'Headphones', 'Description', 72.33),

//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: <Widget>[
//         SizedBox(
//           height: 40,
//           child: Row(
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             children: <Widget>[
//               IntrinsicHeight(
//                 child: Container(
//                   margin: const EdgeInsets.only(left: 16.0, right: 8.0),
//                   width: 4,
//                   color: mediumYellow,
//                 ),
//               ),
//               Center(
//                   child: Text(
//                 'Recommended',
//                 style: TextStyle(
//                     color: darkGrey,
//                     fontSize: 16.0,
//                     fontWeight: FontWeight.bold),
//               )),
//             ],
//           ),
//         ),
//         Flexible(
//           child: Container(
//             padding: EdgeInsets.only(top: 16.0, right: 16.0, left: 16.0),
//             child: MasonryGridView.count(
//               crossAxisCount: 2, // Adjust this to 2 or 3 for larger boxes
//               itemCount: products.length,
//               itemBuilder: (BuildContext context, int index) => ClipRRect(
//                 borderRadius: BorderRadius.all(Radius.circular(5.0)),
//                 child: InkWell(
//                   onTap: () => Navigator.of(context).push(MaterialPageRoute(
//                       builder: (_) => ProductPage(product: products[index]))),
//                   child: Container(
//                     decoration: BoxDecoration(
//                       color: Colors.white,
//                       boxShadow: [
//                         BoxShadow(
//                           color: Colors.black26,
//                           blurRadius: 4.0,
//                           spreadRadius: 1.0,
//                           offset: Offset(2, 2),
//                         ),
//                       ],
//                     ),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       children: [
//                         Hero(
//                           tag: products[index].image,
//                           child: Image.asset(
//                             products[index].image,
//                             fit: BoxFit.cover,
//                             height: 120,
//                           ),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: Text(
//                             products[index].name,
//                             style: TextStyle(
//                               fontSize: 14.0,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//               mainAxisSpacing: 8.0,
//               crossAxisSpacing: 8.0,
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }
