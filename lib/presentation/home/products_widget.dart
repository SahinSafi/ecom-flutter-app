part of 'home_screen.dart';

class ProductsWidget extends StatelessWidget {
  const ProductsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemBuilder: (context, index) {
          return _buildProductItem(bannerList[index]);
        }
    );
  }

  Widget _buildProductItem(String url) {
    return Card(
      child: Column(
        children: [

        ],
      ),
    );
  }
}
