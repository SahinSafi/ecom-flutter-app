part of 'home_screen.dart';

class BannerWidget extends StatelessWidget {

  final List<BannerEntity> banners;

  const BannerWidget({super.key, required this.banners});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: AppDimensions.spacing16),
      decoration: BoxDecoration(
          color: context.getColor.primary,
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(20))
      ),
      child: CarouselSlider.builder(
          itemCount: banners.length,
          itemBuilder: (context, itemIndex, pageViewIndex){
            return _buildBannerItem(banners[itemIndex].imageUrl);
          },
          options: CarouselOptions(
            aspectRatio: 16 / 5,
            initialPage: 0,
            enableInfiniteScroll: true,
            reverse: false,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 5),
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            enlargeCenterPage: true,
            enlargeFactor: 0.3,
            scrollDirection: Axis.horizontal,
          )
      ),
    );
  }

  Widget _buildBannerItem(String url) {
    return ImageLoader(url: url, fit: BoxFit.cover, width: 400, borderRadius: 10,);
  }

}
