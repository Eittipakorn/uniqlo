class Products {
  String imgUrl;
  String imgLabel;
  String imgDesc;
  int price;

  Products(this.imgUrl, this.imgLabel, this.imgDesc, this.price);

  static List<Products> samples = [
    Products('assets/images/Ultra Stretch AIRism Dress - Sleeveless.avif', 
              'Ultra Stretch AIRism Dress - Sleeveless',
              'Made with stretchy AIRism fabric for all-day comfort.', 
              990),
    Products('assets/images/Broadcloth Shirt - Regular Collar - Striped.avif', 
              'Broadcloth Shirt - Regular Collar - Striped', 
              'Regular fit suitable for casual or formal styling.', 
              990),
    Products('assets/images/KIDS AIRism Cotton Graphic T-Shirt.avif', 
              'KIDS AIRism Cotton Graphic T-Shirt', 
              'Relaxed silhouette makes it perfect for unisex wear.', 
              290),
    Products('assets/images/Clay Animation Quilted Pajamas - Long Sleeve.avif', 
              'Clay Animation Quilted Pajamas - Long Sleeve', 
              'Characters from popular clay animation works loved by children are now available in the Baby Collection.', 
              490),
    Products('assets/images/HEATTECH Ribbed Beanie.avif', 
              'HEATTECH Ribbed Beanie', 
              '''
              Size
              Around the Head(RELAXED): 45cm, Height: 21cm
              ''', 
              490),
  ];

  get imgTitle => null;
}