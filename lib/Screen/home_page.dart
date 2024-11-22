import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

class FurnitureHomePage extends StatelessWidget {
  const FurnitureHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30),
            bottomRight: Radius.circular(30),
          ),
          child: AppBar(
            backgroundColor: Colors.white,
            elevation: 2, // Adjust for a slight shadow effect
            toolbarHeight: 70,
            title: Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.location_on, color: Colors.grey),
                  onPressed: () {},
                ),
                const Text(
                  'Delivery to\n201301',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            actions: [
              IconButton(
                icon: const Icon(Icons.search, color: Colors.grey),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.favorite_border, color: Colors.grey),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.shopping_cart, color: Colors.grey),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 200,
                child: Swiper(
                  itemCount: 5,
                  autoplay: true,
                  pagination: const SwiperPagination(),
                  control: const SwiperControl(),
                  itemBuilder: (BuildContext context, int index) {
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        "assets/banner.png",
                        fit: BoxFit.cover,
                      ),
                    );
                  },
                ),
              ),
            ),

            // Categories Section
            const Center(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'BUY FURNITURE',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            GridView.count(
              crossAxisCount: 4,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: const [
                CategoryIcon(
                  label: 'Living Room',
                  icon: Icons.chair_alt,
                ),
                CategoryIcon(
                  label: 'Bedroom',
                  icon: Icons.bed,
                ),
                CategoryIcon(label: 'Storage', icon: Icons.cabin),
                CategoryIcon(label: 'Study', icon: Icons.desktop_windows),
                CategoryIcon(label: 'Dining', icon: Icons.table_bar),
                CategoryIcon(label: 'Tables', icon: Icons.table_chart),
                CategoryIcon(label: 'Chairs', icon: Icons.chair),
                CategoryIcon(label: 'Z Rated', icon: Icons.new_releases),
              ],
            ),
            const Center(
              child: CategoryIcon(
                  label: 'Best Deals', icon: Icons.local_offer_outlined),
            ),

            // const Padding(
            //   padding: EdgeInsets.all(8.0),
            //   child: Text(
            //     'Best Deals',
            //     style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            //   ),
            // ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset(
                    "assets/bn.png",
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    "assets/rf.png",
                    fit: BoxFit.cover,
                  ),
                  // DealCard(title: 'Brand New'),
                  // DealCard(title: 'Refurbished'),
                ],
              ),
            ),

            // Offers & Discounts
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Offers & Discounts',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  TextButton(onPressed: () {}, child: const Text('See All')),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                // First Offer
                Container(
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    color: Colors.yellow.shade100,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Extra ₹100 off on SBI cards',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 4),
                      Text('No code required'),
                    ],
                  ),
                ),
                // Second Offer
                Container(
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    color: Colors.yellow.shade100,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Flat 15% OFF',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 4),
                      Text('Use Coupon XYZ'),
                    ],
                  ),
                ),
              ],
            ),

            // Deals of the Day Section
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Deals of the Day',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  TextButton(onPressed: () {}, child: const Text('View All')),
                ],
              ),
            ),
            GridView.builder(
              padding: const EdgeInsets.all(8.0),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 8.0,
                crossAxisSpacing: 8.0,
                childAspectRatio: 3 / 2,
              ),
              itemCount: 2, // Number of products
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return ProductCard(
                  imagePath: "assets/222.png",
                  title: index == 0 ? 'Flex 3 Seater' : 'Flex Fabric Sofa',
                  discount: index == 0 ? '72% off' : '74% off',
                  price: index == 0 ? '₹10,499' : '₹9,499',
                );
              },
            ),

            // Deals of the Day Section
            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: [
            //       const Text(
            //         'Deals of the Day',
            //         style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            //       ),
            //       TextButton(onPressed: () {}, child: const Text('View All')),
            //     ],
            //   ),
            // ),
            // GridView.count(
            //   crossAxisCount: 2,
            //   shrinkWrap: true,
            //   physics: const NeverScrollableScrollPhysics(),
            //   childAspectRatio: 3 / 2,
            //   children: const [
            //     ProductCard(
            //       imagePath: "assets/222.png",
            //       title: 'Flex 3 Seater',
            //       discount: '72% off',
            //       price: '₹10,499',
            //     ),
            //     ProductCard(
            //       imagePath: "assets/222.png",
            //       title: 'Flex Fabric Sofa',
            //       discount: '74% off',
            //       price: '₹9,499',
            //     ),
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}

class CategoryIcon extends StatelessWidget {
  final String label;
  final IconData icon;

  const CategoryIcon({super.key, required this.label, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, size: 30, color: const Color.fromARGB(255, 6, 206, 179)),
        const SizedBox(height: 5),
        Text(
          label,
          style: const TextStyle(fontSize: 12),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}

class DealCard extends StatelessWidget {
  final String title;

  const DealCard({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.blue[100],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text(
          title,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

class OfferTile extends StatelessWidget {
  final String description;
  final String details;

  const OfferTile(
      {super.key, required this.description, required this.details});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.local_offer, color: Colors.blue),
      title: Text(description),
      subtitle: Text(details),
    );
  }
}

class ProductCard extends StatelessWidget {
  final String title;
  final String discount;
  final String price;
  final String imagePath;

  const ProductCard(
      {super.key,
      required this.title,
      required this.discount,
      required this.imagePath,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Center(
              child: Image.asset(
                imagePath,
                width: 130,
                // height: 0,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              title,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(discount, style: const TextStyle(color: Colors.red)),
                Text(price,
                    style: const TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
