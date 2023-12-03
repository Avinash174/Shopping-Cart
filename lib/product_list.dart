import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductListScreen extends StatefulWidget {
  const ProductListScreen({super.key});

  @override
  State<ProductListScreen> createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {
  List<String> productName = [
    "Mango",
    "Apple",
    "Oranges",
    "Pineapple",
    "Cherry",
    "banana",
    "Peach",
    "Mixes Fruits Basket",
  ];

  List<String> productUnit = [
    'KG',
    'KG',
    'KG',
    'KG',
    'KG',
    'Dozen',
    'KG',
    'KG'
  ];
  List<int> productPrice = [60, 150, 100, 200, 102, 50, 40, 50];

  List<String> productImages = [
    'https://t4.ftcdn.net/jpg/05/41/05/85/240_F_541058586_BI3eaJvZO132lNExAwbARYSg7FfHknWz.jpg',
    'https://t4.ftcdn.net/jpg/00/59/96/75/360_F_59967553_9g2bvhTZf18zCmEVWcKigEoevGzFqXzq.jpg',
    'https://upload.wikimedia.org/wikipedia/commons/c/c4/Orange-Fruit-Pieces.jpg',
    'https://m.media-amazon.com/images/I/71bNsWlkyeL.jpg',
    'https://www.shutterstock.com/image-photo/cheery-vitaminc-fruits-isolated-on-260nw-307182698.jpg',
    'https://thumbs.dreamstime.com/b/banana-bunch-19074568.jpg',
    'https://t3.ftcdn.net/jpg/03/00/59/16/360_F_300591692_sE2Zpz9hoU0H1Klz0JzRw1F74HO7vWne.jpg',
    'https://assets.flowersnfruits.com/uploads/product-pics/1632301706_7.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height * 1;
    final width = MediaQuery.sizeOf(context).width * 1;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Product List',
          style: GoogleFonts.openSans(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        actions: [
          Badge(
            backgroundColor: Colors.redAccent,
            label: Text(
              '0',
              style: GoogleFonts.openSans(
                fontSize: 13,
                fontWeight: FontWeight.w500,
              ),
            ),
            child: const Icon(
              Icons.shopping_bag_outlined,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            width: 20,
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: productName.length,
              itemBuilder: (context, index) {
                return Card(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Image(
                              image: NetworkImage(
                                productImages[index].toString(),
                              ),
                              height: height * .1,
                              width: width * .2,
                            ),
                            SizedBox(
                              width: width * .05,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  productName[index].toString(),
                                  style: GoogleFonts.openSans(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(
                                  height: height * .01,
                                ),
                                Text(
                                  productUnit[index].toString() +
                                      "  " +
                                      "₹. " +
                                      productPrice[index].toString(),
                                  style: GoogleFonts.openSans(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(
                                  height: height * .01,
                                ),
                                InkWell(
                                  child: Container(
                                    height: height * .045,
                                    width: width * .25,
                                    decoration: const BoxDecoration(
                                      color: Colors.green,
                                      borderRadius: BorderRadiusDirectional.all(
                                        Radius.circular(20.0),
                                      ),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'Add to Cart',
                                        style: GoogleFonts.openSans(
                                            color: Colors.white,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w700),
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
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
