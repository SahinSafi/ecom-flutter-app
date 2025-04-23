part of 'home_screen.dart';

class BannerWidget extends StatelessWidget {
  const BannerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
        itemCount: bannerList.length,
        itemBuilder: (context, itemIndex, pageViewIndex){
          return _buildBannerItem(bannerList[itemIndex]);
        },
        options: CarouselOptions(
          aspectRatio: 16 / 6,
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
    );
  }

  Widget _buildBannerItem(String url) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8.0),
      child: Image.network(url, fit: BoxFit.cover, width: 400,),
    );
  }
}
