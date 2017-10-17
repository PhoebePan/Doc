# 前端技術部 - SASS Rule for New Model
=======================


## 目錄


## 1. 資料夾結構


## 2. @import 心法 


* 2.1 [main.sass](#2-1-main-sass)

* 2.2 [pages/*.sass](#2-2-pages-sass)



## 3. sass 基本格式


* 3.1 [基本排版格式](#3-1)
 
    
* 3.2 [屬性依據類型排列](#3-2)


## 4. OOCSS 基礎樣式分類 - 兩大原則


* 4.1 [結構與外觀分離](#4-1)

 

* 4.2 [容器與內容分離](#4-2)



## 5. 命名建議


* 5.1 [使用語意](#5-1)


* 5.2 [名稱擴展](#5-2)


* 5.3 [顏色變數](#5-3)



## 6. 如何模組化 css 程式碼


* 6.1 [分析網頁元素 (HTML 語意化)](#6-1-html)



* 6.2 [評估重複撰寫的相同內容](#6-2)



* 6.3 [UI 元素整理 (表格、選單、按鈕)](#6-3-ui)


## 7. 字級大小


## 8. 注意事項


* 8.1 [避免使用 !important](#8-1-important)


* 8.2 [減少層級及元素依賴性](#8-2)


* 8.3 [清楚地使用 absolute](#8-3-absolute)


## 9. 參考資料
===


## 1. 資料夾結構


與團隊溝通及討論，如何將基礎排版、框架、功能、小組件拆出 components/*.sass。

*  基本層：一般就是 reset.sass 或關於 Sass 的工具之類
*  元件層：處理單個UI元件的 sass
*  框架層：處理網頁整體框架的 sass
*  頁面層：針對一些頁面寫特定的樣式
*  第三方庫：framework 的 sass 文件


```

sass/ 
| 
| 
|– basic/                # basic/基本排版初始化及關於 Sass 的工具之類
|   |- _global.sass      # 共用class
|   |- _reset.sass       # Reset/normalize
|   ...                  # Etc… 
|
|– components/           # components/功能、組件
|   |– _animate.sass     
|   |- _button.sass     
|   |– _components.sass 
|   |– _form.sass
|   |– _lightbox.sass 
|   |– _menu.sass    
|   |– _overlay.sass 
|   |- _tab.sass     
|   ...                  # Etc… 
|
|– function/             # 基本的共用函式庫
|   |- _extend.sass      # 被沿用的樣式
|   |- _flexbox.scss     # flexbox function
|   |- _mixin.sass       # 函式
|   |- _variable.sass    # 參數
| 
|– layout/               # layout/是一個宏觀的（定義全局的線框）
|   |– _flex.sass        # 排版 
|   |– _layout.sass      # header. content. bottom
|   |– _table.sass       # Table
|   |- _title.sass       # 蓋頁是否
|   ...                  # Etc… 
| 
|– pages/                # pages/針對一些頁面寫特定的樣式
|   |– app
|   |– member
|   ...                  # Etc… 
| 
|– vendors/              # vendors/外部的庫和框架的 sass 文件
|   |– _bootstrap.sass   # Bootstrap 
|   |– _jquery-ui.sass   # jQuery UI 
|   ...                  # Etc… 
| 
| 
|– main.sass              # primary Sass file/主要 includ 的 sass file 
```

##  2. @import 心法


###  2.1 main.sass



（必要）@import 基礎共用設定、所有頁面及第三方庫，最終目的只產出一支 main.css 供 mweb 使用。


```
// basic & variables
@import basic/reset      // reset.css
@import basic/variables  // 全域變數(顏色...)
@import basic/mixin      // Mixin
@import basic/common     // 共用樣式設定（字級、字型、常用排版屬性...）

// pages
@import pages/index      // 首頁  
@import pages/page1      // 內頁   

// vendors(optional)
@import vendors/jquery-ui
```


###  2.2 pages/*.sass


（選擇性）依各頁面需求 @import 所需 layout & components。


```
// layout
@import layout/header        // 頁首  
@import layout/footer        // 頁尾

// components
@import component/buttoms    // 按鈕
@import component/navigation // 導航列
@import component/dialog     // 彈跳視窗
```


## 3. sass 基本格式


###  3.1 基本排版格式


* 冒號：冒號前面不空格，後面要空一格。
* 縮排：4個空白。
* 每個樣式宣告 (屬性:值的配對) 都是單獨的一行。
* 每個樣式規則之間要有一個空白行。
* 使用單引號


###  3.2 屬性依據類型排列


請將相關的屬性排列在一起，或是根據屬性的類型，依照下面的順序來排列：


1.  位置 Positioning
2.  盒模型屬性 Display & Box Model
3.  邊框、背景與文字顏色 Color
4.  段落與文字 Text
5.  其他 Other


```
.selector 
    /* 位置 Positioning */
    display: relative
    position: absolute 
    z-index: 10 
    top: 0 
    right: 0
    bottom: 0
    left: 0

    /* 盒模型屬性 Display & Box Model */
    box-sizing: border-box 
    width: 100px 
    height: 100px 
    padding: 10px 
    margin: 10px 

    /* 邊框、背景與文字顏色 Color */
    border: 10px solid #333
    background: #000 

    /* 段落與文字 Text */
    color: #fff
    font-family: sans-serif 
    font-size: 16px 
    line-height: 1.4 
    text-align: right 

    /* 其他 Other */
    cursor: pointer
    opacity: 0
    overflow: hidden
    visibility: visible
    z-index: 0
``` 


## 4. OOCSS 基礎樣式分類 - 兩大原則


###  4.1 <font color="red">結構</font>與<font color="red">外觀</font>分離

Separate Structure and Skin -  (size v.s. color)  

(不建議) 一般的寫法：結構外觀寫在一起。


```
/* size + color */
#button 
    width: 200px
    height: 50px
    padding: 10px
    border: solid 1px id:cc
    background: linear-gradient(id:cc, #222)
    box-shadow: rgba(0, 0, 0, .5) 2px 2px 5px

#box
    overflow: hidden
    width: 400px
    border: solid 1px id:cc
    background: linear-gradient(id:cc, #222)
    box-shadow: rgba(0, 0, 0, .5) 2px 2px 5px

#widget
    overflow: auto
    width: 500px
    min-height: 200px
    border: solid 1px id:cc
    background: linear-gradient(id:cc, #222)
    box-shadow: rgba(0, 0, 0, .5) 2px 2px 5px
```


(推薦) OOCSS的寫法：依據不同頁面或同結構不同長相，以 Class 名稱擴展方式抽離結構及外觀樣式。


```
/* size */
.button 
  width: 200px
  height: 50px

.box 
  width: 400px
  overflow: hidden  

.widget 
  width: 500px
  min-height: 200px
  overflow: auto

/* color */
.skin 
  border: solid 1px id:cc
  background: linear-gradient(id:cc, #222)
  box-shadow: rgba(0, 0, 0, .5) 2px 2px 5p
```


###  4.2 <font color="red">容器</font>與<font color="red">內容</font>分離

Separate Container and Content - (container v.s. content)  

* 避免樣式依賴位置。
* 把容器和內容獨立出來，好處是相同內容可以任意插入到任何容器中。
* 為了讓內容可重用，OOCSS 主張在內容中添加更多的 Class。


(不建議) 一般的做法：樣式相依於結構，一定要 .friday 搭配子項目 .item 才會成立。


######  HTML:

    
    <div class="friday">
        <p class="item">
            <h3>反向傘買一送一<span>$2980</span></a>
        </p>
    </div>

    <div class="fresh">
        <p class="item">
            <h3>反向傘買一送一<span>$2980</span></a>
        </p>
    </div>

    <div class="newmodel">
        <p class="item">
            <h3>反向傘買一送一<span>$2980</span></a>
        </p>
    </div>



######  SASS:
    
    .friday .item 
        font-size: 1.2 em
        text-align: left
        margin: 10 px 0
        /*在內容新加的樣式*/ 
        width: 500 px 
        background-color: #efefef 
        color: #fff

    .fresh .item
        font-size: 1.2 em
        text-align: left
        margin: 10 px 0
        /*在內容新加的樣式*/ 
        width: 300 px 
        background-color: id:3c3c3 
        color: #000

    .newmodel .item
        font-size: 1.2 em
        text-align: left
        margin: 10 px 0
        /*在內容新加的樣式*/ 
        width: 200 px 
        background-color: #f1f1f1 
        color: id:cc
        

        
(推薦) OOCSS 的做法：下通用的基礎樣式，再添加 Class 擴展名稱將樣式抽出來。

######  HTML:


    <div class="friday">
        <p class="item item-friday">
            <h3>反向傘買一送一<span>$2980</span></a>
        </p>
    </div>

    <div class="fresh">
        <p class="item item-fresh">
            <h3>反向傘買一送一<span>$2980</span></a>
        </p>
    </div>

    <div class="newmodel">
        <p class="item item-newmodel">
            <h3>反向傘買一送一<span>$2980</span></a>
        </p>
    </div>


######  SASS:

    .item
        /*基礎內容樣式*/
        font-size: 1.2 em
        text-align: left
        margin: 10 px 0

    .item-friday
        /*在內容新加的樣式*/ 
        width: 500 px 
        background-color: #efefef 
        color: #fff

    .item-fresh
        /*在內容新加的樣式*/ 
        width: 300 px 
        background-color: id:3c3c3 
        color: #000

    .item-newmodel
        /*在內容新加的樣式*/ 
        width: 200 px 
        background-color: #f1f1f1 
        color: id:cc
 
 

 
## 5. 命名建議



###  5.1 使用語意

* ID 和 Class 名稱應該盡可能的反映出該元素的用途、目的或意義，與其用 <font color="red">text-red</font>, 不如用 <font color="red">text-danger</font>。
* 使用連字符號( - )分隔，避免使用底線( _ )或直接連在一起，全部使用小寫字母。

```
// OK
.fw-800
    font-weight: 800
 
.red
    color: red
```

```
// Better
.heavy
    font-weight: 800
 
.important
    color: red

```


### 5.2 名稱擴展

* 名稱擴展: 追加屬性時, 延伸原來的名稱, 例: .item 與 .item.item-friday (oocss)。
* ID 在整個頁面中必須是唯一的，不可重複，除了利於 JS 選擇器使用外，盡可能繼承和重複利用 Class。

```
// .item.item-friday
.item
    display: inline-block
    padding: 6px 12px
    
    &.item-friday
    	background: $white
    	color: $black
    &.item-fresh
    	background: $black
    	color: $white
```

```
// .btn.is-btn-active
.btn
    width: 120px
    height: 24px
   
    &.is-btn-active
        background: $btn-active
        
// .btn.btn-primary, .btn.btn-danger
.btn
    &.btn-primary
        background: $btn-primary

    &.btn-danger
        background: $btn-danger
```

### 5.3 顏色變數

1.  設定顏色變數名稱（$blue, $red）
2.  定義有語意的名稱變數，例如：名詞＋形容詞（$primary-color, $text-danger）

```
// OK
$text-danger: #ff0000
$primary-color: #4183c4
```

```
// Better
$red: #ff0000
$blue: #4183c4
$text-danger: $red
$primary-color: $blue
```

```
// OK
$blue
$dark-blue
$medium-blue
$darkest-blue
$light-blue
$lightest-blue
```
```
// Better
$blue
$blue-dark
$blue-darkest
$blue-light
$blue-lightest
```

## 6. 如何模組化 css 程式碼

### 6.1 分析網頁元素 (HTML 語意化)
1.  語意化用途:<br/>
不是給我們讀的，是給瀏覽器讀的，供裝置辨識的標籤。不用使用語意化寫法也寫得出網頁，但正確使用語意，讓瀏覽器能分辨出標題、內容、語氣、重要性。

2. 語意化的必要性:<br/>
正確的語意化寫法可以提高 SEO、語音瀏覽器、手機裝置的支援。

3. 如何判斷適用的語意 TAG？<br/>
 HTML5doctor 提供了一份[流程圖](http://html5doctor.com/happy-1st-birthday-us/) 供你參考。
 
```
標題： <h1> <h2> <h3>
段落： <p>
列表： <ul> <ol> <li> 
其他： <img> <a> <div> <span>
```

### 6.2 評估重複撰寫的相同內容
尋找每次開發都會重複撰寫的相同內容

1.  命名原則 (images、class)
2.  計算圖片寬高 (mixin)
3.  設計常用排版 Class: pull-left , pull-right , clearfix...



### 6.3 UI 元素整理 (表格、選單、按鈕)
1.  整理出常用的UI元素
2.  表單按鈕
3.  多階層式選單
4.  麵包屑、網站導覽
5.  參考熱門前端框架(Bootstrap)

## 7. 字級大小

使用 rem 設定字體大小時，相對的是 HTML 根元素，因此要設定  `<html>` 的 font-size 大小。
如果沒有設定，預設是 `font-size: 16px`。

```
$html-default-font-size : 10px

html
    font-size: $html-default-font-size
```

使用 rem 定義字級大小，並且同時使用 px 相容於舊版瀏覽器，這可以讓你在使用 rem 的情況下，又不用擔心舊版瀏覽器會無法正確顯示。

```
@mixin pxTorem($px)
    font-size: $px
    font-size: $px / $html-default-font-size + rem
```

## 8. 注意事項

### 8.1 避免使用 !important

* 非必要請不要在屬性中使用 !important，這樣會增加除錯和覆蓋樣式時的困難。
* 如果你從不使用 !important，代表你了解 CSS 是如何計算權重。
* 如何計算權重？

一個行內樣式+1000，一個id+100，一個屬性選擇器/class或者偽類+10，一個元素名，或者偽元素+1


```
body #content .data img :hover
```
最終的權重值是0122，#content 是一個 id 選擇器加了 100，.data 是一個 class 類選擇器加了 10，：hover 偽類選擇器加了 10， body 和 img 是元素加了 1 。

### 8.2 減少層級及元素依賴性

*  讓 CSS 不具相依性（低耦合概念提升可利用性）。
*  不要直接使用 tag 選擇器，會導致對元素依賴。
*  沒有依賴關係，最多的層級不超過三層。

### 8.3 清楚地使用 absolute


absolute 的定位是在他所處上層容器的相對位置。如果這個套用 position: absolute 的元素，其上層容器並沒有「可以被定位」的元素的話，那麼這個元素的定位就是相對於該網頁所有內容（也就是 body 元素）。

absolute 特性：

1.  懸浮原來位置上方，其寬高不佔據任何尺寸。
2.  浮動性：absolute生效時，float失效。

好的寫法：

*  使用 absolute 之前，上層元素記得設定 relative，它會相對於它的父元素進行定位（相對於父元素的絕對定位）。



===
## 9. 參考資料：
* [SASS & RWD 前端版型架構規劃](http://www.slideshare.net/sfismy/sassamprwd)
* [漫談 CSS 架構方法 - 以 OOCSS, SMACSS, BEM 為例](http://www.slideshare.net/kurotanshi/css-oocss-smacss-bem)
* [參透 OOCSS](http://andyyou.logdown.com/posts/290513-understanding-oocss)
* [An Introduction To Object Oriented CSS (OOCSS)](https://www.smashingmagazine.com/2011/12/an-introduction-to-object-oriented-css-oocss/)
* [Name Your SASS Variables Modularly](http://webdesign.tutsplus.com/tutorials/quick-tip-name-your-sass-variables-modularly--webdesign-13364)
* [INTRODUCTION TO OBJECT-ORIENTED CSS](http://magenic.com/Blog/Post/107/Introduction-to-Object-Oriented-CSS)