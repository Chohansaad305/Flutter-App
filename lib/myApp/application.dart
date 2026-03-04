import 'package:flutter/material.dart';
import 'package:flutter_firstproject/components/burger.dart';
import 'package:flutter_firstproject/myApp/my_order.dart';
import 'package:flutter_firstproject/myApp/profile.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

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
        actions: [
          Builder(
            builder: (context) => IconButton(
              icon: Stack(
                children: [
                  Icon(Icons.notifications_none, size: 28),

                  Positioned(
                    right: 0,
                    top: 0,
                    child: Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                ],
              ),
              onPressed: () {
                final RenderBox button =
                    context.findRenderObject() as RenderBox;
                final RenderBox overlay =
                    Overlay.of(context).context.findRenderObject() as RenderBox;

                showMenu(
                  context: context,
                  position: RelativeRect.fromRect(
                    Rect.fromPoints(
                      button.localToGlobal(Offset.zero, ancestor: overlay),
                      button.localToGlobal(
                        button.size.bottomRight(Offset.zero),
                        ancestor: overlay,
                      ),
                    ),
                    Offset.zero & overlay.size,
                  ),
                  items: [
                    PopupMenuItem(
                      child: NotificationTile(
                        title: "New Order Received",
                        subtitle: "Your order #123 has been placed",
                      ),
                    ),
                    PopupMenuItem(
                      child: NotificationTile(
                        title: "New Message",
                        subtitle: "You received a new message",
                      ),
                    ),
                  ],
                );
              },
            ),
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

              // ================= Search Bar =================
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
              // ================= Search Bar End =================

              // ====== ICONS SCROLL ======
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
                              iconPageLink: Burger(),
                            ),
                            SizedBox(width: 10),
                            IconsScrollDirection(
                              icons: Icons.local_pizza_outlined,
                              lable: 'Pizza',
                              iconPageLink: MyOrder(),
                            ),
                            SizedBox(width: 10),
                            IconsScrollDirection(
                              icons: Icons.local_drink_outlined,
                              lable: 'Drinks',
                              iconPageLink: MyOrder(),
                            ),
                            SizedBox(width: 10),
                            IconsScrollDirection(
                              icons: Icons.icecream_outlined,
                              lable: 'Ice Cream',
                              iconPageLink: Profile(),
                            ),
                            SizedBox(width: 10),
                            IconsScrollDirection(
                              icons: Icons.cake_outlined,
                              lable: 'Cake',
                              iconPageLink: MyOrder(),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // ====== ICONS SCROLL END ======
              SizedBox(height: 10),

              // ====== FOOD CARD TOP HORIZONTAL ======
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Recent Deals 🔥",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Burger()),
                          );
                        },
                        child: Text('View All', style: TextStyle(fontSize: 16)),
                      ),
                    ],
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        FoodCardHorizontal2(
                          cardPageLink: MyOrder(),
                          discount: '20% OFF',
                          cardImages: 'assets/images/burger.png',
                          cardName: "Chicken Burger",
                          starRating: '4.5',
                          deliveryTime: '10-20 min',
                        ),
                        FoodCardHorizontal2(
                          cardPageLink: MyOrder(),
                          discount: '15% OFF',
                          cardImages: 'assets/images/burger.png',
                          cardName: "Veg Burger",
                          starRating: '4.2',
                          deliveryTime: '10-20 min',
                        ),
                        FoodCardHorizontal2(
                          cardPageLink: MyOrder(),
                          discount: '10% OFF',
                          cardImages: 'assets/images/burger2.png',
                          cardName: "Beef Burger",
                          starRating: '4.8',
                          deliveryTime: '10-20 min',
                        ),
                        FoodCardHorizontal2(
                          cardPageLink: MyOrder(),
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

              // ====== FOOD CARD TOP HORIZONTAL END ======
              SizedBox(height: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Burger Deals 🍔",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Burger()),
                          );
                        },
                        child: Text('View All', style: TextStyle(fontSize: 16)),
                      ),
                    ],
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        FoodCardHorizontal2(
                          cardPageLink: MyOrder(),
                          discount: '20% OFF',
                          cardImages: 'assets/images/burger1.png',
                          cardName: "Chicken Burger",
                          starRating: '4.5',
                          deliveryTime: '10-20 min',
                        ),
                        FoodCardHorizontal2(
                          cardPageLink: MyOrder(),
                          discount: '15% OFF',
                          cardImages: 'assets/images/burger.png',
                          cardName: "Veg Burger",
                          starRating: '4.2',
                          deliveryTime: '10-20 min',
                        ),
                        FoodCardHorizontal2(
                          cardPageLink: MyOrder(),
                          discount: '10% OFF',
                          cardImages: 'assets/images/burger2.png',
                          cardName: "Beef Burger",
                          starRating: '4.8',
                          deliveryTime: '10-20 min',
                        ),
                        FoodCardHorizontal2(
                          cardPageLink: MyOrder(),
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
      bottomNavigationBar: const BottomBar(selectedIndex: 0),
      // ========= BOTTOM NAVIGATION BAR END =========
    );
  }
}

// ====== NOTIFICATION TILE CLASS ======
class NotificationTile extends StatelessWidget {
  final String title;
  final String subtitle;

  const NotificationTile({
    super.key,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundColor: Colors.orange,
          child: Icon(Icons.notifications, color: Colors.white),
        ),
        SizedBox(width: 10),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
              ),
              Text(
                subtitle,
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
// ====== NOTIFICATION TILE CLASS END ======

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
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const MyOrder(),
                              ),
                            );
                          },
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
  final Widget iconPageLink;
  const IconsScrollDirection({
    super.key,
    required this.icons,
    required this.lable,
    required this.iconPageLink,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => iconPageLink),
      ),
      child: Card(
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
  final Widget cardPageLink;

  const FoodCardHorizontal2({
    super.key,
    required this.cardImages,
    this.cardName,
    this.deliveryTime,
    this.starRating,
    this.discount,
    required this.cardPageLink,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => cardPageLink),
        );
      },
      child: Card(
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
                            Icon(
                              Icons.star_half,
                              color: Colors.amber,
                              size: 18,
                            ),
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
      ),
    );
  }
}
// ====== FOOD CARD TOP HORIZONTAL2 CLASS END ======

// ========= BOTTOM NAVIGATION BAR =========
class BottomBar extends StatelessWidget {
  final int selectedIndex;

  const BottomBar({super.key, required this.selectedIndex});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GNav(
        selectedIndex: selectedIndex,
        rippleColor: Colors.grey.shade300,
        hoverColor: Colors.grey.shade200,
        haptic: true,
        tabBorderRadius: 15,
        duration: const Duration(milliseconds: 400),
        gap: 8,
        color: Colors.black,
        activeColor: Colors.black,
        iconSize: 26,
        // tabBackgroundColor: Colors.black,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),

        onTabChange: (index) {
          if (index == selectedIndex) return;

          switch (index) {
            case 0:
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => MyApplication()),
              );
              break;

            case 1:
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => MyOrder()),
              );
              break;

            case 2:
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => Profile()),
              );
              break;
          }
        },

        tabs: const [
          GButton(icon: Icons.home_outlined, text: 'Home'),
          GButton(icon: Icons.shopping_bag_outlined, text: 'My Order'),
          GButton(icon: Icons.person_outlined, text: 'Profile'),
        ],
      ),
    );
  }
}

// ========= BOTTOM NAVIGATION BAR END =========
