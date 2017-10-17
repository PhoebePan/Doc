## 圖片（images）命名規則 

###  1. images 資料夾結構

*  圖示層：放置 icon 圖示，合成雪碧圖用
*  頁面層：放置頁面特定圖片，資料夾命名參考 Router 路徑。
*  bg-*：背景圖
*  logo-*：logo 圖
*  img-*：其他通用內容圖像


```
images/ 
| 
| 
|– icons/                # icons/圖示，合成雪碧圖用
|   |- cart.png          # 購物車
|   |– cash.png          # 錢字號
|   |– clock.png         # 小時鐘 
|   |– love.png          # 我的最愛
|   |– more.png          # 更多
|   ...                  # Etc… 
| 
| 
|– sign/                 # 大分類/頁面特定圖片資料夾
|   |- sign1.png         # sign1
|   |- sign2.png         # sign2
|   |- sign3.png         # sign3
|   ...                  # Etc…
| 
| 
|– region/               # 中分類/頁面特定圖片資料夾
|   |- region1.png       # region1
|   |- region2.png       # region2
|   |- region3.png       # region3
|   ...                  # Etc…
| 
| 
|– store/                # 小分類/頁面特定圖片資料夾
|   |- store1.png        # store1
|   |- store2.png        # store2
|   |- store3.png        # store3
|   ...                  # Etc…
| 
| 
|– prod/                 # 產品頁/頁面特定圖片資料夾
|   |- product1.png      # product1
|   |- product2.png      # product2
|   |- product3.png      # product
|   ...                  # Etc…
| 
| 
|– search/               # 搜尋頁/頁面特定圖片資料夾
|   |- search1.png       # search1
|   |- search2.png       # se2arch
|   |- search3.png       # search3
|   ...                  # Etc…
| 
| 
|– cart/                 # 購物車/頁面特定圖片資料夾
|   |- cart.png          # cart1
|   |- cart-list.png     # cart2
|   |- cart-pay.png      # cart3
|   ...                  # Etc…
| 
| 
|– member/               # 會員中心/頁面特定圖片資料夾
|   |- member1.png       # member1
|   |- member2.png       # member2
|   |- member3.png       # member3
|   ...                  # Etc…
| 
| 
|- bg-vip.png            # background for vvip
|- bg-no-vip.png         # background for no vip
| 
|- logo-friday.png       # friday logo
|- logo-friday-s.png     # friday logo small
|- logo-facebook.png     # facebook logo
|- logo-line.png         # line logo
| 
|– img-*.png             # 其他通用內容圖像


```

##   2. 圖片命名方式

*  全部英文小寫
*  使用連字符號( - )分隔，避免使用底線( _ )或直接連在一起。

###  2.1 前綴

*  bg-* 用於背景圖
*  logo-* 用於 logo
*  img-* 其他不屬於 icon, bg, logo 之其他內容圖像

###  2.2 名詞 + 形容詞
* banner-top
* banner-bottom



###  2.3. 圖片尺寸縮寫

*  logo-friday-l.png
*  logo-friday-s.png


```
// Sizing
-xs (extra small)
-s  (small)
-m  (medium)
-l  (large)
-xl (extra large)
```

##  4. 雪碧圖（Sprite）

###  4.1 使用 sass 製作雪碧圖
將要合併的圖片放在 icon 資料夾下，npm start 會自動產生一張合併檔，同時設定好座標。

經過 webpack 編譯成css

```
.icon {  background: url('icons-s0859518ac7.png') no-repeat; }
.icon-cart {  background-position: 0 0; }
.icon-cash {  background-position: 0 -32px; }
.icon-clock {  background-position: 0 -64px; }
```

### 4.2 icon 切圖注意事項

* 圖片請保留透明底，讓元件的小大一致。（如下圖說明）
* 在切圖的時候，不要依照 icon 的形狀做切圖，因為每個 icon 的高度、寬度都會不一致，不好對齊、標示。

![icon cut](http://vide.tw/wp-content/uploads/2015/08/slice_exam-011.jpg "切圖方式")