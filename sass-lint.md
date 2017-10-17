#sass-lint設定文件


### 目錄

### 1. sass-lint 版本

### 2. Sublime 套件使用

### 3. .sass-lint.yml 設定說明

---

### 1. sass-lint 版本

__Sass Lint__ - v1.1.0  

---


### 2. Sublime 套件使用
sublimelinter  
SublimeLinter-contrib-sass-lint

---

### 3. .sass-lint.yml  設定說明

參考規則：
<https://github.com/sasstools/sass-lint/tree/develop/docs/rules>

```
options:
    merge-default-rules: false
rules:
    #允許最多層數
    bem-depth:
        - 0
        - max-depth: 3

    #邊框設置0或none
    border-zero:
        - 1
        - convention: '0'

    #大括號樣式
    brace-style:
        - 1
        - allow-single-line: false     #允許在同一行

    #class命名格式為小寫和連結線
    class-name-format:
        - 2
        - convention: hyphenatedlowercase     #小寫和連接線

    #匯入檔案限制
    clean-import-paths:
        - 1
        - filename-extension: false     #是否要副檔名
          leading-underscore: false     #是否起頭加上下底線

    #tag之間需空一行
    empty-line-between-blocks:
        - 1
        - ignore-single-line-rulesets: true     #忽略同一行規則

    #宣告之前做extends
    extends-before-declarations: 1

    #mixin之前做extends
    extends-before-mixins: 1

    #結尾是否換行
    final-newline:
        - 1
        - include: true

    #強制屬性選取器巢狀
    force-attribute-nesting: 1

    #強制元素選取器巢狀
    force-element-nesting: 2

    #強制偽元素選取器巢狀
    force-pseudo-nesting: 2

    #function命名的規則
    function-name-format:
        - 1
        - allow-leading-underscore: false     #是否允許加下底線
          convention: camelcase     #駝峰式命名

    #色碼的長短      
    hex-length:  
        - 1
        - style: short

    #色碼大小寫
    hex-notation:   
        - 1
        - style: lowercase     #小寫

    #id名稱允許
    id-name-format:
        - 1
        - convention: hyphenatedlowercase     #小寫加上連接線

    #縮排設置
    indentation:
        - 0
        - size: 4

    #是否加上0 例：margin: .5em;
    leading-zero:  
        - 1
        - include: true

    #mixin命名規範
    mixin-name-format:   
        - 1
        - allow-leading-underscore: false   #允許第一個字有下底線
          convention: camelcase
    mixins-before-declarations: 1     #宣告之前做mixins

    #巢狀的深度
    nesting-depth:
        - 1
        - max-depth: 2                 #巢狀最多幾層

    no-color-keyword: 1         #色票規則 例如：white    
    no-color-literals: 0        #使用顏色變數,而不是色票文字
    no-css-comments: 1          #不使用css的註解
    no-debug: 1                 #不使用debug的功能
    no-duplicate-properties: 1  #不使用重複屬性
    no-empty-rulesets: 1        #檢測tag裡是否沒有規則
    no-extends: 0               #不允許extends
    no-ids: 2                   #不允許id
    no-important: 2             #不允許important
    no-invalid-hex: 1           #檢測無效的色碼
    no-mergeable-selectors: 1   #不允許合併選取器

    #不允許拼錯屬性
    no-misspelled-properties:   
        - 2
        - extra-properties: [ audio,q,svg,blockquote,input,button ]    #額外的屬性列表

    #元素的排列
    no-qualifying-elements:       
        - 1
        - allow-element-with-attribute: false  #允許元素接著屬性
          allow-element-with-class: false      #允許元素接著class
          allow-element-with-id: false         #允許元素接著id

    no-trailing-zero: 1       #不允許尾部的0例如：margin:.500em;
    no-transition-all: 1      #不允許寫transition
    no-url-protocols: 1       #不允許連結的路徑
    no-vendor-prefixes:       #不加前綴字
        - 0
        - additional-identifiers: []
          excluded-identifiers: []
    placeholder-in-extend: 0
    placeholder-name-format:
        - 0
        - convention: hyphenatedlowercase

    #是否按照屬性順序編寫
    property-sort-order: 
        - 1
        - order:
            - display
            - position
            - top
            - right
            - bottom
            - left
            - flex
            - flex-basis
            - flex-direction
            - flex-flow
            - flex-grow
            - flex-shrink
            - flex-wrap
            - align-content
            - align-items
            - align-self
            - justify-content
            - order
            - box-sizing
            - width
            - min-width
            - max-width
            - height
            - min-height
            - max-height
            - margin
            - margin-top
            - margin-right
            - margin-bottom
            - margin-left
            - padding
            - padding-top
            - padding-right
            - padding-bottom
            - padding-left
            - float
            - clear
            - columns
            - column-gap
            - column-fill
            - column-rule
            - column-span
            - column-count
            - column-width
            - transform
            - transform-box
            - transform-origin
            - transform-style
            - transition
            - transition-delay
            - transition-duration
            - transition-property
            - transition-timing-function
            - border
            - border-top
            - border-right
            - border-bottom
            - border-left
            - border-width
            - border-top-width
            - border-right-width
            - border-bottom-width
            - border-left-width
            - border-style
            - border-top-style
            - border-right-style
            - border-bottom-style
            - border-left-style
            - border-radius
            - border-top-left-radius
            - border-top-right-radius
            - border-bottom-left-radius
            - border-bottom-right-radius
            - border-color
            - border-top-color
            - border-right-color
            - border-bottom-color
            - border-left-color
            - outline
            - outline-color
            - outline-offset
            - outline-style
            - outline-width
            - background
            - background-attachment
            - background-clip
            - background-color
            - background-image
            - background-repeat
            - background-position
            - background-size
            - color
            - font
            - font-family
            - font-size
            - font-smoothing
            - font-style
            - font-variant
            - font-weight
            - letter-spacing
            - line-height
            - list-style
            - text-align
            - text-decoration
            - text-indent
            - text-overflow
            - text-rendering
            - text-shadow
            - text-transform
            - text-wrap
            - white-space
            - word-spacing
            - border-collapse
            - border-spacing
            - box-shadow
            - caption-side
            - content
            - cursor
            - empty-cells
            - opacity
            - overflow
            - quotes
            - speak
            - table-layout
            - vertical-align
            - visibility
            - z-index
        - ignore-custom-properties: false

    #屬性單位
    property-units:      
        - 1
        - global:
            - ch
            - em
            - ex
            - rem
            - cm
            - in
            - mm
            - pc
            - pt
            - px
            - q
            - vh
            - vw
            - vmin
            - vmax
            - deg
            - grad
            - rad
            - turn
            - ms
            - s
            - Hz
            - kHz
            - dpi
            - dpcm
            - dppx
            - '%'
          per-property: {}
    quotes:
        - 1
        - style: double

    #簡寫值   
    shorthand-values:  
        - 1
        - allowed-shorthands:  #允許簡寫的陣列數
            - 1
            - 2
            - 3
    single-line-per-selector: 0     #選取器和他的子代選取器同行
    space-after-bang:     #驚嘆號後加空白
        - 1
        - include: false
    space-after-colon:    #冒號後加空白
        - 2
        - include: true
    space-after-comma:    #逗號後加空白
        - 2
        - include: true
    space-before-bang:    #驚嘆號前加空白
        - 1
        - include: true
    space-before-brace:   #括號前加空白
        - 0
        - include: true
    space-before-colon:   #冒號前加空白
        - 1
        - include: false
    space-between-parens: #子代選取器加空白
        - 1
        - include: false
    trailing-semicolon:   #加分號
        - 2
        - include: false

    #連結的引號
    url-quotes: 1    

    #屬性使用變數 例如：color: $body-text;      
    variable-for-property:    
        - 0
        - properties: []

    #變數命名格式
    variable-name-format:     
        - 1
        - allow-leading-underscore: false  #允許下底線
          convention: hyphenatedlowercase   #使用小寫與連接線

    #0的時候不加單位      
    zero-unit: 1     