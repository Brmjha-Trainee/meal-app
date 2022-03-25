class PhotoItem {
  final String image;
  final String name;
  final String description;
  PhotoItem(this.image, this.name, this.description);
}
 List<PhotoItem> imgList = [
    PhotoItem('images/burger.jpg', 'Burgers', 'Grilled beef burger'),
    PhotoItem('images/spaghetti.jpg', 'Italian', 'Spaghetti with tomato sauce'),
    PhotoItem('images/toast.jpg', 'Quick & easy', 'Toast Hawaii'),
  ];