##  HTML5 Rules (HTML 流程圖)

===

##  1. HTML5 標籤選用流程：

1.  是否為主要巡覽(navigation)區塊？Yes，請使用 `<nav>` 元素。
2.  它自己本身有意義嗎？Yes，請使用 `<article>` 元素。
3.  需要它來了解當前的內容嗎？No，請使用 `<aside>` 元素。
4.  你可以將它移至一個附錄？Yes，請使用 `<figure>` 元素。
5.  是否合乎邏輯的去增加一個標題？Yes，請使用 `<section>` 元素。
6.  它是有擁有任何的語意？

Yes，選用合適的語意標籤，例如，`<p>`、`<address>`、`<blackquote>`、`<pre>` …等。</br>
No，可使用 `<div>` 元素。例如，單純用來進行 CSS 的區塊。


![html flowchart](http://html5doctor.com/downloads/h5d-sectioning-flowchart.png "flowchart")


##  2. 標籤選用詳細說明


*  **`<nav>`** <br/>
導覽列。裡面裝的東西應該只有主要的 navigation links，不要把各種 link 都丟到`<nav>`裡面。舉例來說，footer 裡面常常會有一排 link，那個就不需要包進`<nav>`。連站內的用nav，如果是要導航到外站的，請用section，或是div就好。


*  **`<article>`** <br/>
一個獨立的區塊，必須帶有 heading。article 跟 section 的區分是，article 有更高的獨立性及完整性。
article 本身就算脫離了整體也是一個可以獨立存在、具有完整內容的區塊，例如這篇文章；而 section 雖然也具有獨立表達內容的能力，但是對外層有一定的相依性，例如這篇文章中的一個章節。


* **`<aside>`** <br/>
aside 元素代表從內容分離的部分。這些部分通常被表示為 sidebar 或 interns。他們通常包含 side explanations，像是術語定義；也可以放較為鬆散相關的東西，像廣告、的作者的傳記、個人資料信息或相關連結。

aside 和主內容有關，但不是主內容的一部分，舉個例子：

```
    <p>我們將乘著 New Modal 航向偉大航道！</p>

    <aside>
        <h4>New Modal</h4>
        <p>一個新的吸金模式。</p>
    </aside>

```
Result: 

我們將乘著 New Modal 航向偉大航道！</p>

######  New Modal

一個新的吸金模式。


* **`<figure>`** <br/>
figure 是一個有完整內容的區塊，他是主要內容的一部分，而且可以任意移動位置而不影響整體內容的表達。常見的問題是把每個img都包上 figure，這完全沒有意義。簡單的判斷方式是想想看＂我把這個 figure 拿掉會不會影響到上下文的閱讀？如果會的話，他就絕對不該是一個 figure。
figure絕對不是只拿來包圖片的，他可以包含影音檔、圖表（可能是canvas或是svg）或是一段code，figure是主內容的一部分，但是他可以任意移動或刪除而不影響主內容的表達。


通常`<figure>`會搭配`<figcaption>`服用，他放在第一個或最後一個子元素，像這樣：


``` 
    <figure>
        <img src="/macaque.jpg" alt="Macaque in the trees">
        <figcaption>A cheeky macaque, Lower Kintaganban River, Borneo. Original by 
            <a href="http://www.flickr.com/photos/rclark/">Richard Clark</a>
        </figcaption>
    </figure>
```
Result: 

![figure](http://i.imgur.com/hXCPBi3.png?1 "figure")


* **`<section>`** <br/>
section 內裝的應該是有意義且附帶標題的一段段落，像是文章中的章節。

例如這樣：

```
    <section>
        <h1>Heading</h1>
        <p>Bunch of awesome content</p>
    </section>
```

![html seo](http://www.astralweb.com.tw/wp-content/uploads/2015/02/image0010.png "HTML 結構")

##  3. 正確設置 `<h1>`, `<h2>`, `<h3>`。

`<h1>`~`<h6>`是設置標題用的標籤，其中`<h1>`,`<h2>`,`<h3>`這幾個 html 標籤對 SEO 都有很大的加分作用，尤其是`<h1>`，通常用來強調網頁最重要的部份，可以設置成網頁標題或是文章標題；至於`<h4>`,`<h5>`,`<h6>`相對的就不是那麼重要，可以忽略。


##  4. `<main>` 用法

一支 HTML `<main>` 只會出現一次，出現在內容的最外層，類似我們在使用 `<div class=”wrap”>` 的用法。

######  HTML5 以前的用法：:

    
    <!--header-->
    <div id="header">header</div>
    
    <!--main-->
    <div id="main" class="container">
    
        <!--Contetn-->
        <div id="content">content</div>
    
        <!--sidebar-->
        <div id="sidebar">sidebar</div>
    
    </div>
    
    <!--footer-->
    <div id="footer">footer</div>

    


###### 新的 HTML5 標籤用法：

    
    <!--header-->
    <header>header</header>
    
    <!--main-->
    <main class="container">
    
        <!--article-->
        <article>article</article>
    
        <!--aside-->
        <aside>aside</aside>
    
    </main>
    
    <!--footer-->
    <footer>footer</footer>
    
    
##  5. 常用的標籤例表

以下是常用的標籤例表。

![new html5 tag](http://www.astralweb.com.tw/wp-content/uploads/2015/02/tag.png "常用的標籤例表")

##  6. HTML5 其他好用標籤介紹

###  1.  文字高亮 **`<mark>`** 

```
    <section class="deal-list">
        <article>
            <h2>Vanuatu Cruise</h2>
            <p>
                <mark>$499</mark>- 5 Nights</p>
            <p>A relaxing cruise around the southern most parts of Vanuatu</p>
        </article>
        <article>
            <h2>Fiji Resort Getaway</h2>
            <p>
                <mark>$649</mark> - 6 Nights</p>
            <p>Includes all you can eat buffet and entertainment
            </p>
        </article>
        <article>
            <h2>Pacific Island Hiking</h2>
            <p>$1199 - 5 Nights</p>
            <p>Hike your way though several pacific islands on this exercise focused holiday</p>
        </article>
    </section>
```

Result: 

![mark](http://i.imgur.com/VsBEWI1.png)

<iframe src="https://codepen.io/phoebe_pan/embed/yOOmqg/?height=268&theme-id=0&default-tab=result" height="200px" width="100%"></iframe>


###  2. 低重要度**`<small>`**

```
    <section>
        <article>
            <h3>Woolen Llama Print Jumper</h3>
            <em>$65.99</em><small> - Excludes tax</small>
            <p>
                A warm, woolly jumper made from 100% llamas. You will love the warmth.
            </p>
            <button>Add to cart</button>
        </article>
    </section>   
    <hr>
    <footer>
        <small>
            Designed and developed by Simon Codrington.
        </small>
        <small>
            &copy; 2016 My Company - All rights reserved
        </small>
    </footer>

```

Result: 

![small](http://i.imgur.com/Mq2f0oT.png)

<iframe src="https://codepen.io/phoebe_pan/embed/jqqgKq/?height=268&theme-id=0&default-tab=result" height="200px" width="100%"></iframe>


###  3. 插入、刪除、更正 **`<ins>`**, **`<del>`**, **`<s>`**


*  插入**`<ins>`**： 新插入的文字以下劃線做為顯示，可添加 "cite", "datetime"屬性來描述為何插入新的文字。

```
    <h2>Latest Changes</h2>
    <p>Outlined below are the latest changes</p>
    <h3>Version 1.X branch</h3>
    <ins 
        cite="http://www.johnsmithsblog/changes/1-0-1.html" 
        timestamp="2012-08-09T15:15:00+00:00">
        Version 1.0.1 - August 2012
    </ins>
    <br/>
    <ins 
        cite="http://www.johnsmithsblog/changes/1-0-2.html" 
        timestamp="2012-11-15T06:15:00+00:00">
        Version 1.0.2 - November 2012
    </ins>
    <br/>
    <h3>Version 2.X branch</h3>
    <ins 
        cite="http://www.johnsmithsblog/changes/2-0-0.html" 
        timestamp="2013-01-17T02:50:00+00:00">
        Version 2.0.0 - January 2013
    </ins>
```

Result: 

![ins](http://i.imgur.com/DfTQTiT.png)

<iframe src="https://codepen.io/phoebe_pan/embed/MyKZwb/?height=268&theme-id=0&default-tab=result" height="300px" width="100%"></iframe>


*  刪除**`<del>`**： 定義文檔中已被刪除的文字，可與 **`<ins>`** 搭配描述文檔中的更新和修正，可添加 "cite", "datetime"屬性。

```
    <ul class="to-do-list">
        <li>
            <del datetime="2015-12-03T13:21:32+00:00">
                Pick up the groceries
            </del>
        </li>
        <li>
            <del datetime="2015-12-03T15:15:00+00:00">
                Collect the kids from school
            </del>
        </li>
        <li>
            Cook dinner
        </li>
        <li>
            Work on fancy side projects
        </li>
    </ul>

```

Result: 

![del](http://i.imgur.com/tAft4UC.png)

<iframe src="https://codepen.io/SitePoint/embed/BKBjyr/?height=268&theme-id=0&default-tab=result" height="200px" width="100%"></iframe>


* **`<s>`**加刪除線： **HTML 5 中已不支持。** 定義加刪除線的文本。 


###  4. 定義選項組 **`<optgroup>`**

當使用一個很長的選項列表時，對相關的選項進行群組會使處理更加容易。

```
    <label for="comp-price-filter">
        Select the price range of your next computer
    </label>
    <select class="price-filter" name="comp-price-filter" id="comp-price-filter">
        <optgroup label="Low End">
            <option value="100-300">$100 - $300</option>
            <option value="301-500">$301 - $500</option>
            <option value="501-700">$501 - $700</option>
        </optgroup>
        <optgroup label="Middle Range">
            <option value="701-1200">$701 - $1200</option>
            <option value="1201-1600">$1201 - $1600</option>
        </optgroup>
        <optgroup label="High End">
            <option value="1600-2500">$1600 - $2500</option>
            <option value="2501-3200">$2501 - $3200</option>
        </optgroup>
    </select>

```
Result: 

![optgroup](http://i.imgur.com/kqStVww.png)

<iframe src="https://codepen.io/SitePoint/embed/pyzgJG/?height=268&theme-id=0&default-tab=result" height="200px" width="100%"></iframe>

添加 **`disabled`** 屬性至 **`<optgroup>`** ，可禁用該群組的選項。

但不支援手機設備！

```
    <label for="vacation-dest">Vacation Destinations</label>
    <select name="vaction-dest" id="vacation-dest">
        <optgroup label="East Coast - Australia">
        <option value="NSW">
            New South Wales
        </option>
        <option value="QLD">
            Queensland
        </option>
        <option value="TAS">
            Tasmania
        </option>
        <option value="ACT">
            Australian Capital Territory
        </option>
        <option value="VIC">
            Victoria
        </option>
        </optgroup>
        <optgroup disabled label="West Coast - Australia">
        <option value="WA">
            Western Australia
        </option>
        <option value="NT">
            Northern Territory
        </option>
        <option value="SA">
            South Australia
        </option>
        </optgroup>
    </select>
```

Result: 

![disable](http://i.imgur.com/1KIEZ7L.png)

<iframe src="https://codepen.io/SitePoint/embed/zqOrrx/?height=268&theme-id=0&default-tab=result" height="200px" width="100%"></iframe>


##  7. 參考資料

*  [HTML5元素中區段內容(SECTIONING CONTENT)選用流程](http://blog.kkbruce.net/2012/06/html5sectioning-content.html#.Vt1VDJN95TZ)
*  [HTML5 Semantic Elements](http://apolkingg8.logdown.com/posts/2014/02/04/note-of-semantic-html)
*  [Do You Know These Eight HTML5 Tags?](http://www.sitepoint.com/eight-html5-tags-you-might-not-know/)
