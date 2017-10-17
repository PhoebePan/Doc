ESLint 設定文件
=

### 目錄

### 1. ESLint 版本

### 2. Sublime 套件使用

### 3. .eslintrc 設定說明

---

### 1. ESLint 版本
__eslint__ - 2.2.0  
__eslint-plugin-react__ - 4.1.0  
__babel-eslint__ - 5.0.0


### 2. Sublime 套件使用
sublimelinter  
sublimelinter-contrib-eslint


### 3. .eslintrc 設定說明

```
{

    "parserOptions": { // ESLint 預設只支援 ES5 語法，若要支援 ES6 或其它需在這做設定
        "ecmaVersion": 6, // 設定 ecma 版本
        "sourceType": "module", // 預設為 "script"，new model 的 js 是使用模組化的寫法
        "ecmaFeatures": { // 用來設定額外的語言特性
            "jsx": true // new model 中使用到 jsx
        }
    },

    "env": { // 設定有在什麼環境執行，這樣使用該環境的全域變數不會被判定為使用前未定義
        "browser": true,
        "node": true,
        "es6": true
    },

    "plugins": ["react"], // third-party plugins

    "rules": { // 設定欲使用的檢查規則(0: 不使用, 1: 視為警告, 2: 視為錯誤)
        // Possible Errors
        "no-console": 2, // console 視為錯誤
        "no-empty": 2, // statement 為空視為錯誤(eg. if (foo === bar) {})
        "no-extra-semi": 2, // 多餘分號視為錯誤
        "no-func-assign": 2, // 覆寫已有 function 視為錯誤
        "no-inner-declarations": 2, // 函式宣告式在判斷式或迴圈中出現視為錯誤，匿名函式不在此限

        // Best Practices
        "curly": 2, // statement 未使用大括號視為錯誤
        "default-case": 2, // switch 中未定義 default case 視為錯誤
        "dot-notation": 2, // 存取物件屬性未使用 dot(.) 視為錯誤
        "eqeqeq": 2, // 比較時未使用嚴格比較(===/!==)視為錯誤
        "no-alert": 2, // alert 視為錯誤
        "no-caller": 2, // caller/callee 視為錯誤
        "no-eval": 2, // eval 視為錯誤
        "no-extend-native": 0, // extend 原生物件視為錯誤
        "no-labels": 2, // label 視為錯誤
        "no-lone-blocks": 2, // 多餘的大括號視為錯誤
        "no-loop-func": 2, // 迴圈內的 function 視為錯誤
        "no-multi-spaces": 2, // 多餘的空格視為錯誤
        "no-multi-str": 2, // 一字串多行表示視為錯誤
        "no-native-reassign": 2, // 覆寫原生物件視為錯誤
        "no-new": 2, // new constructor 時未指定給變數視為錯誤
        "no-new-func": 2, // new Function 時建立函式視為錯誤
        "no-new-object": 2, // new Object 時建立物件視為錯誤
        "no-new-wrappers": 2, // new String/Number/Boolean 時建立變數是為錯誤
        "no-octal-escape": 2, // 八進制視為錯誤
        "no-proto": 2, // __proto__ 視為錯誤
        "no-return-assign": 2, // return 時 assign 值視為錯誤(eg. return foo = bar)
        "no-script-url": 2, // javascript:void(0) 視為錯誤
        "no-unused-expressions": 2, // 未使用到的表示式視為錯誤
        "no-with": 2, // with 視為錯誤

        // Variables
        "no-label-var": 2, // label 名稱與變數相同視為錯誤
        "no-shadow": 2, // 內層宣告外層宣告過的變數視為錯誤
        "no-shadow-restricted-names": 2, // 覆寫保留字視為錯誤
        "no-undef": 2, // 使用未宣告的變數視為錯誤，可用 /* global */ 過濾
        "no-undef-init": 2, // 使用 undefined 初始化變數視為錯誤(eg. let foo = undefined)
        "no-unused-vars": 2, // 宣告後未使用的變數視為錯誤

        // Stylistic Issues
        "brace-style": [1, "1tbs"],  // statement 中大括號的擺放位置，與下例不相同視為警告
        /* 例
        if (foo) {
        } else {
        }
        */
        "camelcase": 1, // 變數命名方式不為駝峰式視為警告
        "comma-spacing": 1, // 逗號後未空一格視為警告
        "eol-last": 1, // 檔案末端未空一行或多於一行視為警告
        "key-spacing": 1, // 物件中 key-value 格式需為({key: value})，否則視為警告
        "new-cap": 1, // constructor 名稱開頭不為大寫視為警告
        "new-parens": 1, // new constructor 後不加括號視為警告
        "no-array-constructor": 1, // array constructor 視為警告
        "no-spaced-func": 1, // 欲執行的 function 在 function name 和括號之間有空格視為警告(eg. foo ())
        "no-trailing-spaces": 1, // 一行的最後有多餘的空格視為警告
        "quotes": [1, "single"], // 在 react 元件外使用雙引號視為警告
        "semi": [1, "never"], // 分號視為警告
        "semi-spacing": [1, {"before": false, "after": true}], // 分號前有加空格或分號後緊連程式碼視為警告(eg. foo = bar ;)
        "space-infix-ops": 1, // 運算子與變數之間無空格視為警告
        "space-unary-ops": [1, {words: true, nonwords: false}], // 一元運算子與變數間有空格視為警告(eg. foo ++)

        // ECMAScript 6
        "no-class-assign": 2, // assign 已宣告的 class 視為錯誤
        "no-const-assign": 2, // assign const 視為錯誤
        "no-dupe-class-members": 2, // class 內重覆的成員視為錯誤
        "no-this-before-super": 2, // constructor 內 this 在 super 前出現視為錯誤
        "no-var": 2, // var 視為錯誤
        "prefer-const": 2, // 使用 let 宣告後未變動到的變數會建議使用 const ，視為錯誤

        // eslint-plugin-react
        "react/jsx-key": 2, // 迭代的 react component 未含有 key 屬性視為錯誤
        "react/jsx-no-duplicate-props": 2, // react component 有重覆的屬性視為錯誤
        "react/jsx-no-undef": 2, // JSX 中未定義的變數視為錯誤
        "react/jsx-uses-react": 2, // 避免 import React 被判定為宣告後未使用
        "react/jsx-uses-vars": 2, // 檢查 JSX 內變數的使用
        "react/no-unknown-property": 2, // 限制 component 中 prop 使用
        "react/prefer-es6-class": 2, // 未使用 class 建立 component 視為錯誤
        "react/prop-types": 2, // 未使用 PropTypes 驗證 prop 視為錯誤
        "react/react-in-jsx-scope": 2, // JSX 檔中未 import React 視為錯誤
        "react/require-extension": 2, // import 檔案時輸入副檔名視為錯誤
        "react/self-closing-comp": 2, // component 未包含中其他 component 時拆成兩個 tag 寫視為錯誤(eg. <Foo></Foo>)
        "react/wrap-multilines": 2 // render 中之 component 未使用括號包住視為錯誤
    }

}
```