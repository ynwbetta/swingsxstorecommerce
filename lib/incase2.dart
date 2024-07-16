import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'buildBrandCard.dart';
import 'buildProductCard.dart';
import 'components/search_boy.dart';
import 'footerColumn.dart';
import 'socialIcon.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final TextEditingController _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      appBar: AppBar(
        backgroundColor: const Color(0xff06244A),
        toolbarHeight: 80,
        title: SizedBox(
          width: 1440,
          child: Row(
            children: [
              Row(
                children: [
                  const Gap(111),
                  SvgPicture.asset(
                    'assets/icons/logo.svg',
                  ),
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
                ],
              ),
              const Gap(111),
              SearchBoy(
                hintText: 'Search for a product',
                controller: _searchController,
              ),
              const Gap(148),
              SizedBox(
                child: Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 20),
                  child: Row(
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset('assets/icons/Vector.svg'),
                          const Gap(6),
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
                              const Gap(1),
                              Row(
                                children: [
                                  const Text(
                                    'Sign in / Sign up',
                                    style: TextStyle(
                                      fontFamily: 'Inter',
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xffFFFFFF),
                                    ),
                                  ),
                                  const Gap(5),
                                  SvgPicture.asset(
                                    'assets/icons/keyboard_arrow_down.svg',
                                    color: const Color(0xffFFFFFF),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      const Gap(16),
                      Row(
                        children: [
                          SvgPicture.asset(
                            'assets/icons/notifications.svg',
                          ),
                          const Gap(16),
                          SvgPicture.asset(
                            'assets/icons/shopping_cart.svg',
                          ),
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
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: SizedBox(
        width: 1440,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                child: Container(
                  color: const Color(0xff041C3B),
                  height: 64,
                  child: Row(
                    children: [
                      Container(
                        width: 216,
                        height: 36,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                              width: 0.8, color: const Color(0xffFFFFFF)),
                        ),
                        child: Row(
                          children: [
                            Container(
                              color: const Color(0xffFFFFFF),
                              height: 18,
                              width: 18,
                              child: SvgPicture.asset(
                                  'assets/icons/hamburger.svg'),
                            ),
                            const Gap(10),
                            const Text(
                              'All Categories',
                              style: TextStyle(
                                fontFamily: 'Inter',
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Color(0xffFFFFFF),
                              ),
                            ),
                            const Gap(40),
                            SvgPicture.asset(
                              'assets/icons/keyboard_arrow_down.svg',
                              color: const Color(0xffFFFFFF),
                            ),
                          ],
                        ),
                      ),
                      const Gap(93),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Fashion',
                          style: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color(0xffFFFFFF),
                          ), // Your button text
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const Gap(8),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 78),
                    child: Container(
                      height: 317,
                      width: 800,
                      decoration: BoxDecoration(
                        color: const Color(0xffFCBA01),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      //  children: [
                      //   Image.asset('assets/images/Rectangle1.png'),
                      //   Image.asset('assets/images/Rectangle2.png'),
                      //   Image.asset('assets/images/Rectangle3.png'),
                      // ],
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
                      ),
                      const Gap(8),
                      Container(
                        height: 156,
                        width: 390,
                        decoration: BoxDecoration(
                          color: const Color(0xffDBAFD4),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const Gap(30),
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 100),
                    child: Text(
                      'Explore Popular Categories',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff06244A),
                      ),
                    ),
                  ),
                  const Gap(780),
                  Row(
                    children: [
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
                ],
              ),
              const Gap(32),
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 111, right: 111),
                  )
                ],
              ),
              const Gap(30),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 111),
                    child: Column(
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
                  ),
                  const Gap(50),
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
                  const Gap(50),
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
                  const Gap(50),
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
                  const Gap(50),
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
                  const Gap(50),
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
              const Gap(50),
              Container(
                height: 420,
                width: 1200,
                color: const Color(0xffE3F2FD),
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
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const Gap(60),
              Container(
                height: 420,
                width: 1200,
                color: const Color(0xffFFF8E1),
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
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const Gap(48),
              Row(
                children: [
                  Container(
                    height: 280,
                    width: 590,
                    color: const Color(0xff4CAF50),
                    padding: const EdgeInsets.only(left: 20, top: 62),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            RichText(
                              text: const TextSpan(
                                style: TextStyle(
                                    fontSize: 36,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                                children: [
                                  TextSpan(text: 'Get Up to '),
                                  TextSpan(
                                    text: '30%',
                                    style: TextStyle(color: Colors.yellow),
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
                                backgroundColor:
                                    const Color(0xFF3E2723), // Dark brown color

                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              child: const Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text('Shop Now',
                                      style: TextStyle(color: Colors.white)),
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
                          height: 500,
                          child: Image.asset('assets/images/girls.png'),
                        )
                      ],
                    ),
                  ),
                  const Gap(24),
                  Container(
                    height: 280,
                    width: 590,
                    color: const Color(0xff4CAF50),
                    padding: const EdgeInsets.only(left: 20, top: 62),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            RichText(
                              text: const TextSpan(
                                style: TextStyle(
                                    fontSize: 36,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                                children: [
                                  TextSpan(text: 'Get Up to '),
                                  TextSpan(
                                    text: '30%',
                                    style: TextStyle(color: Colors.yellow),
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
                                backgroundColor:
                                    const Color(0xFF3E2723), // Dark brown color

                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              child: const Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text('Shop Now',
                                      style: TextStyle(color: Colors.white)),
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
                          height: 500,
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
                width: 1200,
                color: const Color(0xffDFF0D8),
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
                        children: [
                          buildProductCard('assets/images/heelrope.png',
                              'Nike Airforce 1', 45000, 45000, 4.0),
                          buildProductCard('assets/images/bag.png',
                              'Nike Airforce 1', 45000, 45000, 4.0),
                          buildProductCard('assets/images/wristchain.png',
                              'Nike Airforce 1', 45000, 45000, 4.0),
                          buildProductCard('assets/images/chair.png',
                              'Nike Airforce 1', 45000, 45000, 4.0),
                          buildProductCard('assets/images/neckchain.png',
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
                width: 1200,
                color: const Color(0xffECF4FD),
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
                        children: [
                          buildProductCard('assets/images/circlechain.png',
                              'Nike Airforce 1', 45000, 45000, 4.0),
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
                height: 374,
                width: 1130,
                color: const Color(0xffF5F5F5),
                padding: const EdgeInsets.symmetric(horizontal: 70),
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
                    GridView.count(
                      crossAxisCount: 6,
                      crossAxisSpacing: 16,
                      mainAxisSpacing: 16,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      children: [
                        buildBrandCard('assets/images/adishoe.png',
                            'assets/images/adidaslogo.png'),
                        buildBrandCard('assets/images/nike.png',
                            'assets/images/nikelogo.svg'),
                        buildBrandCard('assets/images/iphone.png',
                            'assets/images/Applelogo.svg'),
                        buildBrandCard('assets/images/pumashoe.png',
                            'assets/images/pumalogo.svg'),
                        buildBrandCard(
                            'assets/images/lgback.png', 'assets/images/LG.svg'),
                        buildBrandCard('assets/images/samsung.png',
                            'assets/images/samsunglogo.svg'),
                        buildBrandCard('assets/images/tecno.png',
                            'assets/images/tecnologo.svg'),
                        buildBrandCard('assets/images/huawei.png',
                            'assets/images/huawei.svg'),
                        buildBrandCard('assets/images/oraimo.png', 'Oraimo'),
                        buildBrandCard('assets/images/adidas2.png', 'Adidas'),
                        buildBrandCard('assets/images/lg_tv.png', 'LG'),
                        buildBrandCard('assets/images/adidas3.png', 'Adidas'),
                      ],
                    ),
                  ],
                ),
              ),
              const Gap(60),
              Container(
                height: 420,
                width: 1200,
                color: const Color(0xffF9D5D2),
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
                        children: [
                          buildProductCard('assets/images/oilperf.png',
                              'Nike Airforce 1', 45000, 45000, 4.0),
                          buildProductCard('assets/images/top.png',
                              'Nike Airforce 1', 45000, 45000, 4.0),
                          buildProductCard('assets/images/screwchain.png',
                              'Nike Airforce 1', 45000, 45000, 4.0),
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
                                'Swingsxstore is an online ecommerce platform. is an online ecommerce platform.Swingsxstore is an online platform. wingsxstore is anline ecommerce plat Swingsxstore is an online ecomme platform.Swingsxstore is an online ecommerce platform.',
                                style: TextStyle(color: Colors.white),
                              ),
                              const SizedBox(height: 20),
                              Row(
                                children: [
                                  socialIcon('assets/icons/facebook.svg'),
                                  const SizedBox(width: 15),
                                  socialIcon('assets/icons/linkedIn.svg'),
                                  const SizedBox(width: 15),
                                  socialIcon('assets/icons/instagram.svg'),
                                  const SizedBox(width: 15),
                                  socialIcon('assets/icons/twitter.svg'),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: footerColumn('Info', [
                            'About us',
                            'Promotions',
                            'Terms of Use',
                            'Privacy Policy',
                            'Help',
                          ]),
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
                        const Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Contact Us',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 20),
                              Row(
                                children: [
                                  Icon(Icons.email_outlined,
                                      color: Colors.white),
                                  SizedBox(width: 10),
                                  Text(
                                    'support@grandlotto.com',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10),
                              Row(
                                children: [
                                  Icon(Icons.phone_outlined,
                                      color: Colors.white),
                                  SizedBox(width: 10),
                                  Text(
                                    '08000000000 Calls only',
                                    style: TextStyle(color: Colors.white),
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
    );
  }
}
