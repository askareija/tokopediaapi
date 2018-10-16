require "tokopedia_api/railtie"
require 'nokogiri'
require 'open-uri'

module TokopediaApi
  def self.get_product(url)
    # Fetch and parse HTML document
    doc = Nokogiri::HTML(open(url))

    # puts "Products Information"
    shop_id = doc.at('input[@name="shop_id"]')['value']
    product_id = doc.at('input[@name="product_id"]')['value']
    product_name = doc.at('input[@name="product_name"]')['value']
    product_image = doc.xpath("//*[@class=\"content-img content-main-img product-detail__fixed-container\"]").at_css('img').attr('src')
    product_link = doc.at('input[@name="product_link"]')['value']
    product_price = doc.at('input[@id="product_price_int"]')['value']
    product_weight_kg = doc.at('input[@name="product_weight_kg"]')['value']
    menu_id = doc.at('input[@name="menu_id"]')['value']
    menu_name = doc.at('input[@name="menu_name"]')['value']
    menu_url = doc.at('input[@name="menu_url"]')['value']

    puts "ID Toko          : #{shop_id}"
    puts "ID Produk        : #{product_id}"
    puts "Nama Produk      : #{product_name}"
    puts "Link Produk      : #{product_link}"
    puts "Gambar Produk    : #{product_image}"
    puts "Harga Produk     : #{product_price}"
    puts "Berat            : #{product_weight_kg}"
    puts "ID Etalase       : #{menu_id}"
    puts "Nama Etalase     : #{menu_name}"
    puts "Link Etalase     : #{menu_url}"

    informations = {
      shop_id: shop_id,
      product_id: product_id,
      product_name: product_name,
      product_image: product_image,
      product_link: product_link,
      product_price: product_price,
      product_weight_kg: product_weight_kg,
      menu_id: menu_id,
      menu_name: menu_name,
      menu_url: menu_url
    }

    return informations
  end
end 
