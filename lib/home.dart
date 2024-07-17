import 'package:ecommerce/components/dropdown_design.dart';
import 'package:ecommerce/components/option_list.dart';
import 'package:ecommerce/components/responsive_layout.dart';
import 'package:ecommerce/footerColumn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'buildProductCard.dart';
import 'components/option_list.dart';
import 'components/search_boy.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final TextEditingController _searchController = TextEditingController();
  void handleSelectChange(String option) {}
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return ResponsiveLayout(
      mobileBody: Scaffold(
        backgroundColor: const Color(0xffFFFFFF),
        appBar: AppBar(
          backgroundColor: const Color(0xff06244A),
          toolbarHeight: 64,
          title: Padding(
            padding:
                const EdgeInsets.only(left: 8, top: 24, bottom: 24, right: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset('assets/icons/logo.svg'),
                // const Gap(22),
                SearchBoy(
                  width: 123,
                  hintText: 'Search for a product',
                  controller: _searchController,
                ),
                // const Gap(20),
                Row(
                  children: [
                    SvgPicture.asset('assets/icons/Vector.svg'),
                    const Gap(8),
                    SvgPicture.asset('assets/icons/notifications.svg'),
                    const Gap(8),
                    SvgPicture.asset('assets/icons/shopping_cart.svg'),
                  ],
                ),
              ],
            ),
          ),
        ),
        body: SizedBox(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  child: Container(
                    color: const Color(0xff041C3B),
                    height: 40,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              height: 24,
                              child: DropdownDesign(
                                  options: category,
                                  onSelectionChanged: handleSelectChange,
                                  width: 180,
                                  hintText: 'Categories'),
                            ),
                            const Gap(24),
                            Row(
                              children: [
                                TextButton(
                                  onPressed: () {},
                                  child: const Text(
                                    'Fashion',
                                    style: TextStyle(
                                      fontFamily: 'Inter',
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xffFFFFFF),
                                    ),
                                  ),
                                ),
                                const Gap(10),
                                TextButton(
                                  onPressed: () {},
                                  child: const Text(
                                    'Electronics',
                                    style: TextStyle(
                                      fontFamily: 'Inter',
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xffFFFFFF),
                                    ),
                                  ),
                                ),
                                const Gap(10),
                                TextButton(
                                  onPressed: () {},
                                  child: const Text(
                                    'Skin Care',
                                    style: TextStyle(
                                      fontFamily: 'Inter',
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xffFFFFFF),
                                    ),
                                  ),
                                ),
                                const Gap(10),
                                TextButton(
                                  onPressed: () {},
                                  child: const Text(
                                    'Home Appliances',
                                    style: TextStyle(
                                      fontFamily: 'Inter',
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xffFFFFFF),
                                    ),
                                  ),
                                ),
                                const Gap(10),
                                TextButton(
                                  onPressed: () {},
                                  child: const Text(
                                    'Sports',
                                    style: TextStyle(
                                      fontFamily: 'Inter',
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xffFFFFFF),
                                    ),
                                  ),
                                ),
                                const Gap(10),
                                TextButton(
                                  onPressed: () {},
                                  child: const Text(
                                    'Groceries',
                                    style: TextStyle(
                                      fontFamily: 'Inter',
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xffFFFFFF),
                                    ),
                                  ),
                                ),
                                const Gap(10),
                                TextButton(
                                  onPressed: () {},
                                  child: const Text(
                                    'Others',
                                    style: TextStyle(
                                      fontFamily: 'Inter',
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xffFFFFFF),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                const Gap(40),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 166,
                          width: 310,
                          decoration: BoxDecoration(
                            color: const Color(0xffFCBA01),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          //  children: [
                          //   Image.asset('assets/images/Rectangle1.png'),
                          //   Image.asset('assets/images/Rectangle2.png'),
                          //   Image.asset('assets/images/Rectangle3.png'),
                          // ],

                          child: Row(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 16, left: 16),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Discover Endless\nStyle & Brands',
                                      style: TextStyle(
                                        fontFamily: 'Inter',
                                        fontSize: 16,
                                        fontWeight: FontWeight.w800,
                                        color: Color(0xff000000),
                                      ),
                                    ),
                                    const SizedBox(height: 8),
                                    const Text(
                                      'Shop the Latest Trends and Timeless\nClassics at swingxstore!',
                                      style: TextStyle(
                                          fontFamily: 'Inter',
                                          fontSize: 10,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xff000000)),
                                    ),
                                    const SizedBox(height: 8),
                                    ElevatedButton(
                                      onPressed: () {
                                        // Add your shop now functionality here
                                      },
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.red,
                                        foregroundColor: Colors.white,
                                        // padding: const EdgeInsets.symmetric(
                                        //     horizontal: 24, vertical: 12),
                                      ),
                                      child: const Row(
                                        children: [
                                          Text(
                                            'Shop Now',
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontFamily: 'Inter',
                                                fontWeight: FontWeight.w500),
                                          ),
                                          Icon(Icons.arrow_outward,
                                              color: Colors.white, size: 16),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Image.asset(
                                'assets/images/ladyshopping.png',
                                height: 500,
                                width: 454,
                              ),
                            ],
                          ),
                        ),
                        const Gap(16),
                        Column(
                          children: [
                            Container(
                              height: 156,
                              width: 390,
                              decoration: BoxDecoration(
                                color: const Color(0xffFFF9E0),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 20, top: 19),
                                child: Column(
                                  children: [
                                    InkWell(
                                      onTap: () {},
                                      child: Row(
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 20),
                                            child: Image.asset(
                                                'assets/images/phone.png'),
                                          ),
                                          const Gap(16),
                                          const Column(
                                            children: [
                                              SelectableText(
                                                'CALL TO ORDER',
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w500,
                                                    color: Color(0xff000000)),
                                              ),
                                              Text(
                                                '081-234-5678',
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.w400),
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    const Gap(20),
                                    InkWell(
                                      onTap: () {},
                                      child: Row(
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 20),
                                            child: Image.asset(
                                                'assets/images/store.png'),
                                          ),
                                          const Gap(16),
                                          const Column(
                                            children: [
                                              SelectableText(
                                                'NEED HELP ASAP?',
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w500,
                                                    color: Color(0xff000000)),
                                              ),
                                              Text(
                                                'Speak to an agent',
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.w400),
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const Gap(16),
                            Container(
                              height: 156,
                              width: 390,
                              decoration: BoxDecoration(
                                color: const Color(0xffDBAFD4),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Row(
                                children: [
                                  Image.asset('assets/images/boot.png'),
                                  const Padding(
                                    padding: EdgeInsets.only(left: 15, top: 33),
                                    child: Column(
                                      children: [
                                        Text(
                                          'Trendy Sneakers',
                                          style: TextStyle(
                                            fontSize: 24,
                                            fontStyle: FontStyle.italic,
                                            shadows: [
                                              Shadow(
                                                color: Color(0x40000000),
                                                blurRadius: 4.0,
                                                offset: Offset(0, 4.0),
                                              ),
                                            ],
                                            fontWeight: FontWeight.w600,
                                            color: Color(0xffAFDBB6),
                                          ),
                                        ),
                                        Text(
                                          'JUST FOR YOU',
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600,
                                              color: Color(0xffFFFFFF)),
                                        ),
                                        Text(
                                          'AND YOU ALONE!',
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600,
                                              color: Color(0xff000000)),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const Gap(30),
                Padding(
                  padding: const EdgeInsets.only(left: 80, right: 80),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Explore Popular Categories',
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                              color: Color(0xff06244A),
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              // Handle "See All" action
                            },
                            child: const Row(
                              children: [
                                Text(
                                  'See All',
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    color: Color(0xff3A3A3A),
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                                Icon(Icons.arrow_forward,
                                    size: 16, color: Color(0xff3A3A3A)),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const Gap(32),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                SizedBox(
                                  height: 160,
                                  width: 120,
                                  child: Image.asset(
                                    'assets/images/ElipseShoe.png',
                                    height: 100,
                                  ),
                                ),
                                const Text(
                                  'Sneakers',
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff06244A),
                                  ),
                                )
                              ],
                            ),
                            const Gap(40),
                            Column(
                              children: [
                                SizedBox(
                                  height: 160,
                                  width: 120,
                                  child: Image.asset(
                                    'assets/images/bagpic.png',
                                    height: 100,
                                  ),
                                ),
                                const Text(
                                  'Hand bags',
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff06244A),
                                  ),
                                )
                              ],
                            ),
                            const Gap(40),
                            Column(
                              children: [
                                SizedBox(
                                  height: 160,
                                  width: 120,
                                  child: Image.asset(
                                    'assets/images/picture.png',
                                    height: 100,
                                  ),
                                ),
                                const Text(
                                  'Phones & Tablet',
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff06244A),
                                  ),
                                )
                              ],
                            ),
                            const Gap(40),
                            Column(
                              children: [
                                SizedBox(
                                  height: 160,
                                  width: 120,
                                  child: Image.asset(
                                    'assets/images/skinpic.png',
                                    height: 100,
                                  ),
                                ),
                                const Text(
                                  'Skincare',
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff06244A),
                                  ),
                                ),
                              ],
                            ),
                            const Gap(40),
                            Column(
                              children: [
                                SizedBox(
                                  height: 160,
                                  width: 120,
                                  child: Image.asset(
                                    'assets/images/chairpic.png',
                                    height: 100,
                                  ),
                                ),
                                const Text(
                                  'Furniture',
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff06244A),
                                  ),
                                ),
                              ],
                            ),
                            const Gap(40),
                            Column(
                              children: [
                                SizedBox(
                                  height: 160,
                                  width: 120,
                                  child: Image.asset(
                                    'assets/images/jewelpic.png',
                                    height: 100,
                                  ),
                                ),
                                const Text(
                                  'Jewelry',
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff06244A),
                                  ),
                                ),
                              ],
                            ),
                            const Gap(40),
                            Column(
                              children: [
                                SizedBox(
                                  height: 160,
                                  width: 120,
                                  child: Image.asset(
                                    'assets/images/grocerypic.png',
                                    height: 100,
                                  ),
                                ),
                                const Text(
                                  'Groceries',
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff06244A),
                                  ),
                                ),
                              ],
                            ),
                            const Gap(40),
                            Column(
                              children: [
                                SizedBox(
                                  height: 160,
                                  width: 120,
                                  child: Image.asset(
                                    'assets/images/ElipseShoe.png',
                                    height: 100,
                                  ),
                                ),
                                const Text(
                                  'Sneakers',
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff06244A),
                                  ),
                                )
                              ],
                            ),
                            const Gap(40),
                            Column(
                              children: [
                                SizedBox(
                                  height: 160,
                                  width: 120,
                                  child: Image.asset(
                                    'assets/images/bagpic.png',
                                    height: 100,
                                  ),
                                ),
                                const Text(
                                  'Hand bags',
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff06244A),
                                  ),
                                )
                              ],
                            ),
                            const Gap(40),
                            Column(
                              children: [
                                SizedBox(
                                  height: 160,
                                  width: 120,
                                  child: Image.asset(
                                    'assets/images/picture.png',
                                    height: 100,
                                  ),
                                ),
                                const Text(
                                  'Phones & Tablet',
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff06244A),
                                  ),
                                )
                              ],
                            ),
                            const Gap(40),
                            Column(
                              children: [
                                SizedBox(
                                  height: 160,
                                  width: 120,
                                  child: Image.asset(
                                    'assets/images/skinpic.png',
                                    height: 100,
                                  ),
                                ),
                                const Text(
                                  'Skincare',
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff06244A),
                                  ),
                                ),
                              ],
                            ),
                            const Gap(40),
                            Column(
                              children: [
                                SizedBox(
                                  height: 160,
                                  width: 120,
                                  child: Image.asset(
                                    'assets/images/chairpic.png',
                                    height: 100,
                                  ),
                                ),
                                const Text(
                                  'Furniture',
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff06244A),
                                  ),
                                ),
                              ],
                            ),
                            const Gap(40),
                            Column(
                              children: [
                                SizedBox(
                                  height: 160,
                                  width: 120,
                                  child: Image.asset(
                                    'assets/images/jewelpic.png',
                                    height: 100,
                                  ),
                                ),
                                const Text(
                                  'Jewelry',
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff06244A),
                                  ),
                                ),
                              ],
                            ),
                            const Gap(40),
                            Column(
                              children: [
                                SizedBox(
                                  height: 160,
                                  width: 120,
                                  child: Image.asset(
                                    'assets/images/grocerypic.png',
                                    height: 100,
                                  ),
                                ),
                                const Text(
                                  'Groceries',
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff06244A),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const Gap(50),
                      Container(
                        height: 420,
                        width: width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: const Color(0xffE3F2FD),
                        ),
                        padding: const EdgeInsets.only(left: 29, top: 31),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  'Best Selling Items',
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xff06244A),
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {
                                    // Handle "See All" action
                                  },
                                  child: const Row(
                                    children: [
                                      Text(
                                        'See All',
                                        style: TextStyle(
                                          color: Color(0xff3A3A3A),
                                          decoration: TextDecoration.underline,
                                        ),
                                      ),
                                      Icon(Icons.arrow_forward,
                                          size: 16, color: Color(0xff3A3A3A)),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 20),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  buildProductCard('assets/images/fendi.png',
                                      'Nike Airforce 1', 45000, 45000, 4.0),
                                  buildProductCard('assets/images/skincare.png',
                                      'Nike Airforce 1', 45000, 45000, 4.0),
                                  buildProductCard('assets/images/bracelet.png',
                                      'Nike Airforce 1', 45000, 45000, 4.0),
                                  buildProductCard('assets/images/shoe.png',
                                      'Nike Airforce 1', 45000, 45000, 4.0),
                                  buildProductCard('assets/images/heelshoe.png',
                                      'Nike Airforce 1', 45000, 45000, 4.0),
                                  buildProductCard('assets/images/fendi.png',
                                      'Nike Airforce 1', 45000, 45000, 4.0),
                                  buildProductCard('assets/images/skincare.png',
                                      'Nike Airforce 1', 45000, 45000, 4.0),
                                  buildProductCard('assets/images/bracelet.png',
                                      'Nike Airforce 1', 45000, 45000, 4.0),
                                  buildProductCard('assets/images/shoe.png',
                                      'Nike Airforce 1', 45000, 45000, 4.0),
                                  buildProductCard('assets/images/heelshoe.png',
                                      'Nike Airforce 1', 45000, 45000, 4.0),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Gap(60),
                      Container(
                        height: 420,
                        width: width,
                        decoration: BoxDecoration(
                          color: const Color(0xffFFF8E1),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        padding: const EdgeInsets.only(left: 29, top: 31),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  'Top Deals For You',
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xff06244A),
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {
                                    // Handle "See All" action
                                  },
                                  child: const Row(
                                    children: [
                                      Text(
                                        'See All',
                                        style: TextStyle(
                                          color: Color(0xff3A3A3A),
                                          decoration: TextDecoration.underline,
                                        ),
                                      ),
                                      Icon(Icons.arrow_forward,
                                          size: 16, color: Color(0xff3A3A3A)),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 20),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  buildProductCard('assets/images/lipstick.png',
                                      'Nike Airforce 1', 45000, 45000, 4.0),
                                  buildProductCard('assets/images/chain.png',
                                      'Nike Airforce 1', 45000, 45000, 4.0),
                                  buildProductCard('assets/images/perfume.png',
                                      'Nike Airforce 1', 45000, 45000, 4.0),
                                  buildProductCard('assets/images/shirt.png',
                                      'Nike Airforce 1', 45000, 45000, 4.0),
                                  buildProductCard('assets/images/perf2.png',
                                      'Nike Airforce 1', 45000, 45000, 4.0),
                                  buildProductCard('assets/images/lipstick.png',
                                      'Nike Airforce 1', 45000, 45000, 4.0),
                                  buildProductCard('assets/images/chain.png',
                                      'Nike Airforce 1', 45000, 45000, 4.0),
                                  buildProductCard('assets/images/perfume.png',
                                      'Nike Airforce 1', 45000, 45000, 4.0),
                                  buildProductCard('assets/images/shirt.png',
                                      'Nike Airforce 1', 45000, 45000, 4.0),
                                  buildProductCard('assets/images/perf2.png',
                                      'Nike Airforce 1', 45000, 45000, 4.0),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Gap(48),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 280,
                            width: 596,
                            decoration: BoxDecoration(
                              color: const Color(0xff4CAF50),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            padding: const EdgeInsets.only(left: 25, top: 62),
                            child: Row(
                              children: [
                                Column(
                                  children: [
                                    RichText(
                                      text: const TextSpan(
                                        style: TextStyle(
                                            fontSize: 36,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.black),
                                        children: [
                                          TextSpan(text: 'Get Up to '),
                                          TextSpan(
                                            text: '30%',
                                            style:
                                                TextStyle(color: Colors.yellow),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const Text(
                                      'Off New Arrivals',
                                      style: TextStyle(
                                          fontSize: 36,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                    ),
                                    const SizedBox(height: 20),
                                    ElevatedButton(
                                      onPressed: () {
                                        // Add shop now functionality
                                      },
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: const Color(
                                            0xFF3E2723), // Dark brown color

                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                      ),
                                      child: const Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Text('Shop Now',
                                              style: TextStyle(
                                                  color: Colors.white)),
                                          SizedBox(width: 8),
                                          Icon(Icons.arrow_forward,
                                              color: Colors.white, size: 16),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                const Gap(1),
                                SizedBox(
                                  height: 600,
                                  child: Image.asset('assets/images/girls.png'),
                                )
                              ],
                            ),
                          ),
                          const Gap(20),
                          Container(
                            height: 280,
                            width: 590,
                            decoration: BoxDecoration(
                              color: const Color(0xff4CAF50),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            padding: const EdgeInsets.only(left: 25, top: 62),
                            child: Row(
                              children: [
                                Column(
                                  children: [
                                    RichText(
                                      text: const TextSpan(
                                        style: TextStyle(
                                            fontSize: 36,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.black),
                                        children: [
                                          TextSpan(text: 'Earn Yourself a'),
                                        ],
                                      ),
                                    ),
                                    const Text(
                                      'Surprise Gift!',
                                      style: TextStyle(
                                          fontSize: 36,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.yellow),
                                    ),
                                    const SizedBox(height: 20),
                                    ElevatedButton(
                                      onPressed: () {
                                        // Add shop now functionality
                                      },
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: const Color(
                                            0xFF3E2723), // Dark brown color

                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                      ),
                                      child: const Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Text('Shop Now',
                                              style: TextStyle(
                                                  color: Colors.white)),
                                          SizedBox(width: 8),
                                          Icon(Icons.arrow_forward,
                                              color: Colors.white, size: 16),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                const Gap(1),
                                SizedBox(
                                  height: 600,
                                  child: Image.asset('assets/images/guy.png'),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      const Gap(60),
                      Container(
                        height: 420,
                        width: width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: const Color(0xffDFF0D8),
                        ),
                        padding: const EdgeInsets.only(left: 29, top: 31),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  'New Arrivals',
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xff06244A),
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {
                                    // Handle "See All" action
                                  },
                                  child: const Row(
                                    children: [
                                      Text(
                                        'See All',
                                        style: TextStyle(
                                          color: Color(0xff3A3A3A),
                                          decoration: TextDecoration.underline,
                                        ),
                                      ),
                                      Icon(Icons.arrow_forward,
                                          size: 16, color: Color(0xff3A3A3A)),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 20),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  buildProductCard('assets/images/heelrope.png',
                                      'Nike Airforce 1', 45000, 45000, 4.0),
                                  buildProductCard('assets/images/bag.png',
                                      'Nike Airforce 1', 45000, 45000, 4.0),
                                  buildProductCard(
                                      'assets/images/wristchain.png',
                                      'Nike Airforce 1',
                                      45000,
                                      45000,
                                      4.0),
                                  buildProductCard('assets/images/chair.png',
                                      'Nike Airforce 1', 45000, 45000, 4.0),
                                  buildProductCard(
                                      'assets/images/neckchain.png',
                                      'Nike Airforce 1',
                                      45000,
                                      45000,
                                      4.0),
                                  buildProductCard('assets/images/heelrope.png',
                                      'Nike Airforce 1', 45000, 45000, 4.0),
                                  buildProductCard('assets/images/bag.png',
                                      'Nike Airforce 1', 45000, 45000, 4.0),
                                  buildProductCard(
                                      'assets/images/wristchain.png',
                                      'Nike Airforce 1',
                                      45000,
                                      45000,
                                      4.0),
                                  buildProductCard('assets/images/chair.png',
                                      'Nike Airforce 1', 45000, 45000, 4.0),
                                  buildProductCard(
                                      'assets/images/neckchain.png',
                                      'Nike Airforce 1',
                                      45000,
                                      45000,
                                      4.0),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Gap(60),
                      Container(
                        height: 420,
                        width: width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: const Color(0xffECF4FD),
                        ),
                        padding: const EdgeInsets.only(left: 29, top: 31),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  'Luxury Brands',
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xff06244A),
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {
                                    // Handle "See All" action
                                  },
                                  child: const Row(
                                    children: [
                                      Text(
                                        'See All',
                                        style: TextStyle(
                                          color: Color(0xff3A3A3A),
                                          decoration: TextDecoration.underline,
                                        ),
                                      ),
                                      Icon(Icons.arrow_forward,
                                          size: 16, color: Color(0xff3A3A3A)),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 20),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  buildProductCard(
                                      'assets/images/circlechain.png',
                                      'Nike Airforce 1',
                                      45000,
                                      45000,
                                      4.0),
                                  buildProductCard('assets/images/lipstick.png',
                                      'Nike Airforce 1', 45000, 45000, 4.0),
                                  buildProductCard('assets/images/chain2.png',
                                      'Nike Airforce 1', 45000, 45000, 4.0),
                                  buildProductCard('assets/images/case.png',
                                      'Nike Airforce 1', 45000, 45000, 4.0),
                                  buildProductCard('assets/images/highheel.png',
                                      'Nike Airforce 1', 45000, 45000, 4.0),
                                  buildProductCard(
                                      'assets/images/circlechain.png',
                                      'Nike Airforce 1',
                                      45000,
                                      45000,
                                      4.0),
                                  buildProductCard('assets/images/lipstick.png',
                                      'Nike Airforce 1', 45000, 45000, 4.0),
                                  buildProductCard('assets/images/chain2.png',
                                      'Nike Airforce 1', 45000, 45000, 4.0),
                                  buildProductCard('assets/images/case.png',
                                      'Nike Airforce 1', 45000, 45000, 4.0),
                                  buildProductCard('assets/images/highheel.png',
                                      'Nike Airforce 1', 45000, 45000, 4.0),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Gap(50),
                      Container(
                        height: 440,
                        width: 1214,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: const Color(0xffF5F5F5),
                        ),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 29, vertical: 31),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Top Brands',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff06244A),
                              ),
                            ),
                            const SizedBox(height: 20),
                            Expanded(
                              child: GridView.count(
                                crossAxisCount: 6,
                                crossAxisSpacing: 16,
                                mainAxisSpacing: 16,
                                childAspectRatio: 1.2,
                                shrinkWrap: false,
                                physics: const NeverScrollableScrollPhysics(),
                                children: [
                                  buildBrandCard('assets/images/adidashoe.png',
                                      'assets/images/adidaslogo.png'),
                                  buildBrandCard('assets/images/nikeshoe.png',
                                      'assets/images/nikelogo.png'),
                                  buildBrandCard('assets/images/iphone.png',
                                      'assets/images/applelogo.png'),
                                  buildBrandCard('assets/images/pumashoe.png',
                                      'assets/images/pumalogo.png'),
                                  buildBrandCard('assets/images/lgtv.png',
                                      'assets/images/lglogo.png'),
                                  buildBrandCard('assets/images/samsung.png',
                                      'assets/images/samsunglogo.png'),
                                  buildBrandCard('assets/images/tecno.png',
                                      'assets/images/tecnologo.png'),
                                  buildBrandCard('assets/images/huawei.png',
                                      'assets/images/huaweilogo.png'),
                                  buildBrandCard('assets/images/oraimo.png',
                                      'assets/images/oraimologo.png'),
                                  buildBrandCard('assets/images/adidashoe.png',
                                      'assets/images/adidaslogo.png'),
                                  buildBrandCard('assets/images/lgtv.png',
                                      'assets/images/lglogo.png'),
                                  buildBrandCard('assets/images/adidashoe.png',
                                      'assets/images/adidaslogo.png'),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Gap(60),
                      Container(
                        height: 420,
                        width: width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: const Color(0xffF9D5D2),
                        ),
                        padding: const EdgeInsets.only(left: 29, top: 31),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  'Best Home Appliance Deals',
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xff06244A),
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {
                                    // Handle "See All" action
                                  },
                                  child: const Row(
                                    children: [
                                      Text(
                                        'See All',
                                        style: TextStyle(
                                          color: Color(0xff3A3A3A),
                                          decoration: TextDecoration.underline,
                                        ),
                                      ),
                                      Icon(Icons.arrow_forward,
                                          size: 16, color: Color(0xff3A3A3A)),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 20),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  buildProductCard('assets/images/oilperf.png',
                                      'Nike Airforce 1', 45000, 45000, 4.0),
                                  buildProductCard('assets/images/top.png',
                                      'Nike Airforce 1', 45000, 45000, 4.0),
                                  buildProductCard(
                                      'assets/images/screwchain.png',
                                      'Nike Airforce 1',
                                      45000,
                                      45000,
                                      4.0),
                                  buildProductCard('assets/images/cloth.png',
                                      'Nike Airforce 1', 45000, 45000, 4.0),
                                  buildProductCard('assets/images/chair.png',
                                      'Nike Airforce 1', 45000, 45000, 4.0),
                                  buildProductCard('assets/images/oilperf.png',
                                      'Nike Airforce 1', 45000, 45000, 4.0),
                                  buildProductCard('assets/images/top.png',
                                      'Nike Airforce 1', 45000, 45000, 4.0),
                                  buildProductCard(
                                      'assets/images/screwchain.png',
                                      'Nike Airforce 1',
                                      45000,
                                      45000,
                                      4.0),
                                  buildProductCard('assets/images/cloth.png',
                                      'Nike Airforce 1', 45000, 45000, 4.0),
                                  buildProductCard('assets/images/chair.png',
                                      'Nike Airforce 1', 45000, 45000, 4.0),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const Gap(50),
                Container(
                  color: const Color(0xff06244A),
                  padding:
                      const EdgeInsets.symmetric(vertical: 50, horizontal: 70),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 2,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    SvgPicture.asset('assets/icons/logo.svg',
                                        color: Colors.white),
                                    const SizedBox(width: 10),
                                    const Text(
                                      'Swingsxstore',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                const Text(
                                  'Swingsxstore is an online ecommerce platform. is an online \necommerce platform. Swingsxstore is an online platform. \nSwingsxstore is an online ecommerce platform Swingsxstore is \nan online ecommerce platform. Swingsxstore is an online \necommerce platform.',
                                  style: TextStyle(color: Colors.white),
                                ),
                                const SizedBox(height: 20),
                                Row(
                                  children: [
                                    InkWell(
                                      onTap: () {},
                                      child: SvgPicture.asset(
                                        'assets/icons/facebook.svg',
                                        height: 30,
                                        width: 30,
                                      ),
                                    ),
                                    const Gap(20),
                                    InkWell(
                                      onTap: () {},
                                      child: SvgPicture.asset(
                                          'assets/icons/linkedIn.svg',
                                          height: 30,
                                          width: 30),
                                    ),
                                    const Gap(20),
                                    InkWell(
                                      onTap: () {},
                                      child: SvgPicture.asset(
                                          'assets/icons/instagram.svg',
                                          height: 30,
                                          width: 30),
                                    ),
                                    const Gap(20),
                                    InkWell(
                                      onTap: () {},
                                      child: SvgPicture.asset(
                                          'assets/icons/twitter.svg',
                                          height: 30,
                                          width: 30),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                TextButton(
                                  onPressed: () {},
                                  child: const Text(
                                    'Info',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: TextButton(
                                    onPressed: () {},
                                    child: const Text(
                                      'About Us',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: const Text(
                                    'Promotions',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: const Text(
                                    'Terms of Use',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: const Text('Privacy Policy',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400)),
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: const Text('Help',
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Color(0xffFFFFFF),
                                          fontWeight: FontWeight.w400)),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: footerColumn('Categories', [
                              'Fashion',
                              'Electronics',
                              'Skin Care',
                              'Sports',
                              'Groceries',
                            ]),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TextButton(
                                  onPressed: () {},
                                  child: const Text(
                                    'Contact Us',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 20),
                                Row(
                                  children: [
                                    const Icon(Icons.email_outlined,
                                        color: Colors.white),
                                    const SizedBox(width: 10),
                                    TextButton(
                                      onPressed: () {},
                                      child: const Text(
                                        'support@swingsxstore.com',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 10),
                                Row(
                                  children: [
                                    const Icon(Icons.phone_outlined,
                                        color: Colors.white),
                                    const SizedBox(width: 10),
                                    TextButton(
                                      onPressed: () {},
                                      child: const Text(
                                        '08000000000 Calls only',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        '© 2024 Swingxstore',
                        style: TextStyle(color: Colors.white70),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      tabletBody: Scaffold(
        backgroundColor: const Color(0xffFFFFFF),
        appBar: AppBar(
          backgroundColor: const Color(0xff06244A),
          toolbarHeight: 80,
          title: Padding(
            padding:
                const EdgeInsets.only(left: 10, top: 24, bottom: 24, right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset('assets/icons/logo.svg'),
                const Gap(8),
                const Text(
                  'Swingsxtore',
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Color(0xffFFFFFF),
                  ),
                ),
                const Gap(112),
                SearchBoy(
                  width: 457,
                  hintText: 'Search for a product',
                  controller: _searchController,
                ),
                const Gap(148),
                SizedBox(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20, bottom: 20),
                    child: Row(
                      children: [
                        SvgPicture.asset('assets/icons/Vector.svg'),
                        Column(
                          children: [
                            const Text(
                              'Hello,',
                              style: TextStyle(
                                fontFamily: 'Inter',
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Color(0xffFFFFFF),
                              ),
                            ),
                            Row(
                              children: [
                                TextButton(
                                  onPressed: () {},
                                  child: const Text(
                                    'Sign in / Sign up',
                                    style: TextStyle(
                                      fontFamily: 'Inter',
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xffFFFFFF),
                                    ),
                                  ),
                                ),
                                SvgPicture.asset(
                                  'assets/icons/keyboard_arrow_down.svg',
                                  color: const Color(0xffFFFFFF),
                                )
                              ],
                            ),
                          ],
                        ),
                        const Gap(16),
                        Padding(
                          padding: const EdgeInsets.only(top: 4, left: 12),
                          child: Row(
                            children: [
                              SvgPicture.asset(
                                  'assets/icons/notifications.svg'),
                              const Gap(16),
                              SvgPicture.asset(
                                  'assets/icons/shopping_cart.svg'),
                              const Gap(4),
                              const Text(
                                'Cart',
                                style: TextStyle(
                                  fontFamily: 'Inter',
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xffFFFFFF),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        body: SizedBox(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  child: Container(
                    color: const Color(0xff041C3B),
                    height: 64,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 80, right: 80),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          DropdownDesign(
                              options: category,
                              onSelectionChanged: handleSelectChange,
                              width: 216,
                              hintText: 'All Categories'),
                          const Gap(83),
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              'Fashion',
                              style: TextStyle(
                                fontFamily: 'Inter',
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color(0xffFFFFFF),
                              ),
                            ),
                          ),
                          const Gap(30),
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              'Electronics',
                              style: TextStyle(
                                fontFamily: 'Inter',
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color(0xffFFFFFF),
                              ),
                            ),
                          ),
                          const Gap(30),
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              'Skin Care',
                              style: TextStyle(
                                fontFamily: 'Inter',
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color(0xffFFFFFF),
                              ),
                            ),
                          ),
                          const Gap(30),
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              'Home Appliances',
                              style: TextStyle(
                                fontFamily: 'Inter',
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color(0xffFFFFFF),
                              ),
                            ),
                          ),
                          const Gap(30),
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              'Sports',
                              style: TextStyle(
                                fontFamily: 'Inter',
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color(0xffFFFFFF),
                              ),
                            ),
                          ),
                          const Gap(30),
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              'Groceries',
                              style: TextStyle(
                                fontFamily: 'Inter',
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color(0xffFFFFFF),
                              ),
                            ),
                          ),
                          const Gap(30),
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              'Others',
                              style: TextStyle(
                                fontFamily: 'Inter',
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color(0xffFFFFFF),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const Gap(40),
                Padding(
                  padding: const EdgeInsets.only(left: 80, right: 80),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 328,
                        width: 802,
                        decoration: BoxDecoration(
                          color: const Color(0xffFCBA01),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        //  children: [
                        //   Image.asset('assets/images/Rectangle1.png'),
                        //   Image.asset('assets/images/Rectangle2.png'),
                        //   Image.asset('assets/images/Rectangle3.png'),
                        // ],

                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 51, left: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Discover Endless\nStyle & Brands',
                                    style: TextStyle(
                                      fontFamily: 'Inter',
                                      fontSize: 36,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                  const SizedBox(height: 16),
                                  const Text(
                                    'Shop the Latest Trends and Timeless\nClassics at swingxstore!',
                                    style: TextStyle(
                                        fontFamily: 'Inter',
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xff000000)),
                                  ),
                                  const SizedBox(height: 16),
                                  ElevatedButton(
                                    onPressed: () {
                                      // Add your shop now functionality here
                                    },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.red,
                                      foregroundColor: Colors.white,
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 24, vertical: 12),
                                    ),
                                    child: const Row(
                                      children: [
                                        Text(
                                          'Shop Now',
                                          style: TextStyle(fontSize: 16),
                                        ),
                                        Icon(Icons.arrow_upward,
                                            color: Colors.white, size: 16),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Image.asset(
                              'assets/images/ladyshopping.png',
                              height: 500,
                              width: 454,
                            ),
                          ],
                        ),
                      ),
                      const Gap(16),
                      Column(
                        children: [
                          Container(
                            height: 156,
                            width: 390,
                            decoration: BoxDecoration(
                              color: const Color(0xffFFF9E0),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20, top: 19),
                              child: Column(
                                children: [
                                  InkWell(
                                    onTap: () {},
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 20),
                                          child: Image.asset(
                                              'assets/images/phone.png'),
                                        ),
                                        const Gap(16),
                                        const Column(
                                          children: [
                                            SelectableText(
                                              'CALL TO ORDER',
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w500,
                                                  color: Color(0xff000000)),
                                            ),
                                            Text(
                                              '081-234-5678',
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w400),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  const Gap(20),
                                  InkWell(
                                    onTap: () {},
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 20),
                                          child: Image.asset(
                                              'assets/images/store.png'),
                                        ),
                                        const Gap(16),
                                        const Column(
                                          children: [
                                            SelectableText(
                                              'NEED HELP ASAP?',
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w500,
                                                  color: Color(0xff000000)),
                                            ),
                                            Text(
                                              'Speak to an agent',
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w400),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const Gap(16),
                          Container(
                            height: 156,
                            width: 390,
                            decoration: BoxDecoration(
                              color: const Color(0xffDBAFD4),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Row(
                              children: [
                                Image.asset('assets/images/boot.png'),
                                const Padding(
                                  padding: EdgeInsets.only(left: 15, top: 33),
                                  child: Column(
                                    children: [
                                      Text(
                                        'Trendy Sneakers',
                                        style: TextStyle(
                                          fontSize: 24,
                                          fontStyle: FontStyle.italic,
                                          shadows: [
                                            Shadow(
                                              color: Color(0x40000000),
                                              blurRadius: 4.0,
                                              offset: Offset(0, 4.0),
                                            ),
                                          ],
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xffAFDBB6),
                                        ),
                                      ),
                                      Text(
                                        'JUST FOR YOU',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600,
                                            color: Color(0xffFFFFFF)),
                                      ),
                                      Text(
                                        'AND YOU ALONE!',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600,
                                            color: Color(0xff000000)),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const Gap(30),
                Padding(
                  padding: const EdgeInsets.only(left: 80, right: 80),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Explore Popular Categories',
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                              color: Color(0xff06244A),
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              // Handle "See All" action
                            },
                            child: const Row(
                              children: [
                                Text(
                                  'See All',
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    color: Color(0xff3A3A3A),
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                                Icon(Icons.arrow_forward,
                                    size: 16, color: Color(0xff3A3A3A)),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const Gap(32),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                SizedBox(
                                  height: 160,
                                  width: 120,
                                  child: Image.asset(
                                    'assets/images/ElipseShoe.png',
                                    height: 100,
                                  ),
                                ),
                                const Text(
                                  'Sneakers',
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff06244A),
                                  ),
                                )
                              ],
                            ),
                            const Gap(40),
                            Column(
                              children: [
                                SizedBox(
                                  height: 160,
                                  width: 120,
                                  child: Image.asset(
                                    'assets/images/bagpic.png',
                                    height: 100,
                                  ),
                                ),
                                const Text(
                                  'Hand bags',
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff06244A),
                                  ),
                                )
                              ],
                            ),
                            const Gap(40),
                            Column(
                              children: [
                                SizedBox(
                                  height: 160,
                                  width: 120,
                                  child: Image.asset(
                                    'assets/images/picture.png',
                                    height: 100,
                                  ),
                                ),
                                const Text(
                                  'Phones & Tablet',
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff06244A),
                                  ),
                                )
                              ],
                            ),
                            const Gap(40),
                            Column(
                              children: [
                                SizedBox(
                                  height: 160,
                                  width: 120,
                                  child: Image.asset(
                                    'assets/images/skinpic.png',
                                    height: 100,
                                  ),
                                ),
                                const Text(
                                  'Skincare',
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff06244A),
                                  ),
                                ),
                              ],
                            ),
                            const Gap(40),
                            Column(
                              children: [
                                SizedBox(
                                  height: 160,
                                  width: 120,
                                  child: Image.asset(
                                    'assets/images/chairpic.png',
                                    height: 100,
                                  ),
                                ),
                                const Text(
                                  'Furniture',
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff06244A),
                                  ),
                                ),
                              ],
                            ),
                            const Gap(40),
                            Column(
                              children: [
                                SizedBox(
                                  height: 160,
                                  width: 120,
                                  child: Image.asset(
                                    'assets/images/jewelpic.png',
                                    height: 100,
                                  ),
                                ),
                                const Text(
                                  'Jewelry',
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff06244A),
                                  ),
                                ),
                              ],
                            ),
                            const Gap(40),
                            Column(
                              children: [
                                SizedBox(
                                  height: 160,
                                  width: 120,
                                  child: Image.asset(
                                    'assets/images/grocerypic.png',
                                    height: 100,
                                  ),
                                ),
                                const Text(
                                  'Groceries',
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff06244A),
                                  ),
                                ),
                              ],
                            ),
                            const Gap(40),
                            Column(
                              children: [
                                SizedBox(
                                  height: 160,
                                  width: 120,
                                  child: Image.asset(
                                    'assets/images/ElipseShoe.png',
                                    height: 100,
                                  ),
                                ),
                                const Text(
                                  'Sneakers',
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff06244A),
                                  ),
                                )
                              ],
                            ),
                            const Gap(40),
                            Column(
                              children: [
                                SizedBox(
                                  height: 160,
                                  width: 120,
                                  child: Image.asset(
                                    'assets/images/bagpic.png',
                                    height: 100,
                                  ),
                                ),
                                const Text(
                                  'Hand bags',
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff06244A),
                                  ),
                                )
                              ],
                            ),
                            const Gap(40),
                            Column(
                              children: [
                                SizedBox(
                                  height: 160,
                                  width: 120,
                                  child: Image.asset(
                                    'assets/images/picture.png',
                                    height: 100,
                                  ),
                                ),
                                const Text(
                                  'Phones & Tablet',
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff06244A),
                                  ),
                                )
                              ],
                            ),
                            const Gap(40),
                            Column(
                              children: [
                                SizedBox(
                                  height: 160,
                                  width: 120,
                                  child: Image.asset(
                                    'assets/images/skinpic.png',
                                    height: 100,
                                  ),
                                ),
                                const Text(
                                  'Skincare',
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff06244A),
                                  ),
                                ),
                              ],
                            ),
                            const Gap(40),
                            Column(
                              children: [
                                SizedBox(
                                  height: 160,
                                  width: 120,
                                  child: Image.asset(
                                    'assets/images/chairpic.png',
                                    height: 100,
                                  ),
                                ),
                                const Text(
                                  'Furniture',
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff06244A),
                                  ),
                                ),
                              ],
                            ),
                            const Gap(40),
                            Column(
                              children: [
                                SizedBox(
                                  height: 160,
                                  width: 120,
                                  child: Image.asset(
                                    'assets/images/jewelpic.png',
                                    height: 100,
                                  ),
                                ),
                                const Text(
                                  'Jewelry',
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff06244A),
                                  ),
                                ),
                              ],
                            ),
                            const Gap(40),
                            Column(
                              children: [
                                SizedBox(
                                  height: 160,
                                  width: 120,
                                  child: Image.asset(
                                    'assets/images/grocerypic.png',
                                    height: 100,
                                  ),
                                ),
                                const Text(
                                  'Groceries',
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff06244A),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const Gap(50),
                      Container(
                        height: 420,
                        width: width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: const Color(0xffE3F2FD),
                        ),
                        padding: const EdgeInsets.only(left: 29, top: 31),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  'Best Selling Items',
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xff06244A),
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {
                                    // Handle "See All" action
                                  },
                                  child: const Row(
                                    children: [
                                      Text(
                                        'See All',
                                        style: TextStyle(
                                          color: Color(0xff3A3A3A),
                                          decoration: TextDecoration.underline,
                                        ),
                                      ),
                                      Icon(Icons.arrow_forward,
                                          size: 16, color: Color(0xff3A3A3A)),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 20),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  buildProductCard('assets/images/fendi.png',
                                      'Nike Airforce 1', 45000, 45000, 4.0),
                                  buildProductCard('assets/images/skincare.png',
                                      'Nike Airforce 1', 45000, 45000, 4.0),
                                  buildProductCard('assets/images/bracelet.png',
                                      'Nike Airforce 1', 45000, 45000, 4.0),
                                  buildProductCard('assets/images/shoe.png',
                                      'Nike Airforce 1', 45000, 45000, 4.0),
                                  buildProductCard('assets/images/heelshoe.png',
                                      'Nike Airforce 1', 45000, 45000, 4.0),
                                  buildProductCard('assets/images/fendi.png',
                                      'Nike Airforce 1', 45000, 45000, 4.0),
                                  buildProductCard('assets/images/skincare.png',
                                      'Nike Airforce 1', 45000, 45000, 4.0),
                                  buildProductCard('assets/images/bracelet.png',
                                      'Nike Airforce 1', 45000, 45000, 4.0),
                                  buildProductCard('assets/images/shoe.png',
                                      'Nike Airforce 1', 45000, 45000, 4.0),
                                  buildProductCard('assets/images/heelshoe.png',
                                      'Nike Airforce 1', 45000, 45000, 4.0),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Gap(60),
                      Container(
                        height: 420,
                        width: width,
                        decoration: BoxDecoration(
                          color: const Color(0xffFFF8E1),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        padding: const EdgeInsets.only(left: 29, top: 31),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  'Top Deals For You',
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xff06244A),
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {
                                    // Handle "See All" action
                                  },
                                  child: const Row(
                                    children: [
                                      Text(
                                        'See All',
                                        style: TextStyle(
                                          color: Color(0xff3A3A3A),
                                          decoration: TextDecoration.underline,
                                        ),
                                      ),
                                      Icon(Icons.arrow_forward,
                                          size: 16, color: Color(0xff3A3A3A)),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 20),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  buildProductCard('assets/images/lipstick.png',
                                      'Nike Airforce 1', 45000, 45000, 4.0),
                                  buildProductCard('assets/images/chain.png',
                                      'Nike Airforce 1', 45000, 45000, 4.0),
                                  buildProductCard('assets/images/perfume.png',
                                      'Nike Airforce 1', 45000, 45000, 4.0),
                                  buildProductCard('assets/images/shirt.png',
                                      'Nike Airforce 1', 45000, 45000, 4.0),
                                  buildProductCard('assets/images/perf2.png',
                                      'Nike Airforce 1', 45000, 45000, 4.0),
                                  buildProductCard('assets/images/lipstick.png',
                                      'Nike Airforce 1', 45000, 45000, 4.0),
                                  buildProductCard('assets/images/chain.png',
                                      'Nike Airforce 1', 45000, 45000, 4.0),
                                  buildProductCard('assets/images/perfume.png',
                                      'Nike Airforce 1', 45000, 45000, 4.0),
                                  buildProductCard('assets/images/shirt.png',
                                      'Nike Airforce 1', 45000, 45000, 4.0),
                                  buildProductCard('assets/images/perf2.png',
                                      'Nike Airforce 1', 45000, 45000, 4.0),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Gap(48),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 280,
                            width: 596,
                            decoration: BoxDecoration(
                              color: const Color(0xff4CAF50),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            padding: const EdgeInsets.only(left: 25, top: 62),
                            child: Row(
                              children: [
                                Column(
                                  children: [
                                    RichText(
                                      text: const TextSpan(
                                        style: TextStyle(
                                            fontSize: 36,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.black),
                                        children: [
                                          TextSpan(text: 'Get Up to '),
                                          TextSpan(
                                            text: '30%',
                                            style:
                                                TextStyle(color: Colors.yellow),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const Text(
                                      'Off New Arrivals',
                                      style: TextStyle(
                                          fontSize: 36,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                    ),
                                    const SizedBox(height: 20),
                                    ElevatedButton(
                                      onPressed: () {
                                        // Add shop now functionality
                                      },
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: const Color(
                                            0xFF3E2723), // Dark brown color

                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                      ),
                                      child: const Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Text('Shop Now',
                                              style: TextStyle(
                                                  color: Colors.white)),
                                          SizedBox(width: 8),
                                          Icon(Icons.arrow_forward,
                                              color: Colors.white, size: 16),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                const Gap(1),
                                SizedBox(
                                  height: 600,
                                  child: Image.asset('assets/images/girls.png'),
                                )
                              ],
                            ),
                          ),
                          const Gap(20),
                          Container(
                            height: 280,
                            width: 590,
                            decoration: BoxDecoration(
                              color: const Color(0xff4CAF50),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            padding: const EdgeInsets.only(left: 25, top: 62),
                            child: Row(
                              children: [
                                Column(
                                  children: [
                                    RichText(
                                      text: const TextSpan(
                                        style: TextStyle(
                                            fontSize: 36,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.black),
                                        children: [
                                          TextSpan(text: 'Earn Yourself a'),
                                        ],
                                      ),
                                    ),
                                    const Text(
                                      'Surprise Gift!',
                                      style: TextStyle(
                                          fontSize: 36,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.yellow),
                                    ),
                                    const SizedBox(height: 20),
                                    ElevatedButton(
                                      onPressed: () {
                                        // Add shop now functionality
                                      },
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: const Color(
                                            0xFF3E2723), // Dark brown color

                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                      ),
                                      child: const Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Text('Shop Now',
                                              style: TextStyle(
                                                  color: Colors.white)),
                                          SizedBox(width: 8),
                                          Icon(Icons.arrow_forward,
                                              color: Colors.white, size: 16),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                const Gap(1),
                                SizedBox(
                                  height: 600,
                                  child: Image.asset('assets/images/guy.png'),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      const Gap(60),
                      Container(
                        height: 420,
                        width: width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: const Color(0xffDFF0D8),
                        ),
                        padding: const EdgeInsets.only(left: 29, top: 31),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  'New Arrivals',
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xff06244A),
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {
                                    // Handle "See All" action
                                  },
                                  child: const Row(
                                    children: [
                                      Text(
                                        'See All',
                                        style: TextStyle(
                                          color: Color(0xff3A3A3A),
                                          decoration: TextDecoration.underline,
                                        ),
                                      ),
                                      Icon(Icons.arrow_forward,
                                          size: 16, color: Color(0xff3A3A3A)),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 20),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  buildProductCard('assets/images/heelrope.png',
                                      'Nike Airforce 1', 45000, 45000, 4.0),
                                  buildProductCard('assets/images/bag.png',
                                      'Nike Airforce 1', 45000, 45000, 4.0),
                                  buildProductCard(
                                      'assets/images/wristchain.png',
                                      'Nike Airforce 1',
                                      45000,
                                      45000,
                                      4.0),
                                  buildProductCard('assets/images/chair.png',
                                      'Nike Airforce 1', 45000, 45000, 4.0),
                                  buildProductCard(
                                      'assets/images/neckchain.png',
                                      'Nike Airforce 1',
                                      45000,
                                      45000,
                                      4.0),
                                  buildProductCard('assets/images/heelrope.png',
                                      'Nike Airforce 1', 45000, 45000, 4.0),
                                  buildProductCard('assets/images/bag.png',
                                      'Nike Airforce 1', 45000, 45000, 4.0),
                                  buildProductCard(
                                      'assets/images/wristchain.png',
                                      'Nike Airforce 1',
                                      45000,
                                      45000,
                                      4.0),
                                  buildProductCard('assets/images/chair.png',
                                      'Nike Airforce 1', 45000, 45000, 4.0),
                                  buildProductCard(
                                      'assets/images/neckchain.png',
                                      'Nike Airforce 1',
                                      45000,
                                      45000,
                                      4.0),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Gap(60),
                      Container(
                        height: 420,
                        width: width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: const Color(0xffECF4FD),
                        ),
                        padding: const EdgeInsets.only(left: 29, top: 31),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  'Luxury Brands',
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xff06244A),
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {
                                    // Handle "See All" action
                                  },
                                  child: const Row(
                                    children: [
                                      Text(
                                        'See All',
                                        style: TextStyle(
                                          color: Color(0xff3A3A3A),
                                          decoration: TextDecoration.underline,
                                        ),
                                      ),
                                      Icon(Icons.arrow_forward,
                                          size: 16, color: Color(0xff3A3A3A)),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 20),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  buildProductCard(
                                      'assets/images/circlechain.png',
                                      'Nike Airforce 1',
                                      45000,
                                      45000,
                                      4.0),
                                  buildProductCard('assets/images/lipstick.png',
                                      'Nike Airforce 1', 45000, 45000, 4.0),
                                  buildProductCard('assets/images/chain2.png',
                                      'Nike Airforce 1', 45000, 45000, 4.0),
                                  buildProductCard('assets/images/case.png',
                                      'Nike Airforce 1', 45000, 45000, 4.0),
                                  buildProductCard('assets/images/highheel.png',
                                      'Nike Airforce 1', 45000, 45000, 4.0),
                                  buildProductCard(
                                      'assets/images/circlechain.png',
                                      'Nike Airforce 1',
                                      45000,
                                      45000,
                                      4.0),
                                  buildProductCard('assets/images/lipstick.png',
                                      'Nike Airforce 1', 45000, 45000, 4.0),
                                  buildProductCard('assets/images/chain2.png',
                                      'Nike Airforce 1', 45000, 45000, 4.0),
                                  buildProductCard('assets/images/case.png',
                                      'Nike Airforce 1', 45000, 45000, 4.0),
                                  buildProductCard('assets/images/highheel.png',
                                      'Nike Airforce 1', 45000, 45000, 4.0),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Gap(50),
                      Container(
                        height: 440,
                        width: 1214,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: const Color(0xffF5F5F5),
                        ),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 29, vertical: 31),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Top Brands',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff06244A),
                              ),
                            ),
                            const SizedBox(height: 20),
                            Expanded(
                              child: GridView.count(
                                crossAxisCount: 6,
                                crossAxisSpacing: 16,
                                mainAxisSpacing: 16,
                                childAspectRatio: 1.2,
                                shrinkWrap: false,
                                physics: const NeverScrollableScrollPhysics(),
                                children: [
                                  buildBrandCard('assets/images/adidashoe.png',
                                      'assets/images/adidaslogo.png'),
                                  buildBrandCard('assets/images/nikeshoe.png',
                                      'assets/images/nikelogo.png'),
                                  buildBrandCard('assets/images/iphone.png',
                                      'assets/images/applelogo.png'),
                                  buildBrandCard('assets/images/pumashoe.png',
                                      'assets/images/pumalogo.png'),
                                  buildBrandCard('assets/images/lgtv.png',
                                      'assets/images/lglogo.png'),
                                  buildBrandCard('assets/images/samsung.png',
                                      'assets/images/samsunglogo.png'),
                                  buildBrandCard('assets/images/tecno.png',
                                      'assets/images/tecnologo.png'),
                                  buildBrandCard('assets/images/huawei.png',
                                      'assets/images/huaweilogo.png'),
                                  buildBrandCard('assets/images/oraimo.png',
                                      'assets/images/oraimologo.png'),
                                  buildBrandCard('assets/images/adidashoe.png',
                                      'assets/images/adidaslogo.png'),
                                  buildBrandCard('assets/images/lgtv.png',
                                      'assets/images/lglogo.png'),
                                  buildBrandCard('assets/images/adidashoe.png',
                                      'assets/images/adidaslogo.png'),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Gap(60),
                      Container(
                        height: 420,
                        width: width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: const Color(0xffF9D5D2),
                        ),
                        padding: const EdgeInsets.only(left: 29, top: 31),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  'Best Home Appliance Deals',
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xff06244A),
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {
                                    // Handle "See All" action
                                  },
                                  child: const Row(
                                    children: [
                                      Text(
                                        'See All',
                                        style: TextStyle(
                                          color: Color(0xff3A3A3A),
                                          decoration: TextDecoration.underline,
                                        ),
                                      ),
                                      Icon(Icons.arrow_forward,
                                          size: 16, color: Color(0xff3A3A3A)),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 20),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  buildProductCard('assets/images/oilperf.png',
                                      'Nike Airforce 1', 45000, 45000, 4.0),
                                  buildProductCard('assets/images/top.png',
                                      'Nike Airforce 1', 45000, 45000, 4.0),
                                  buildProductCard(
                                      'assets/images/screwchain.png',
                                      'Nike Airforce 1',
                                      45000,
                                      45000,
                                      4.0),
                                  buildProductCard('assets/images/cloth.png',
                                      'Nike Airforce 1', 45000, 45000, 4.0),
                                  buildProductCard('assets/images/chair.png',
                                      'Nike Airforce 1', 45000, 45000, 4.0),
                                  buildProductCard('assets/images/oilperf.png',
                                      'Nike Airforce 1', 45000, 45000, 4.0),
                                  buildProductCard('assets/images/top.png',
                                      'Nike Airforce 1', 45000, 45000, 4.0),
                                  buildProductCard(
                                      'assets/images/screwchain.png',
                                      'Nike Airforce 1',
                                      45000,
                                      45000,
                                      4.0),
                                  buildProductCard('assets/images/cloth.png',
                                      'Nike Airforce 1', 45000, 45000, 4.0),
                                  buildProductCard('assets/images/chair.png',
                                      'Nike Airforce 1', 45000, 45000, 4.0),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const Gap(50),
                Container(
                  color: const Color(0xff06244A),
                  padding:
                      const EdgeInsets.symmetric(vertical: 50, horizontal: 70),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 2,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    SvgPicture.asset('assets/icons/logo.svg',
                                        color: Colors.white),
                                    const SizedBox(width: 10),
                                    const Text(
                                      'Swingsxstore',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                const Text(
                                  'Swingsxstore is an online ecommerce platform. is an online \necommerce platform. Swingsxstore is an online platform. \nSwingsxstore is an online ecommerce platform Swingsxstore is \nan online ecommerce platform. Swingsxstore is an online \necommerce platform.',
                                  style: TextStyle(color: Colors.white),
                                ),
                                const SizedBox(height: 20),
                                Row(
                                  children: [
                                    InkWell(
                                      onTap: () {},
                                      child: SvgPicture.asset(
                                        'assets/icons/facebook.svg',
                                        height: 30,
                                        width: 30,
                                      ),
                                    ),
                                    const Gap(20),
                                    InkWell(
                                      onTap: () {},
                                      child: SvgPicture.asset(
                                          'assets/icons/linkedIn.svg',
                                          height: 30,
                                          width: 30),
                                    ),
                                    const Gap(20),
                                    InkWell(
                                      onTap: () {},
                                      child: SvgPicture.asset(
                                          'assets/icons/instagram.svg',
                                          height: 30,
                                          width: 30),
                                    ),
                                    const Gap(20),
                                    InkWell(
                                      onTap: () {},
                                      child: SvgPicture.asset(
                                          'assets/icons/twitter.svg',
                                          height: 30,
                                          width: 30),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                TextButton(
                                  onPressed: () {},
                                  child: const Text(
                                    'Info',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: TextButton(
                                    onPressed: () {},
                                    child: const Text(
                                      'About Us',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: const Text(
                                    'Promotions',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: const Text(
                                    'Terms of Use',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: const Text('Privacy Policy',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400)),
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: const Text('Help',
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Color(0xffFFFFFF),
                                          fontWeight: FontWeight.w400)),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: footerColumn('Categories', [
                              'Fashion',
                              'Electronics',
                              'Skin Care',
                              'Sports',
                              'Groceries',
                            ]),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TextButton(
                                  onPressed: () {},
                                  child: const Text(
                                    'Contact Us',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 20),
                                Row(
                                  children: [
                                    const Icon(Icons.email_outlined,
                                        color: Colors.white),
                                    const SizedBox(width: 10),
                                    TextButton(
                                      onPressed: () {},
                                      child: const Text(
                                        'support@swingsxstore.com',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 10),
                                Row(
                                  children: [
                                    const Icon(Icons.phone_outlined,
                                        color: Colors.white),
                                    const SizedBox(width: 10),
                                    TextButton(
                                      onPressed: () {},
                                      child: const Text(
                                        '08000000000 Calls only',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        '© 2024 Swingxstore',
                        style: TextStyle(color: Colors.white70),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      desktopBody: Scaffold(
        backgroundColor: const Color(0xffFFFFFF),
        appBar: AppBar(
          backgroundColor: const Color(0xff06244A),
          toolbarHeight: 80,
          title: Padding(
            padding:
                const EdgeInsets.only(left: 10, top: 24, bottom: 24, right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset('assets/icons/logo.svg'),
                const Gap(8),
                const Text(
                  'Swingsxtore',
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Color(0xffFFFFFF),
                  ),
                ),
                const Gap(112),
                SearchBoy(
                  width: 457,
                  hintText: 'Search for a product',
                  controller: _searchController,
                ),
                const Gap(148),
                SizedBox(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20, bottom: 20),
                    child: Row(
                      children: [
                        SvgPicture.asset('assets/icons/Vector.svg'),
                        Column(
                          children: [
                            const Text(
                              'Hello,',
                              style: TextStyle(
                                fontFamily: 'Inter',
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Color(0xffFFFFFF),
                              ),
                            ),
                            Row(
                              children: [
                                TextButton(
                                  onPressed: () {},
                                  child: const Text(
                                    'Sign in / Sign up',
                                    style: TextStyle(
                                      fontFamily: 'Inter',
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xffFFFFFF),
                                    ),
                                  ),
                                ),
                                SvgPicture.asset(
                                  'assets/icons/keyboard_arrow_down.svg',
                                  color: const Color(0xffFFFFFF),
                                )
                              ],
                            ),
                          ],
                        ),
                        const Gap(16),
                        Padding(
                          padding: const EdgeInsets.only(top: 4, left: 12),
                          child: Row(
                            children: [
                              SvgPicture.asset(
                                  'assets/icons/notifications.svg'),
                              const Gap(16),
                              SvgPicture.asset(
                                  'assets/icons/shopping_cart.svg'),
                              const Gap(4),
                              const Text(
                                'Cart',
                                style: TextStyle(
                                  fontFamily: 'Inter',
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xffFFFFFF),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        body: SizedBox(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  child: Container(
                    color: const Color(0xff041C3B),
                    height: 64,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 80, right: 80),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          DropdownDesign(
                              options: category,
                              onSelectionChanged: handleSelectChange,
                              width: 216,
                              hintText: 'All Categories'),
                          const Gap(83),
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              'Fashion',
                              style: TextStyle(
                                fontFamily: 'Inter',
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color(0xffFFFFFF),
                              ),
                            ),
                          ),
                          const Gap(30),
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              'Electronics',
                              style: TextStyle(
                                fontFamily: 'Inter',
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color(0xffFFFFFF),
                              ),
                            ),
                          ),
                          const Gap(30),
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              'Skin Care',
                              style: TextStyle(
                                fontFamily: 'Inter',
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color(0xffFFFFFF),
                              ),
                            ),
                          ),
                          const Gap(30),
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              'Home Appliances',
                              style: TextStyle(
                                fontFamily: 'Inter',
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color(0xffFFFFFF),
                              ),
                            ),
                          ),
                          const Gap(30),
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              'Sports',
                              style: TextStyle(
                                fontFamily: 'Inter',
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color(0xffFFFFFF),
                              ),
                            ),
                          ),
                          const Gap(30),
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              'Groceries',
                              style: TextStyle(
                                fontFamily: 'Inter',
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color(0xffFFFFFF),
                              ),
                            ),
                          ),
                          const Gap(30),
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              'Others',
                              style: TextStyle(
                                fontFamily: 'Inter',
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color(0xffFFFFFF),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const Gap(40),
                Padding(
                  padding: const EdgeInsets.only(left: 80, right: 80),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 328,
                        width: 802,
                        decoration: BoxDecoration(
                          color: const Color(0xffFCBA01),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        //  children: [
                        //   Image.asset('assets/images/Rectangle1.png'),
                        //   Image.asset('assets/images/Rectangle2.png'),
                        //   Image.asset('assets/images/Rectangle3.png'),
                        // ],

                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 51, left: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Discover Endless\nStyle & Brands',
                                    style: TextStyle(
                                      fontFamily: 'Inter',
                                      fontSize: 36,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                  const SizedBox(height: 16),
                                  const Text(
                                    'Shop the Latest Trends and Timeless\nClassics at swingxstore!',
                                    style: TextStyle(
                                        fontFamily: 'Inter',
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xff000000)),
                                  ),
                                  const SizedBox(height: 16),
                                  ElevatedButton(
                                    onPressed: () {
                                      // Add your shop now functionality here
                                    },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.red,
                                      foregroundColor: Colors.white,
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 24, vertical: 12),
                                    ),
                                    child: const Row(
                                      children: [
                                        Text(
                                          'Shop Now',
                                          style: TextStyle(fontSize: 16),
                                        ),
                                        Icon(Icons.arrow_upward,
                                            color: Colors.white, size: 16),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Image.asset(
                              'assets/images/ladyshopping.png',
                              height: 500,
                              width: 454,
                            ),
                          ],
                        ),
                      ),
                      const Gap(16),
                      Column(
                        children: [
                          Container(
                            height: 156,
                            width: 390,
                            decoration: BoxDecoration(
                              color: const Color(0xffFFF9E0),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20, top: 19),
                              child: Column(
                                children: [
                                  InkWell(
                                    onTap: () {},
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 20),
                                          child: Image.asset(
                                              'assets/images/phone.png'),
                                        ),
                                        const Gap(16),
                                        const Column(
                                          children: [
                                            SelectableText(
                                              'CALL TO ORDER',
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w500,
                                                  color: Color(0xff000000)),
                                            ),
                                            Text(
                                              '081-234-5678',
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w400),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  const Gap(20),
                                  InkWell(
                                    onTap: () {},
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 20),
                                          child: Image.asset(
                                              'assets/images/store.png'),
                                        ),
                                        const Gap(16),
                                        const Column(
                                          children: [
                                            SelectableText(
                                              'NEED HELP ASAP?',
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w500,
                                                  color: Color(0xff000000)),
                                            ),
                                            Text(
                                              'Speak to an agent',
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w400),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const Gap(16),
                          Container(
                            height: 156,
                            width: 390,
                            decoration: BoxDecoration(
                              color: const Color(0xffDBAFD4),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Row(
                              children: [
                                Image.asset('assets/images/boot.png'),
                                const Padding(
                                  padding: EdgeInsets.only(left: 15, top: 33),
                                  child: Column(
                                    children: [
                                      Text(
                                        'Trendy Sneakers',
                                        style: TextStyle(
                                          fontSize: 24,
                                          fontStyle: FontStyle.italic,
                                          shadows: [
                                            Shadow(
                                              color: Color(0x40000000),
                                              blurRadius: 4.0,
                                              offset: Offset(0, 4.0),
                                            ),
                                          ],
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xffAFDBB6),
                                        ),
                                      ),
                                      Text(
                                        'JUST FOR YOU',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600,
                                            color: Color(0xffFFFFFF)),
                                      ),
                                      Text(
                                        'AND YOU ALONE!',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600,
                                            color: Color(0xff000000)),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const Gap(30),
                Padding(
                  padding: const EdgeInsets.only(left: 80, right: 80),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Explore Popular Categories',
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                              color: Color(0xff06244A),
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              // Handle "See All" action
                            },
                            child: const Row(
                              children: [
                                Text(
                                  'See All',
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    color: Color(0xff3A3A3A),
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                                Icon(Icons.arrow_forward,
                                    size: 16, color: Color(0xff3A3A3A)),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const Gap(32),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                SizedBox(
                                  height: 160,
                                  width: 120,
                                  child: Image.asset(
                                    'assets/images/ElipseShoe.png',
                                    height: 100,
                                  ),
                                ),
                                const Text(
                                  'Sneakers',
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff06244A),
                                  ),
                                )
                              ],
                            ),
                            const Gap(40),
                            Column(
                              children: [
                                SizedBox(
                                  height: 160,
                                  width: 120,
                                  child: Image.asset(
                                    'assets/images/bagpic.png',
                                    height: 100,
                                  ),
                                ),
                                const Text(
                                  'Hand bags',
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff06244A),
                                  ),
                                )
                              ],
                            ),
                            const Gap(40),
                            Column(
                              children: [
                                SizedBox(
                                  height: 160,
                                  width: 120,
                                  child: Image.asset(
                                    'assets/images/picture.png',
                                    height: 100,
                                  ),
                                ),
                                const Text(
                                  'Phones & Tablet',
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff06244A),
                                  ),
                                )
                              ],
                            ),
                            const Gap(40),
                            Column(
                              children: [
                                SizedBox(
                                  height: 160,
                                  width: 120,
                                  child: Image.asset(
                                    'assets/images/skinpic.png',
                                    height: 100,
                                  ),
                                ),
                                const Text(
                                  'Skincare',
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff06244A),
                                  ),
                                ),
                              ],
                            ),
                            const Gap(40),
                            Column(
                              children: [
                                SizedBox(
                                  height: 160,
                                  width: 120,
                                  child: Image.asset(
                                    'assets/images/chairpic.png',
                                    height: 100,
                                  ),
                                ),
                                const Text(
                                  'Furniture',
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff06244A),
                                  ),
                                ),
                              ],
                            ),
                            const Gap(40),
                            Column(
                              children: [
                                SizedBox(
                                  height: 160,
                                  width: 120,
                                  child: Image.asset(
                                    'assets/images/jewelpic.png',
                                    height: 100,
                                  ),
                                ),
                                const Text(
                                  'Jewelry',
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff06244A),
                                  ),
                                ),
                              ],
                            ),
                            const Gap(40),
                            Column(
                              children: [
                                SizedBox(
                                  height: 160,
                                  width: 120,
                                  child: Image.asset(
                                    'assets/images/grocerypic.png',
                                    height: 100,
                                  ),
                                ),
                                const Text(
                                  'Groceries',
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff06244A),
                                  ),
                                ),
                              ],
                            ),
                            const Gap(40),
                            Column(
                              children: [
                                SizedBox(
                                  height: 160,
                                  width: 120,
                                  child: Image.asset(
                                    'assets/images/ElipseShoe.png',
                                    height: 100,
                                  ),
                                ),
                                const Text(
                                  'Sneakers',
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff06244A),
                                  ),
                                )
                              ],
                            ),
                            const Gap(40),
                            Column(
                              children: [
                                SizedBox(
                                  height: 160,
                                  width: 120,
                                  child: Image.asset(
                                    'assets/images/bagpic.png',
                                    height: 100,
                                  ),
                                ),
                                const Text(
                                  'Hand bags',
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff06244A),
                                  ),
                                )
                              ],
                            ),
                            const Gap(40),
                            Column(
                              children: [
                                SizedBox(
                                  height: 160,
                                  width: 120,
                                  child: Image.asset(
                                    'assets/images/picture.png',
                                    height: 100,
                                  ),
                                ),
                                const Text(
                                  'Phones & Tablet',
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff06244A),
                                  ),
                                )
                              ],
                            ),
                            const Gap(40),
                            Column(
                              children: [
                                SizedBox(
                                  height: 160,
                                  width: 120,
                                  child: Image.asset(
                                    'assets/images/skinpic.png',
                                    height: 100,
                                  ),
                                ),
                                const Text(
                                  'Skincare',
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff06244A),
                                  ),
                                ),
                              ],
                            ),
                            const Gap(40),
                            Column(
                              children: [
                                SizedBox(
                                  height: 160,
                                  width: 120,
                                  child: Image.asset(
                                    'assets/images/chairpic.png',
                                    height: 100,
                                  ),
                                ),
                                const Text(
                                  'Furniture',
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff06244A),
                                  ),
                                ),
                              ],
                            ),
                            const Gap(40),
                            Column(
                              children: [
                                SizedBox(
                                  height: 160,
                                  width: 120,
                                  child: Image.asset(
                                    'assets/images/jewelpic.png',
                                    height: 100,
                                  ),
                                ),
                                const Text(
                                  'Jewelry',
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff06244A),
                                  ),
                                ),
                              ],
                            ),
                            const Gap(40),
                            Column(
                              children: [
                                SizedBox(
                                  height: 160,
                                  width: 120,
                                  child: Image.asset(
                                    'assets/images/grocerypic.png',
                                    height: 100,
                                  ),
                                ),
                                const Text(
                                  'Groceries',
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff06244A),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const Gap(50),
                      Container(
                        height: 420,
                        width: width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: const Color(0xffE3F2FD),
                        ),
                        padding: const EdgeInsets.only(left: 29, top: 31),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  'Best Selling Items',
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xff06244A),
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {
                                    // Handle "See All" action
                                  },
                                  child: const Row(
                                    children: [
                                      Text(
                                        'See All',
                                        style: TextStyle(
                                          color: Color(0xff3A3A3A),
                                          decoration: TextDecoration.underline,
                                        ),
                                      ),
                                      Icon(Icons.arrow_forward,
                                          size: 16, color: Color(0xff3A3A3A)),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 20),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  buildProductCard('assets/images/fendi.png',
                                      'Nike Airforce 1', 45000, 45000, 4.0),
                                  buildProductCard('assets/images/skincare.png',
                                      'Nike Airforce 1', 45000, 45000, 4.0),
                                  buildProductCard('assets/images/bracelet.png',
                                      'Nike Airforce 1', 45000, 45000, 4.0),
                                  buildProductCard('assets/images/shoe.png',
                                      'Nike Airforce 1', 45000, 45000, 4.0),
                                  buildProductCard('assets/images/heelshoe.png',
                                      'Nike Airforce 1', 45000, 45000, 4.0),
                                  buildProductCard('assets/images/fendi.png',
                                      'Nike Airforce 1', 45000, 45000, 4.0),
                                  buildProductCard('assets/images/skincare.png',
                                      'Nike Airforce 1', 45000, 45000, 4.0),
                                  buildProductCard('assets/images/bracelet.png',
                                      'Nike Airforce 1', 45000, 45000, 4.0),
                                  buildProductCard('assets/images/shoe.png',
                                      'Nike Airforce 1', 45000, 45000, 4.0),
                                  buildProductCard('assets/images/heelshoe.png',
                                      'Nike Airforce 1', 45000, 45000, 4.0),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Gap(60),
                      Container(
                        height: 420,
                        width: width,
                        decoration: BoxDecoration(
                          color: const Color(0xffFFF8E1),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        padding: const EdgeInsets.only(left: 29, top: 31),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  'Top Deals For You',
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xff06244A),
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {
                                    // Handle "See All" action
                                  },
                                  child: const Row(
                                    children: [
                                      Text(
                                        'See All',
                                        style: TextStyle(
                                          color: Color(0xff3A3A3A),
                                          decoration: TextDecoration.underline,
                                        ),
                                      ),
                                      Icon(Icons.arrow_forward,
                                          size: 16, color: Color(0xff3A3A3A)),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 20),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  buildProductCard('assets/images/lipstick.png',
                                      'Nike Airforce 1', 45000, 45000, 4.0),
                                  buildProductCard('assets/images/chain.png',
                                      'Nike Airforce 1', 45000, 45000, 4.0),
                                  buildProductCard('assets/images/perfume.png',
                                      'Nike Airforce 1', 45000, 45000, 4.0),
                                  buildProductCard('assets/images/shirt.png',
                                      'Nike Airforce 1', 45000, 45000, 4.0),
                                  buildProductCard('assets/images/perf2.png',
                                      'Nike Airforce 1', 45000, 45000, 4.0),
                                  buildProductCard('assets/images/lipstick.png',
                                      'Nike Airforce 1', 45000, 45000, 4.0),
                                  buildProductCard('assets/images/chain.png',
                                      'Nike Airforce 1', 45000, 45000, 4.0),
                                  buildProductCard('assets/images/perfume.png',
                                      'Nike Airforce 1', 45000, 45000, 4.0),
                                  buildProductCard('assets/images/shirt.png',
                                      'Nike Airforce 1', 45000, 45000, 4.0),
                                  buildProductCard('assets/images/perf2.png',
                                      'Nike Airforce 1', 45000, 45000, 4.0),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Gap(48),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 280,
                            width: 596,
                            decoration: BoxDecoration(
                              color: const Color(0xff4CAF50),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            padding: const EdgeInsets.only(left: 25, top: 62),
                            child: Row(
                              children: [
                                Column(
                                  children: [
                                    RichText(
                                      text: const TextSpan(
                                        style: TextStyle(
                                            fontSize: 36,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.black),
                                        children: [
                                          TextSpan(text: 'Get Up to '),
                                          TextSpan(
                                            text: '30%',
                                            style:
                                                TextStyle(color: Colors.yellow),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const Text(
                                      'Off New Arrivals',
                                      style: TextStyle(
                                          fontSize: 36,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                    ),
                                    const SizedBox(height: 20),
                                    ElevatedButton(
                                      onPressed: () {
                                        // Add shop now functionality
                                      },
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: const Color(
                                            0xFF3E2723), // Dark brown color

                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                      ),
                                      child: const Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Text('Shop Now',
                                              style: TextStyle(
                                                  color: Colors.white)),
                                          SizedBox(width: 8),
                                          Icon(Icons.arrow_forward,
                                              color: Colors.white, size: 16),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                const Gap(1),
                                SizedBox(
                                  height: 600,
                                  child: Image.asset('assets/images/girls.png'),
                                )
                              ],
                            ),
                          ),
                          const Gap(20),
                          Container(
                            height: 280,
                            width: 590,
                            decoration: BoxDecoration(
                              color: const Color(0xff4CAF50),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            padding: const EdgeInsets.only(left: 25, top: 62),
                            child: Row(
                              children: [
                                Column(
                                  children: [
                                    RichText(
                                      text: const TextSpan(
                                        style: TextStyle(
                                            fontSize: 36,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.black),
                                        children: [
                                          TextSpan(text: 'Earn Yourself a'),
                                        ],
                                      ),
                                    ),
                                    const Text(
                                      'Surprise Gift!',
                                      style: TextStyle(
                                          fontSize: 36,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.yellow),
                                    ),
                                    const SizedBox(height: 20),
                                    ElevatedButton(
                                      onPressed: () {
                                        // Add shop now functionality
                                      },
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: const Color(
                                            0xFF3E2723), // Dark brown color

                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                      ),
                                      child: const Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Text('Shop Now',
                                              style: TextStyle(
                                                  color: Colors.white)),
                                          SizedBox(width: 8),
                                          Icon(Icons.arrow_forward,
                                              color: Colors.white, size: 16),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                const Gap(1),
                                SizedBox(
                                  height: 600,
                                  child: Image.asset('assets/images/guy.png'),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      const Gap(60),
                      Container(
                        height: 420,
                        width: width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: const Color(0xffDFF0D8),
                        ),
                        padding: const EdgeInsets.only(left: 29, top: 31),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  'New Arrivals',
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xff06244A),
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {
                                    // Handle "See All" action
                                  },
                                  child: const Row(
                                    children: [
                                      Text(
                                        'See All',
                                        style: TextStyle(
                                          color: Color(0xff3A3A3A),
                                          decoration: TextDecoration.underline,
                                        ),
                                      ),
                                      Icon(Icons.arrow_forward,
                                          size: 16, color: Color(0xff3A3A3A)),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 20),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  buildProductCard('assets/images/heelrope.png',
                                      'Nike Airforce 1', 45000, 45000, 4.0),
                                  buildProductCard('assets/images/bag.png',
                                      'Nike Airforce 1', 45000, 45000, 4.0),
                                  buildProductCard(
                                      'assets/images/wristchain.png',
                                      'Nike Airforce 1',
                                      45000,
                                      45000,
                                      4.0),
                                  buildProductCard('assets/images/chair.png',
                                      'Nike Airforce 1', 45000, 45000, 4.0),
                                  buildProductCard(
                                      'assets/images/neckchain.png',
                                      'Nike Airforce 1',
                                      45000,
                                      45000,
                                      4.0),
                                  buildProductCard('assets/images/heelrope.png',
                                      'Nike Airforce 1', 45000, 45000, 4.0),
                                  buildProductCard('assets/images/bag.png',
                                      'Nike Airforce 1', 45000, 45000, 4.0),
                                  buildProductCard(
                                      'assets/images/wristchain.png',
                                      'Nike Airforce 1',
                                      45000,
                                      45000,
                                      4.0),
                                  buildProductCard('assets/images/chair.png',
                                      'Nike Airforce 1', 45000, 45000, 4.0),
                                  buildProductCard(
                                      'assets/images/neckchain.png',
                                      'Nike Airforce 1',
                                      45000,
                                      45000,
                                      4.0),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Gap(60),
                      Container(
                        height: 420,
                        width: width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: const Color(0xffECF4FD),
                        ),
                        padding: const EdgeInsets.only(left: 29, top: 31),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  'Luxury Brands',
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xff06244A),
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {
                                    // Handle "See All" action
                                  },
                                  child: const Row(
                                    children: [
                                      Text(
                                        'See All',
                                        style: TextStyle(
                                          color: Color(0xff3A3A3A),
                                          decoration: TextDecoration.underline,
                                        ),
                                      ),
                                      Icon(Icons.arrow_forward,
                                          size: 16, color: Color(0xff3A3A3A)),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 20),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  buildProductCard(
                                      'assets/images/circlechain.png',
                                      'Nike Airforce 1',
                                      45000,
                                      45000,
                                      4.0),
                                  buildProductCard('assets/images/lipstick.png',
                                      'Nike Airforce 1', 45000, 45000, 4.0),
                                  buildProductCard('assets/images/chain2.png',
                                      'Nike Airforce 1', 45000, 45000, 4.0),
                                  buildProductCard('assets/images/case.png',
                                      'Nike Airforce 1', 45000, 45000, 4.0),
                                  buildProductCard('assets/images/highheel.png',
                                      'Nike Airforce 1', 45000, 45000, 4.0),
                                  buildProductCard(
                                      'assets/images/circlechain.png',
                                      'Nike Airforce 1',
                                      45000,
                                      45000,
                                      4.0),
                                  buildProductCard('assets/images/lipstick.png',
                                      'Nike Airforce 1', 45000, 45000, 4.0),
                                  buildProductCard('assets/images/chain2.png',
                                      'Nike Airforce 1', 45000, 45000, 4.0),
                                  buildProductCard('assets/images/case.png',
                                      'Nike Airforce 1', 45000, 45000, 4.0),
                                  buildProductCard('assets/images/highheel.png',
                                      'Nike Airforce 1', 45000, 45000, 4.0),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Gap(50),
                      Container(
                        height: 440,
                        width: 1214,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: const Color(0xffF5F5F5),
                        ),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 29, vertical: 31),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Top Brands',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff06244A),
                              ),
                            ),
                            const SizedBox(height: 20),
                            Expanded(
                              child: GridView.count(
                                crossAxisCount: 6,
                                crossAxisSpacing: 16,
                                mainAxisSpacing: 16,
                                childAspectRatio: 1.2,
                                shrinkWrap: false,
                                physics: const NeverScrollableScrollPhysics(),
                                children: [
                                  buildBrandCard('assets/images/adidashoe.png',
                                      'assets/images/adidaslogo.png'),
                                  buildBrandCard('assets/images/nikeshoe.png',
                                      'assets/images/nikelogo.png'),
                                  buildBrandCard('assets/images/iphone.png',
                                      'assets/images/applelogo.png'),
                                  buildBrandCard('assets/images/pumashoe.png',
                                      'assets/images/pumalogo.png'),
                                  buildBrandCard('assets/images/lgtv.png',
                                      'assets/images/lglogo.png'),
                                  buildBrandCard('assets/images/samsung.png',
                                      'assets/images/samsunglogo.png'),
                                  buildBrandCard('assets/images/tecno.png',
                                      'assets/images/tecnologo.png'),
                                  buildBrandCard('assets/images/huawei.png',
                                      'assets/images/huaweilogo.png'),
                                  buildBrandCard('assets/images/oraimo.png',
                                      'assets/images/oraimologo.png'),
                                  buildBrandCard('assets/images/adidashoe.png',
                                      'assets/images/adidaslogo.png'),
                                  buildBrandCard('assets/images/lgtv.png',
                                      'assets/images/lglogo.png'),
                                  buildBrandCard('assets/images/adidashoe.png',
                                      'assets/images/adidaslogo.png'),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Gap(60),
                      Container(
                        height: 420,
                        width: width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: const Color(0xffF9D5D2),
                        ),
                        padding: const EdgeInsets.only(left: 29, top: 31),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  'Best Home Appliance Deals',
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xff06244A),
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {
                                    // Handle "See All" action
                                  },
                                  child: const Row(
                                    children: [
                                      Text(
                                        'See All',
                                        style: TextStyle(
                                          color: Color(0xff3A3A3A),
                                          decoration: TextDecoration.underline,
                                        ),
                                      ),
                                      Icon(Icons.arrow_forward,
                                          size: 16, color: Color(0xff3A3A3A)),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 20),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  buildProductCard('assets/images/oilperf.png',
                                      'Nike Airforce 1', 45000, 45000, 4.0),
                                  buildProductCard('assets/images/top.png',
                                      'Nike Airforce 1', 45000, 45000, 4.0),
                                  buildProductCard(
                                      'assets/images/screwchain.png',
                                      'Nike Airforce 1',
                                      45000,
                                      45000,
                                      4.0),
                                  buildProductCard('assets/images/cloth.png',
                                      'Nike Airforce 1', 45000, 45000, 4.0),
                                  buildProductCard('assets/images/chair.png',
                                      'Nike Airforce 1', 45000, 45000, 4.0),
                                  buildProductCard('assets/images/oilperf.png',
                                      'Nike Airforce 1', 45000, 45000, 4.0),
                                  buildProductCard('assets/images/top.png',
                                      'Nike Airforce 1', 45000, 45000, 4.0),
                                  buildProductCard(
                                      'assets/images/screwchain.png',
                                      'Nike Airforce 1',
                                      45000,
                                      45000,
                                      4.0),
                                  buildProductCard('assets/images/cloth.png',
                                      'Nike Airforce 1', 45000, 45000, 4.0),
                                  buildProductCard('assets/images/chair.png',
                                      'Nike Airforce 1', 45000, 45000, 4.0),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const Gap(50),
                Container(
                  color: const Color(0xff06244A),
                  padding:
                      const EdgeInsets.symmetric(vertical: 50, horizontal: 70),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 2,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    SvgPicture.asset('assets/icons/logo.svg',
                                        color: Colors.white),
                                    const SizedBox(width: 10),
                                    const Text(
                                      'Swingsxstore',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                const Text(
                                  'Swingsxstore is an online ecommerce platform. is an online \necommerce platform. Swingsxstore is an online platform. \nSwingsxstore is an online ecommerce platform Swingsxstore is \nan online ecommerce platform. Swingsxstore is an online \necommerce platform.',
                                  style: TextStyle(color: Colors.white),
                                ),
                                const SizedBox(height: 20),
                                Row(
                                  children: [
                                    InkWell(
                                      onTap: () {},
                                      child: SvgPicture.asset(
                                        'assets/icons/facebook.svg',
                                        height: 30,
                                        width: 30,
                                      ),
                                    ),
                                    const Gap(20),
                                    InkWell(
                                      onTap: () {},
                                      child: SvgPicture.asset(
                                          'assets/icons/linkedIn.svg',
                                          height: 30,
                                          width: 30),
                                    ),
                                    const Gap(20),
                                    InkWell(
                                      onTap: () {},
                                      child: SvgPicture.asset(
                                          'assets/icons/instagram.svg',
                                          height: 30,
                                          width: 30),
                                    ),
                                    const Gap(20),
                                    InkWell(
                                      onTap: () {},
                                      child: SvgPicture.asset(
                                          'assets/icons/twitter.svg',
                                          height: 30,
                                          width: 30),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Info',
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Color(0xffFFFFFF),
                                      fontWeight: FontWeight.w400),
                                ),
                                const Gap(20),
                                TextButton(
                                  onPressed: () {},
                                  child: const Text(
                                    'About Us',
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Color(0xffFFFFFF),
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                                const Gap(17),
                                TextButton(
                                  onPressed: () {},
                                  child: const Text(
                                    'Promotions',
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Color(0xffFFFFFF),
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                                const Gap(17),
                                TextButton(
                                  onPressed: () {},
                                  child: const Text(
                                    'Terms of Use',
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Color(0xffFFFFFF),
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                                const Gap(17),
                                TextButton(
                                  onPressed: () {},
                                  child: const Text('Privacy Policy',
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Color(0xffFFFFFF),
                                          fontWeight: FontWeight.w400)),
                                ),
                                const Gap(17),
                                TextButton(
                                  onPressed: () {},
                                  child: const Text('Help',
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Color(0xffFFFFFF),
                                          fontWeight: FontWeight.w400)),
                                ),
                              ],
                            ),
                          ),
                          const Gap(50),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Categories',
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Color(0xffFFFFFF),
                                      fontWeight: FontWeight.w400),
                                ),
                                const Gap(20),
                                TextButton(
                                  onPressed: () {},
                                  child: const Text(
                                    'Fashion',
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Color(0xffFFFFFF),
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                                const Gap(17),
                                TextButton(
                                  onPressed: () {},
                                  child: const Text('Electronics',
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Color(0xffFFFFFF),
                                          fontWeight: FontWeight.w400)),
                                ),
                                const Gap(17),
                                TextButton(
                                  onPressed: () {},
                                  child: const Text(
                                    'Skin Care',
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Color(0xffFFFFFF),
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                                const Gap(17),
                                TextButton(
                                  onPressed: () {},
                                  child: const Text(
                                    'Sports',
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Color(0xffFFFFFF),
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                                const Gap(17),
                                TextButton(
                                  onPressed: () {},
                                  child: const Text('Groceries',
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Color(0xffFFFFFF),
                                          fontWeight: FontWeight.w400)),
                                ),
                              ],
                            ),
                          ),
                          const Gap(50),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TextButton(
                                  onPressed: () {},
                                  child: const Text(
                                    'Contact Us',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 20),
                                Row(
                                  children: [
                                    const Icon(Icons.email_outlined,
                                        color: Colors.white),
                                    const SizedBox(width: 10),
                                    TextButton(
                                      onPressed: () {},
                                      child: const Text(
                                        'support@swingsxstore.com',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 10),
                                Row(
                                  children: [
                                    const Icon(Icons.phone_outlined,
                                        color: Colors.white),
                                    const SizedBox(width: 10),
                                    TextButton(
                                      onPressed: () {},
                                      child: const Text(
                                        '08000000000 Calls only',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        '© 2024 Swingxstore',
                        style: TextStyle(color: Colors.white70),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget buildBrandCard(String productImagePath, String logoImagePath) {
  return Container(
    width: 173,
    height: 112,
    decoration: BoxDecoration(
      color: Colors.transparent,
      borderRadius: BorderRadius.circular(8),
    ),
    child: Stack(
      children: [
        Positioned.fill(
          child: Image.asset(
            productImagePath,
            width: 173,
            height: 112,
          ),
        ),
        Positioned(
          top: 30,
          left: 38,
          child: Image.asset(
            logoImagePath,
            width: 97,
            height: 97,
          ),
        ),
      ],
    ),
  );
}
