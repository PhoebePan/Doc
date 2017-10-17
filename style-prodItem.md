# 商品列表規範(版本1)

## #1 框架第一層

1. 橫向：product-item-row
2. 直向：product-item-column
3. 贈品、配件：fit-item-box

## #2 產品框架第二層 prod-items

1. vip商品：is-vip
2. 配件：fit-item is-fit
3. 贈品未選取時：fit-item
4. 贈品選取時：fit-item is-check
5. shop-all：寫死的，首頁才有，在 product-item-row 之下
6. <div className="prod-items">
         <div className="shop-all">
              shop-all <br /> 在此類別
         </div>
    </div>
7. 下拉式選單(贈品)：`選取時 <select className="is-check">`
8. <div className="select-box">
         <label className="style-select">
              <select className="">
                   <option>粉紅色 - s</option>
              </select>
         </label>
    </div>

## #3 子框架

1. 商品圖片：prod-pic
    1. 圖片大小 86(商品資訊有配件贈品的時候)：lv3
2. 商品資訊：prod-info
    1. 商品標題：product-title
        1. 尚未成為vip：yet-vip
    2. 商品名稱：product-name
    3. 商品價錢：product-price
        1. 單位：unit
    4. 商品變價：product-smart-price
        1. icon：icon-pricechange
    5. 商品規格：product-spec
        1. no-more：純資料，不是去編輯頁的連結
            1. icon：icon-more，去編輯頁的連結
    6. 商品VIP：product-vip
        1. icon：icon-learn
    7. 訂單功能按鈕
    8. 配件名稱：product-fit
3. 刪除 icon：<div className="icon icon-delete"></div>
4. 選取 icon：<div className="icon icon-selected flex-self-center"></div>

## #4 icon

* radiobtn
    * 選取：icon-selected
    * 未選取：icon-unselected
* checkbox
    * 勾選：icon-checked
    * 未勾選icon-unchecked
* 商品變價 icon
    * icon-pricechange
* 商品規格資訊更多 icon
    * icon-more
* 刪除 icon 
    *  icon-delete
* 瞭解更多 icon
    * icon-learn

## #5 else

1. #靠左(float: left)：pull-left
2. #限制文字行數：text-ellipsis
3. #並排：flex-row 
4. #3-2-e 商品規格：product-spec
5. <div className="product-spec"> #3-2-e
        <div className="flex-1">
            <div>規格：皮套黑+充電+usb+充電+usb</div>
            <div>數量：234</div>
            <div>配件：無線滑鼠、無線滑鼠、無線滑鼠、無線滑鼠無線滑鼠</div>
            <div>配件：無線鍵盤</div>
        </div>
        <div className="icon icon-more"></div>  #3-2-e-1
    </div>
6. #3-2-f 商品VIP：product-vip
7. <a className="flex-row product-vip">    #3-2-f
        <div>詳細資訊請點我或啟動邀請碼</div>
        <div className="icon icon-learn"></div> #3-2-f-1 
    </a>
    
    
8. 商品快照
9. <div className="prod-pic lv3">  #3-1-a
        <img src="http://cdn.kingstone.com.tw/cvlife/images/product/20058/2005830020783/2005830020783Abs2.JPG" />
        <a>
            <div className="text-center txt-12 txt-blue-light">商品快照</div> #
        </a>
    </div>

# 範例

## #橫向

* #1-1 橫向滾軸：product-item-row
* #2-5 shop-all：寫死的，首頁才有，在 product-item-row 之下

```
# 範例1 首頁、其他人也看過(橫向)
<div className="product-item-row">  #1-1
    <div className="prod-items">    #2
        <div className="prod-pic">  #3-1
             <img src="http://cdn.kingstone.com.tw/cvlife/images/product/20058/2005830020783/2005830020783Abs2.JPG" />
        </div>
        <div className="prod-info"> #3-2
            <div className="product-title"> #3-2-a
                簡單迅速超省力
            </div>
            <div className="product-name text-ellipsis"> #3-2-b
                (太妃糖)美式作風洋基棒球帽美式作風洋基棒球帽美式作風洋基棒球帽
            </div>
            <div className="product-price"> #3-2-c
                <span className="unit">$</span>1,688    #3-2-c-1
            </div>
            <div className="flex-row product-smart-price"> #3-2-d
                <div className="icon icon-pricechange"></div>買越多省越多 #3-2-d-1
            </div>
        </div>
    </div>
    ...
    <div className="prod-items">    ＃2-5
        <div className="shop-all">
            shop-all <br /> 在此類別
        </div>
    </div>
</div>
```

[Image: file:///-/blob/KCdAAARGTzb/hObOf8Fv9LCt7AZJJ7RCQg][Image: file:///-/blob/KCdAAARGTzb/SqvnrSKxryFMXbuY4ftXJg]













## #直向

* #1-2 直向：product-item-column

```
# 範例2 館分類大分類中分類(直向)
<div className="product-item-column">   #1-2
    <div className="prod-items">    #2
        <div className="prod-pic">  #3-1
             <img src="http://cdn.kingstone.com.tw/cvlife/images/product/20058/2005830020783/2005830020783Abs2.JPG" />
        </div>
        <div className="prod-info"> #3-2
            <div className="product-title"> #3-2-a
                簡單迅速超省力
            </div>
            <div className="product-name text-ellipsis">    #3-2-b
                (太妃糖)美式作風洋基棒球帽美式作風洋基棒球帽美式作風洋基棒球帽
            </div>
            <div className="product-price"> #3-2-c
                <span className="unit">$</span>1,688    #3-2-c-1
            </div>
            <div className="flex-row product-smart-price">   #3-2-d
                <div className="icon icon-pricechange"></div>買越多省越多 #3-2-d-1
            </div>
        </div>
    </div>
    ...
</div>
```

[Image: file:///-/blob/KCdAAARGTzb/tRfrf3L-doXIJfD-b-dxoQ]




















## #3-3 刪除 icon

* <div className="icon icon-delete"></div>

```
# 範例3 快速下單(直向)
<div className="product-item-column">   #1-2
    <div className="prod-items">    #2
        <div className="prod-pic">  #3-1
             <img src="http://cdn.kingstone.com.tw/cvlife/images/product/20058/2005830020783/2005830020783Abs2.JPG" />
        </div>
        <div className="prod-info"> #3-2
            <div className="product-title"> #3-2-a
                簡單迅速超省力
            </div>
            <div className="product-name text-ellipsis">    #3-2-b
                (太妃糖)美式作風洋基棒球帽美式作風洋基棒球帽美式作風洋基棒球帽
            </div>
            <div className="product-price"> #3-2-c
                <span className="unit">$</span>1,688    #3-2-c-1
            </div>
            <div>
                <div className="flex-row product-smart-price">   #3-2-d
                    <div className="icon icon-pricechange"></div>買越多省越多 #3-2-d-1
                </div>
            </div>
        </div>
        <div className="icon icon-delete"></div> #3-3
    </div>
</div>
```

[Image: file:///-/blob/KCdAAARGTzb/G-TyFNiGjbQ9YaaDK_Zonw]







## #3-4 選取 icon

* <div className="icon icon-selected flex-self-center"></div>
* 選取：icon-selected
* 未選取：icon-unselected

```
# 範例4 瀏覽紀錄(直向)
<div className="product-item-column">   #1-2
    <div className="prod-items">    #2
        <div className="icon icon-selected flex-self-center"></div> #3-4
        <div className="prod-pic">  #3-1
             <img src="http://cdn.kingstone.com.tw/cvlife/images/product/20058/2005830020783/2005830020783Abs2.JPG" />
        </div>
        <div className="prod-info">  #3-2
            <div className="product-title">  #3-2-a
                簡單迅速超省力
            </div>
            <div className="product-name text-ellipsis">    #3-2-b
                (太妃糖)美式作風洋基棒球帽美式作風洋基棒球帽美式作風洋基棒球帽
            </div>
            <div className="product-price">  #3-2-c
                <span className="unit">$</span>1,688    #3-2-c-1
            </div>
            <div className="flex-row product-smart-price">  #3-2-d
                <div className="icon icon-pricechange"></div>買越多省越多 #3-2-d-1
            </div>
        </div>
    </div>
</div>
```

[Image: file:///-/blob/KCdAAARGTzb/iFAMwr3Pf9sr8iv2d137AA]







## #3-2-e 商品規格：

* #3-1-a 商品圖片大小86(商品資訊有配件贈品的時候)：lv3
* #3-2-e 商品規格：product-spec
* <div className="product-spec"> #3-2-e
        <div className="flex-1">
            <div>規格：皮套黑+充電+usb+充電+usb</div>
            <div>數量：234</div>
            <div>配件：無線滑鼠、無線滑鼠、無線滑鼠、無線滑鼠無線滑鼠</div>
            <div>配件：無線鍵盤</div>
        </div>
        <div className="icon icon-more"></div>  #3-2-e-1
    </div>
* #3-2-e-1 去編輯頁的 icon 連結：icon-more
* #3-3 刪除： icon-delete

```

# 範例5 購物車(直向)
<div className="product-item-column">   #1-2
    <div className="prod-items">    #2
        <div className="prod-pic lv3"> #3-1-a
             <img src="http://cdn.kingstone.com.tw/cvlife/images/product/20058/2005830020783/2005830020783Abs2.JPG" />
        </div>
        <div className="prod-info">  #3-2
            <div className="product-title"> #3-2-a
                簡單迅速超省力
            </div>
            <div className="product-name text-ellipsis">    #3-2-b
                (太妃糖)美式作風洋基棒球帽美式作風洋基棒球帽美式作風洋基棒球帽
            </div>
            <div className="product-price"> #3-2-c
                <span className="unit">$</span>1,688    #3-2-c-1
            </div>
            <div className="product-spec"> #3-2-e
                <div className="flex-1">
                    <div>規格：皮套黑+充電+usb+充電+usb</div>
                    <div>數量：234</div>
                    <div>配件：無線滑鼠、無線滑鼠、無線滑鼠、無線滑鼠無線滑鼠</div>
                    <div>配件：無線鍵盤</div>
                </div>
                <div className="icon icon-more"></div>  #3-2-e-1
            </div>
        </div>
        <div className="icon icon-delete"></div>    #3-3
    </div>
</div>
```

[Image: file:///-/blob/KCdAAARGTzb/ay3vDRjPwLIWn5onpzx29A]












## #3-2-e 商品規格

* #3-2-e-1 純資料，不是去編輯頁的連結：no-more

```
# 範例6 商品資訊、(直向)
<div className="product-item-column">   #1-2
    <div className="prod-items">    #2
        <div className="prod-pic lv3">  #3-1-a
             <img src="http://cdn.kingstone.com.tw/cvlife/images/product/20058/2005830020783/2005830020783Abs2.JPG" />
        </div>
        <div className="prod-info"> #3-2
            <div className="product-title">  #3-2-a
                簡單迅速超省力
            </div>
            <div className="product-name text-ellipsis">    #3-2-b
                (太妃糖)美式作風洋基棒球帽美式作風洋基棒球帽美式作風洋基棒球帽
            </div>
            <div className="product-price"> #3-2-c
                <span className="unit">$</span>1,688    #3-2-c-1
            </div>
            <div className="product-spec no-more">  #3-2-e-1
                <div className="flex-1">
                    <div>配件：無線鍵盤</div>
                </div>
            </div>
        </div>
    </div>
</div>
```

[Image: file:///-/blob/KCdAAARGTzb/UoxDkV9hanQ9367qz9FKnQ]







## #3-2-f 商品VIP：

* #2-1vip商品：is-vip
* #3-2-a-1尚未成為vip：yet-vip
* #3-2-f  商品VIP：product-vip
* #3-2-f-1 瞭解更多： icon-learn
* <a className="flex-row product-vip">    #3-2-f
        <div>詳細資訊請點我或啟動邀請碼</div>
        <div className="icon icon-learn"></div> #3-2-f-1 
    </a>

```
# 範例7 商品資訊VIP(直向)
<div className="product-item-column">   #1-2
    <div className="prod-items is-vip"> #2-1
        <div className="prod-pic lv3">   #3-1-a
             <img src="http://cdn.kingstone.com.tw/cvlife/images/product/20058/2005830020783/2005830020783Abs2.JPG" />
        </div>
        <div className="prod-info"> #3-2
            <div className="product-title"> #3-2-a
                friday加購<span className="yet-vip">(您尚未成為我們的會員)</span>   #3-2-a-1
            </div>
            <div className="product-name text-ellipsis">    #3-2-b
                一年期VIP會籍成為加購會員享受新購物生活
            </div>
            <div className="product-price"> #3-2-c
                <span className="unit">$</span>1,688    #3-2-c-1
            </div>
            <a className="flex-row product-vip">    #3-2-f
                <div>詳細資訊請點我或啟動邀請碼</div>
                <div className="icon icon-learn"></div> #3-2-f-1 
            </a>
        </div>
    </div>
</div>
```

[Image: file:///-/blob/KCdAAARGTzb/owQEDG-s7leU-1TYqI5Uhw]






## #3-2-g 商品訂單查詢：

# 訂單功能按鈕
#3-2-e-1 純資料，不是去編輯頁的連結：no-more
#商品快照

```
#範例8    商品訂單資訊(直向)
<div className="product-item-column">   #1-2
    <div className="prod-items">    #2-1
        <div className="prod-pic lv3">  #3-1-a
             <img src="http://cdn.kingstone.com.tw/cvlife/images/product/20058/2005830020783/2005830020783Abs2.JPG" />
            <a>
                <div className="text-center txt-12 txt-blue-light">商品快照</div> #
            </a>
        </div>
        <div className="prod-info"> #3-2
            <div className="product-title"> #3-2-a
                簡單迅速超省力
            </div>
            <div className="product-name text-ellipsis">    #3-2-b
                (太妃糖)美式作風洋基棒球帽美式作風洋基棒球帽美式作風洋基棒球帽
            </div>
            <div className="product-price"> #3-2-c
                <span className="unit">$</span>1,688    #3-2-c-1
            </div>

            <div className="product-spec no-more">  #3-2-e-1
                <div className="flex-1">
                    <div>規格：皮套黑+充電+usb+充電+usb</div>
                    <div>數量：234</div>
                </div>
            </div>
            <div className="flex-row">  # 功能按鈕
                <div className="btn btn4">我要取消</div>
                <div className="btn btn4">聯絡客服</div>
            </div>
        </div>
    </div>
</div>  
```

[Image: file:///-/blob/KCdAAARGTzb/w2wS8xWwR_ZKsvBu2W56vg]










## #配件：

* #1-3贈品、配件：fit-item-box
* #2-2配件：fit-item is-fit
* #3-2-h配件名稱： product-fit

```
#範例9    配件
<div className="fit-item-box">  #1-3
    <div className="prod-items fit-item is-fit">    #2-2
        <div className="prod-pic">  #3-1
             <img src="http://cdn.kingstone.com.tw/cvlife/images/product/20058/2005830020783/2005830020783Abs2.JPG" />
        </div>
        <div className="prod-info"> #3-2
            <div className="product-fit">   #3-2-h
                簡單迅速超省力
            </div>
        </div>
    </div>
</div>
```

[Image: file:///-/blob/KCdAAARGTzb/tucPUzxkA2KINNN0uHG8tQ]













## #贈品

* #1-3贈品、配件：fit-item-box
* #2-3贈品：fit-item 
* #2-4贈品選取 ：`fit-item is-check`
* #3-2-h配件名稱： product-fit
* #靠左(float: left)：pull-left
* checkbox
    * 勾選：icon-checked
    * 未勾選icon-unchecked
* #2-7下拉式選單(贈品)：`選取時 <select className="is-check">`
* <div className="select-box">
         <label className="style-select">
              <select className="">
                   <option>粉紅色 - s</option>
              </select>
         </label>
    </div>

```
#範例10    贈品
<div className="fit-item-box">  #1-3
    <div className="pull-left">
        <div className="prod-items fit-item">   #2-3
            <div className="prod-pic">  #3-1
                 <img src="http://cdn.kingstone.com.tw/cvlife/images/product/20058/2005830020783/2005830020783Abs2.JPG" />
                 <div className="icon icon-unchecked"></div>
            </div>
            <div className="prod-info"> #3-2
                <div className="product-fit">      #3-2-h
                    簡單迅速超省力
                </div>
            </div>
        </div>
        <div className="select-box">    ＃2-7 下拉式選單(贈品)
            <label className="style-select">
                <select className="">
                    <option>粉紅色 - s</option>
                </select>
            </label>
        </div>
    </div>
    <div className="pull-left">
        <div className="prod-items fit-item is-check"> #2-4 下拉式選單(贈品)
            <div className="prod-pic">  #3-1
                 <img src="http://cdn.kingstone.com.tw/cvlife/images/product/20058/2005830020783/2005830020783Abs2.JPG" />
                 <div className="icon icon-checked"></div>
            </div>
            <div className="prod-info"> #3-2
                <div className="product-fit">
                    簡單迅速超省力
                </div>
            </div>
        </div>
        <div className="select-box">        ＃2-7 下拉式選單(贈品)
            <label className="style-select">
                <select className="is-check">   
                    <option>粉紅色 - s</option>
                </select>
            </label>
        </div>
    </div>
</div>
```

[Image: file:///-/blob/KCdAAARGTzb/CJC0UI57e_2e7QCK6QCUqQ]
```

```


