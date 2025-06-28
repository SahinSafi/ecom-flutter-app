part of 'home_screen.dart';

class BannerWidget extends StatelessWidget {

  final List<BannerEntity> banners;
  final void Function(String) onSearch;
  final TextEditingController controller;

  const BannerWidget({super.key, required this.banners, required this.onSearch, required this.controller});


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: AppDimensions.spacing16),
      decoration: BoxDecoration(
          color: context.getColor.primary,
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(20))
      ),
      child: Column(
        children: [
          _buildSearchBar(),
          _buildBanner(),
        ],
      ),
    );
  }

  Widget _buildSearchBar() {
    return Padding(
      padding: const EdgeInsets.only(left: AppDimensions.spacing16, right: AppDimensions.spacing16, bottom: AppDimensions.spacing32),
      child: SearchBar(
        elevation:  WidgetStateProperty.all(0),
        hintText: "Product search...",
        controller: controller,
        onChanged: (text) {
          controller.text = text;
        },
        trailing: {
          IconButton(onPressed: () {
            onSearch(controller.text);
          }, icon: Icon(Icons.search),)
        },
      ),
    );
  }

  Widget _buildBanner() {
    return CarouselSlider.builder(
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
    );
  }

  Widget _buildBannerItem(String url) {
    return ImageLoader(url: url, fit: BoxFit.cover, width: 400, borderRadius: 10,);
  }

}
