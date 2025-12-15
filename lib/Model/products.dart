class Products {
  String imgUrl;
  String imgLabel;

  Products(this.imgUrl, this.imgLabel);

  static List<Products> samples = [
    Products('assets/images/Ultra Stretch AIRism Dress - Sleeveless.avif', 'Ultra Stretch AIRism Dress - Sleeveless'),
    Products('assets/images/Broadcloth Shirt - Regular Collar - Striped.avif', 'Broadcloth Shirt - Regular Collar - Striped'),
    Products('assets/images/KIDS AIRism Cotton Graphic T-Shirt.avif', 'KIDS AIRism Cotton Graphic T-Shirt'),
    Products('assets/images/Clay Animation Quilted Pajamas - Long Sleeve.avif', 'Clay Animation Quilted Pajamas - Long Sleeve'),
    Products('assets/images/HEATTECH Ribbed Beanie.avif', 'HEATTECH Ribbed Beanie')
  ];

  get imgTitle => null;
}