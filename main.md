前端小網佈署文件
=============

---

修改紀錄 :

| 更新時間 | 內容 | 編輯者 |
| :-: | :-: | :-: |
| 2016-02-23 | 第一版 | Anson Kao |
| 2017-01-11 | fix router | Anson Kao |
| 2017-03-21 | fix sass | Amao Lee |

---

### 環境設定
__NPM__ - 3.6.0
__Node__ - v5.7.0

```
sudo npm cache clean -f
sudo npm install -g n
sudo n 5.7.0
```

__webpack__ - 1.12.14

---
### 資料夾結構

```
.
├── /dist/                # 存放build之後的Code為空目錄
├── /node_modules/        # 3rd-party libraries and utilities
├── /src/                 # Source Code
│   ├── sass/             # Sass檔案
│   │   ├── basic/        # 基本排版初始化及關於Sass的工具之類
|   |   |   ├── global
|   |   |   ├── reset
│   │   ├── components/   # 是一個微觀的（功能、小組件）
|   |   |   ├── animate
|   |   |   ├── button
|   |   |   ├── components
|   |   |   ├── form
|   |   |   ├── lightbox
|   |   |   ├── menu
|   |   |   ├── overlay
|   |   |   ├── tab
│   │   ├── function/     # 基本的共用函式庫
|   |   |   ├── extend
|   |   |   ├── flexbox
|   |   |   ├── mixin
|   |   |   ├── variable
│   │   ├── layout/       # 是一個宏觀的（定義全局的線框)
|   |   |   ├── bottom
|   |   |   ├── flex
|   |   |   ├── layout
|   |   |   ├── table
|   |   |   ├── title
│   │   ├── pages/        # 針對頁面寫樣式
|   |   |   ├── app
|   |   |   ├── member
│   │   └── vendors/      # 外部的庫和框架的 sass 文件
│   ├── images/           # 圖片檔
│   │   └── icons/        # icon 的圖片檔
│   │   └── css/          # sass 中使用圖片，會被Webpack編譯
│   │   └── js/           # 直接使用圖片，不會經過編譯
│   ├── config/           # JS 使用環境Config
│   ├── html/             # 靜態Html
│   │   ├── index.html    # react app html
│   │   └── member/       # 額外 html
│   ├── member/           # 額外的Code
│   │   ├── pages/        # 額外的 code
│   │   └── modules/      # 額外共用的 module code
│   └── app/              # 小網的Code(除會員中心)
│       ├── actions/      # Redux Action
│       ├── components/   # React Components
│       ├── constants/    # Redux ActionType
│       ├── containers/   # React Containers
│       ├── middleware/   # Redux Middleware
│       ├── reducers/     # Redux Reducers
│       ├── selectors/    # Redux Selectors
│       ├── store/        # Redux Store Config
│       ├── index.js      # Code Entry
│       └── routes.js     # React Router Config
├── /tools/               # 其他插件或者其他插件需要使用Config
├── /doc/                 # 相關文件
├── /test/                # 測試 components 相關程式
│   └── app/              # 對應到 app 資料夾
│       └── components/   # 對應到 app 中的 component 資料夾，依 component 做測試
├── .babelrc              # babel Config
├── .eslintrc             # eslint Config
├── .gitignore            # gitignore Config
├── .sass-lint.yml        # sass-lint Config
├── Dockerfile            # Dockerfile
└── package.json          # The list of 3rd party libraries and utilities
```


---

### Router

```
/index/{id}                               # 首頁(指定到ShowCase)
/sign/{id}                                # 館分類
/region/{id}                              # 大分類
/store/{id}                               # 中分類
/prod/{id}                                # 商品頁
/search/{keyword}                         # 搜尋頁
/cart/list                                # 購物清單
/cart/list/membership                     # 購物清單(For 單購會籍)
/cart/edit/{id}                           # 修改商品規格
/cart/pay/{type}                          # 付費(type: normal,expressCheckout,membership)
/cart/success                             # 購物成功
/provision                                # 會員條款頁

/ecvip/history                            # 瀏覽紀錄
/ecvip/announcement                       # 公告內容頁
/ecvip/expresscheckout/payment            # 快速結帳設定-付款方式
/ecvip/expresscheckout/shipping           # 快速結帳設定-收件人地址
/ecvip/expresscheckout/invoice            # 快速結帳設定-發票
/ecvip/quick/favorite                     # 快速下單-追蹤清單
/ecvip/quick/purchased                    # 快速下單-上次購買
/ecvip/profile/info                       # 會員資料
/ecvip/profile/edit                       # 會員資料維護
/ecvip/profile/password                   # 修改密碼
/ecvip/profile/membership                 # 會籍資訊
/ecvip/profile/message                    # 個人訊息
/ecvip/service/ask/{id}                   # 客服回報-線上回報
/ecvip/service/record                     # 客服回報-回報紀錄
/ecvip/service/contact                    # 客服回報-客服專線
/ecvip/voucher                            # 我的抵用金
/ecvip/coupon                             # 我的加碼券
/ecvip/order/list/all                     # 訂單列表
/ecvip/order/list/change                  # 異動訂單
/ecvip/order/detail/{id}                  # 詳細訂單
/ecvip/faqmap/{id}                        # 常見問題
/ecvip/aftersale/{id}                     # 售後服務

For App
/login                                    # Login
/ecvip/membership/invitation              # 邀請碼輸入頁面
/ecvip/membership/profile                 # 會籍資訊
/prodcap/{id}                             # For Backend Capture
/prodcap/{id}/item/{gid}                  # For Backend Capture

/member/backend/preview                   # For Backend Preview
/member/backend/itempreview               # For Backend Preview

/member/huanuage/provision                # For 華雲登入
/member/huanuage/rule                     # For 華雲條款
```


---

### Git Branch

主線 master

開發 develop

需求 feature

*整理Sass時，從feature開branch整理。

---

### 佈署指令
開啟小網開發環境
_#npm start_

Beta環境佈署
_#NODE\_ENV=beta npm run build_

Stage環境佈署
_#NODE\_ENV=stage npm run build_

正式站環境佈署
_#NODE\_ENV=production npm run build_

自行執行code checkstyle (檢測範圍app下所有js 排除vendor第三方套件資料夾)
_#npm run lint_

*其他指令詳細資訊請直接參照根目錄package.json內容。

---

### 關於 icon sprite
這部分只要將 icon 的素材圖放在 `/src/images/icons/` 的資料夾底下就可以了，編譯的時候會自動將目錄底下的圖片都整合成 sprite 圖，
分別是一倍的圖片 `/dist/images/sprite.png` 跟 retina 用的兩倍圖 `/dist/images/sprite@2x.png`，
產生的 css 則放在 `/dist/css/icon.css`，裡面已經含有所有 icon 的 class 定義，直接配合 `icon` class 在 html 中使用就可以了，
class 的命名規則都是 `icon-{檔名}`，例如其中一張 icon 檔名是 `cart.png`，那產生的 class 名稱就是 `icon-cart`

```
// icon class 使用範例
<i class="icon icon-cart"></i>
```
---

### 圖片壓縮
指令：``` #npm run pngquant ```
參數：(需在 package.json 中 script 裡的 pngquant 做修改)

-i, -input
圖片原始檔的路徑
eg. ``` -i src/images ```

-o, -output
圖片壓縮後的輸出路徑
eg. ``` -o dist/images ```

-q, -quant
圖片壓縮品質的範圍
eg. ```-q 60-85```

-e, -exclude
欲忽略不壓縮的資料夾名稱
eg. ``` -e icons,cart,sign ```

---
### 命名規範

| Main Relation | Other Relations |
| :-: | :-: |
| get() | getXXX() |
| set() | setXXX() |
| n/a | replaceXXX() |
| has() | hasXXX() |
| all() | getXXXs() |
| replace() | setXXXs() |
| remove() | remoteXXX() |
| clear() | clearXXX() |
| isEmpty() | isEmptyXXX() |
| add() | addXXX() |
| register() | registerXXX() |
| count() | countXXX() |
| keys() | n/a |