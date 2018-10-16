# TokopediaApi
## This plugin is still in pre-alpha version and has not been released and is still in the development stage.
A simple rails plugin to get products information from tokopedia.

## Usage
```ruby
require 'tokopedia_api'
```
### Get Product from url
```ruby
TokopediaApi.get_product(url)
```
example : `TokopediaApi.get_product("https://www.tokopedia.com/gandante/asus-strix-rog-gaming-gl553vd-i7-w-gtx-1050-4-gb")` \
the result will return a Hash class :
```
{:shop_id=>"440608", :product_id=>"173268998", :product_name=>"Asus STRIX ROG Gaming GL553VD i7 w/ GTX 1050 4 GB", :product_image=>"https://ecs7.tokopedia.net/img/cache/700/product-1/2017/12/25/173268998/173268998_7fcf9c49-3711-4562-ad05-b6d079cce7cd_2048_0.jpg", :product_link=>"https://www.tokopedia.com/gandante/asus-strix-rog-gaming-gl553vd-i7-w-gtx-1050-4-gb", :product_price=>"12999000", :product_desc=>"Assallamuallaikum Agan2 dan Sista2 , Kembali nih Ane Rizqi Dari GanDanteStore Mau jual Laptop High-End, Check It Out...  Asus STRIX ROG Gaming GL553VD  - Processor : Intel Core i7-7700 HQ 3.8 GHz - Memory : 8 GB DDR4 - Graphic : NVIDIA GeForce GDDR5X 1050 4 GB Dedicated  - Storage :  1 TB 7200 RPM HDD - Display : 15.6\" Full HD IPS Wide-View Anti-Glare Matte - Connectivity : 3x USB 3.0 SuperSpeed, HDMI, headphone / mic combo jack, 802.11a/g/n WLAN, Bluetooth 4.0, Gigabyte Ethernet Mbps, Card Reader - Audio : ASUS ROG AudioWizard Rp. 12.999.000, -  Kondisi : - Like New 99 %  - RGB + NumPad Keyboard  - Silent Cooling System - Garansi 2 Thn ASUS Resmi Sampai 2019 - BONUS : Game2 Terbaru + Softwares + Movies By Request Kelengkapan : - Laptop + Charger Original Note : - Barang ORIGINAL 100 % - Silahkan Kontak Saya untuk Konsultasi - Bisa COD Bandung - Total Harga dan Berat Barang sudah termasuk Biaya Ongkir, Paking Kayu, Bubble Warp, Asuransi serta Biaya Kurir & Jasa LINE : RIZQIDANTE FB FansPage : GanDanteStore IG : GanDanteStore Wesbite : www*GanDanteStore*com  Terimakasih TokoPedia Wassallamuallaikum Wr.Wb.", :product_weight_kg=>"20.00", :menu_id=>"1241306", :menu_name=>"Laptop", :menu_url=>"https://www.tokopedia.com/gandante/etalase/laptop-1"}
```

Hash parameters
<table style="width: 100%">
  <tr>
    <td>shop_id</td>
    <td>Return the shop ID</td>
  </tr>
  <tr>
    <td>product_id</td>
    <td>Return the product ID</td>
  </tr>
  <tr>
    <td>product_name</td>
    <td>Return the product name</td>
  </tr>
  <tr>
    <td>product_image</td>
    <td>Return the product image link</td>
  </tr>
  <tr>
    <td>product_link</td>
    <td>Return the product link on tokopedia website</td>
  </tr>
  <tr>
    <td>product_price</td>
    <td>Return the price of the product</td>
  </tr>
  <tr>
    <td>product_desc</td>
    <td>Return the description of the product</td>
  </tr>
  <tr>
    <td>product_weight_kg</td>
    <td>Return the weight of the product in kilograms</td>
  </tr>
  <tr>
    <td>menu_id</td>
    <td>Return the menu ID (etalase)</td>
  </tr>
  <tr>
    <td>menu_name</td>
    <td>Return the menu name (etalase name)</td>
  </tr>
  <tr>
    <td>menu_url</td>
    <td>Return the url of the menu (etalase url)</td>
  </tr>
</table>

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'tokopedia_api'
```

And then execute:
```bash
$ bundle
```

Or install it yourself as:
```bash
$ gem install tokopedia_api
```

## Contributing
You can contribute to this project to make it better, just ask me

## License
Created by Megumi Aliya &copy; 2018
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
