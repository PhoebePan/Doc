華雲串接頁面
=============

---

修改紀錄 :

| 更新時間 | 內容 | 編輯者 |
| :-: | :-: | :-: |
| 2017-04-14 | 第一版 | Anson Kao |


---

### 頁面串接參數(GET)
頁面網址： {domain}/member/huanuage/provision.html

```
device = ios / android                   # 來源
token = 華芸token                         # 華芸Token
utm_source = huanuage                    # GA 來源
utm_medium = stayfun_App/stayfun_Web     # GA 來源
redirectUrl = 轉進頁面(default: 首頁)      # 轉址網頁
```

---

### APP function 串接

網址轉跳通知重啟頁面(為避免可以倒回條款頁面)
```
event name : nativeRedirect
params : {href: ''}
```