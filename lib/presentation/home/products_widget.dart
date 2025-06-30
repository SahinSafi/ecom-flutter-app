part of 'home_screen.dart';

class ProductsWidget extends StatelessWidget {
  const ProductsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: bannerList.length,
        itemBuilder: (context, index) {
          return _buildProductItem(bannerList[index]);
        }
    );
  }

  Widget _buildProductItem(String url) {
    return Padding(
      padding: const EdgeInsets.all(50),
      child: Card(
        child: Column(
          children: [
            Text("product")
          ],
        ),
      ),
    );
  }
}
