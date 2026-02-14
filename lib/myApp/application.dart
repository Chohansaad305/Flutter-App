import 'package:flutter/material.dart';

class MyApplication extends StatelessWidget {
  const MyApplication({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ========= APP BAR =========
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Deliver to',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
            ),
            Row(
              children: [
                Icon(Icons.location_on, size: 16, color: Colors.orange),
                Text(
                  'My Home, Kabul',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
                // PopupMenuButton(
                //   icon: const Icon(Icons.keyboard_arrow_down),
                //   onSelected: (value) {},
                //   itemBuilder: (BuildContext context) => [
                //     const PopupMenuItem(
                //       value: 'home',
                //       child: Text('My Home, Kabul'),
                //     ),
                //     const PopupMenuItem(
                //       value: 'office',
                //       child: Text('My Office, Kabul'),
                //     ),
                //     const PopupMenuItem(
                //       value: 'other',
                //       child: Text('Other Location'),
                //     ),
                //   ],
                // ),
              ],
            ),
          ],
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(10),
            child: Icon(Icons.notifications_none),
          ),
        ],
      ),
      // ========= APP BAR END =========

      // ========= BODY =========
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        FoodCardHorizontal(
                          image: 'assets/images/burger.png',
                          textHeading: 'Up to 40% OFF on First Order',
                          secondHeading: 'Use code: FIRST40',
                        ),
                        FoodCardHorizontal(
                          image: 'assets/images/burger1.png',
                          textHeading: 'Up to 30% OFF on Sec Order',
                          secondHeading: 'Use code: SECOND30',
                        ),
                        FoodCardHorizontal(
                          image: 'assets/images/burger2.png',
                          textHeading: 'Up to 20% OFF on Third Order',
                          secondHeading: 'Use code: THIRD20',
                        ),
                        FoodCardHorizontal(
                          image: 'assets/images/burger3.png',
                          textHeading: 'Up to 10% OFF on Fourth Order',
                          secondHeading: 'Use code: FOURTH10',
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              Card(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search for food,Drinks, etc...',
                    prefixIcon: Icon(Icons.search, size: 26),
                    suffixIcon: Icon(Icons.filter_list, size: 26, weight: 100),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 15,
                  horizontal: 8,
                ),
                child: Column(
                  children: [
                    SizedBox(
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            IconsScrollDirection(
                              icons: Icons.local_cafe_outlined,
                              lable: 'Burgers',
                            ),
                            SizedBox(width: 10),
                            IconsScrollDirection(
                              icons: Icons.local_pizza_outlined,
                              lable: 'Pizza',
                            ),
                            SizedBox(width: 10),
                            IconsScrollDirection(
                              icons: Icons.local_drink_outlined,
                              lable: 'Drinks',
                            ),
                            SizedBox(width: 10),
                            IconsScrollDirection(
                              icons: Icons.icecream_outlined,
                              lable: 'Ice Cream',
                            ),
                            SizedBox(width: 10),
                            IconsScrollDirection(
                              icons: Icons.cake_outlined,
                              lable: 'Cake',
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Recent Deals",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        FoodCardHorizontal2(
                          discount: '20% OFF',
                          cardImages: 'assets/images/burger1.png',
                          cardName: "Chicken Burger",
                          starRating: '4.5',
                          deliveryTime: '10-20 min',
                        ),
                        FoodCardHorizontal2(
                          discount: '15% OFF',
                          cardImages: 'assets/images/burger.png',
                          cardName: "Veg Burger",
                          starRating: '4.2',
                          deliveryTime: '10-20 min',
                        ),
                        FoodCardHorizontal2(
                          discount: '10% OFF',
                          cardImages: 'assets/images/burger2.png',
                          cardName: "Beef Burger",
                          starRating: '4.8',
                          deliveryTime: '10-20 min',
                        ),
                        FoodCardHorizontal2(
                          discount: '5% OFF',
                          cardImages: 'assets/images/burger3.png',
                          cardName: "Cheese Burger",
                          starRating: '4.0',
                          deliveryTime: '10-20 min',
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
      // ========= BODY END =========

      // ========= BOTTOM NAVIGATION BAR =========
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.emoji_emotions),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_outlined),
            label: 'My Orders',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
      // ========= BOTTOM NAVIGATION BAR END =========
    );
  }
}

// ====== FOOD CARD TOP HORIZONTAL CLASS ======
class FoodCardHorizontal extends StatelessWidget {
  final String image;
  final String textHeading;
  final String secondHeading;

  const FoodCardHorizontal({
    super.key,
    required this.image,
    required this.textHeading,
    required this.secondHeading,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: 180,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage(image),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  Positioned(
                    top: 25,
                    left: 25,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.40,
                          child: Text(
                            textHeading,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Text(
                          secondHeading,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 20),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          child: Text(
                            'Order Now',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
// ====== FOOD CARD TOP HORIZONTAL1 CLASS END ======

// ====== ICONS SCROLL CLASS ======
class IconsScrollDirection extends StatelessWidget {
  final String lable;
  final IconData icons;
  const IconsScrollDirection({
    super.key,
    required this.icons,
    required this.lable,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Row(
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.orange,
              ),
              child: Icon(icons, size: 23, color: Colors.white),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                lable,
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
// ====== ICONS SCROLL CLASS END ======

// ====== FOOD CARD TOP HORIZONTAL2 CLASS ======
class FoodCardHorizontal2 extends StatelessWidget {
  final String cardImages;
  final String? cardName;
  final String? starRating;
  final String? deliveryTime;
  final String? discount;

  const FoodCardHorizontal2({
    super.key,
    required this.cardImages,
    this.cardName,
    this.deliveryTime,
    this.starRating,
    this.discount,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              // IMAGE
              Container(
                width: MediaQuery.of(context).size.width * 0.70,
                height: 180,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  image: DecorationImage(
                    image: AssetImage(cardImages),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              // TEXT (top left)
              Positioned(
                top: 12,
                left: 12,
                child: Text(
                  discount ?? '',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    backgroundColor: Colors.black54,
                  ),
                ),
              ),

              // BUTTON (bottom right)
              Positioned(
                bottom: 12,
                right: 12,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: Text(
                    'Order Now',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.65,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        cardName ?? '',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Row(
                        children: [
                          Icon(Icons.star_half, color: Colors.amber, size: 18),
                          SizedBox(width: 4),
                          Text(starRating ?? ''),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 6),
                Row(
                  children: [
                    Icon(
                      Icons.watch_later,
                      color: const Color.fromARGB(255, 255, 215, 95),
                    ),
                    Text('$deliveryTime delivery'),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// ====== FOOD CARD TOP HORIZONTAL2 CLASS END ======
