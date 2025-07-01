part of 'home_screen.dart';

class ProductsWidget extends StatelessWidget {

  final List<ProductEntity> products;
  const ProductsWidget({super.key, required this.products});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: AppDimensions.spacing8,
          crossAxisSpacing: AppDimensions.spacing8,
          childAspectRatio: 0.8
        ),
        physics: NeverScrollableScrollPhysics(),
        padding: EdgeInsets.symmetric(horizontal: AppDimensions.spacing16),
        shrinkWrap: true,
        itemCount: products.length,
        itemBuilder: (context, index) {
          return _buildProductItem(products[index], context);
        }
    );
  }

  Widget _buildProductItem(ProductEntity product, BuildContext context) {
    return Card(
      color: context.getColor.secondary,
      elevation: 0,
      child: Padding(
        padding: const EdgeInsets.all(AppDimensions.spacing8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
                children:[
                  ImageLoader(url: product.imageUrl, borderRadius: AppDimensions.radius8, height: 150, fit: BoxFit.cover,),
                  Align(
                      alignment: Alignment.topRight,
                      child: IconButton(
                        onPressed: (){},
                        icon: Icon(Icons.add_shopping_cart_rounded),
                        iconSize: 15,
                        constraints: BoxConstraints(maxHeight: 30, maxWidth: 30),
                        style: IconButton.styleFrom(backgroundColor: context.getColor.surface),
                      )
                  )
                ]
            ),
            SizedBox(height: AppDimensions.spacing8,),
            Text(product.title, style: context.getTextStyle.bodySmall,overflow: TextOverflow.ellipsis,),
            Text("${product.currentPrice} BDT", style: context.getTextStyle.bodyMedium,),
          ],
        ),
      ),
    );
  }
}
