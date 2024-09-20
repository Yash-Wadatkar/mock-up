import 'package:flutter/material.dart';
import 'package:recipto/widgets/custom_card_widget.dart';

class MockUpScreen extends StatelessWidget {
  const MockUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    /// list of card data
    final List<Map<String, dynamic>> cardData = [
      {
        'titleText': 'Pay using Wallet',
        'subTitleText': 'Balance 500',
        'color': const Color(0xffd6f1ff),
        'imagePath': 'assets/images/Pay at store.png',
        'buttonText': 'Pay Bill'
      },
      {
        'titleText': 'Buy 500',
        'subTitleText': 'for just ₹450',
        'color': const Color(0xffeedbf8),
        'imagePath': 'assets/images/Buy Coins.png',
        'buttonText': 'Get for  ₹450'
      },
      {
        'titleText': 'Shop above ₹899',
        'subTitleText': '& get 50',
        'color': const Color(0xfffef8ec),
        'imagePath': 'assets/images/Offers.png',
        'buttonText': 'Shop'
      },
      {
        'titleText': 'Purchase at store',
        'subTitleText': '& get 5% back',
        'color': const Color(0xffd8f2ff),
        'imagePath': 'assets/images/Store Cashback.png',
        'buttonText': 'Purchase'
      },
    ];

    return Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.arrow_back),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Expanded(flex: 10, child: SizedBox()),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        border: Border.all(width: 0.5, color: Colors.grey),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(5))),
                    child: Image.asset(
                      'assets/images/image.png',
                      height: 50,
                      width: 50,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const Expanded(flex: 2, child: SizedBox()),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Magnolia Bakery',
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w700),
                      ),
                      Text(
                        '3% cashback . ₹250 Welcome Bonus',
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey),
                      ),
                    ],
                  ),
                  const Expanded(flex: 15, child: SizedBox()),
                ],
              ),
              const Expanded(flex: 15, child: SizedBox()),
              const Text(
                'Claim Deals',
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 21, fontWeight: FontWeight.w800),
              ),
              const Expanded(flex: 15, child: SizedBox()),

              /// method to build gridview
              _buildGridView(cardData),
              const Expanded(flex: 425, child: SizedBox()),
            ],
          ),
        ),

        /// method to build bottom sheet
        bottomSheet: _buildBottomSheet());
  }

  /// method to build grid view
  Widget _buildGridView(List cardData) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 12, // Add spacing between columns
          mainAxisSpacing: 12,
          mainAxisExtent: 250),
      itemCount: cardData.length,
      itemBuilder: (context, index) {
        // Fetch the data for the current index from cardData list
        final card = cardData[index];

        // Pass the data to the CustomCardWidget
        return CustomCardWidget(
          titleText: card['titleText'],
          subTitleText: card['subTitleText'],
          color: card['color'],
          imagePath: card['imagePath'],
          buttonText: card['buttonText'],
        );
      },
    );
  }

  /// method to build bottom sheet
  Widget _buildBottomSheet() {
    return Container(
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      width: double.infinity,
      height: 220,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Expanded(flex: 20, child: SizedBox()),
            const Text(
              'Proof of transaction',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
            ),
            const Text(
              'scan Receipt/share payment screenshot to earn',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const Expanded(flex: 20, child: SizedBox()),
            OutlinedButton(
                onPressed: () {},
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  child: Row(
                    children: [
                      const Expanded(flex: 20, child: SizedBox()),
                      const Text(
                        'Share Payment image',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w800,
                            color: Color(0xff5764da)),
                      ),
                      const Expanded(flex: 10, child: SizedBox()),
                      Image.asset(
                        'assets/images/UPI Image.png',
                        height: 15,
                      ),
                      const Expanded(flex: 20, child: SizedBox()),
                    ],
                  ),
                )),
            const Expanded(flex: 10, child: SizedBox()),
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    style: const ButtonStyle(
                        backgroundColor:
                            WidgetStatePropertyAll(Color(0xff5764da))),
                    onPressed: () {},
                    child: const Padding(
                      padding: EdgeInsets.symmetric(vertical: 12),
                      child: Text(
                        'Scan Receipt',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w800,
                            color: Colors.white),
                      ),
                    ))),
            const Expanded(flex: 40, child: SizedBox()),
          ],
        ),
      ),
    );
  }
}
