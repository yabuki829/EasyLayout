# EasyLayout

A description of this package.
# EasyLayoutを使うことでできること
* オートレイアウトの簡略化
* comming soon 

# EasyLayoutを使う

## 画面中央に表示
```
let label = UILabel()
label.text = "Hello World"
view.addSubview(label)
label.center(inView: view)

```

## 制約をつける
```
label.layout(top: view.topAnchor, paddingTop: 0,
            left: view.leftAnchor, paddingLeft: 0,
            right: view.rightAnchor, paddingRight: 0,
            bottom: view.bottomAnchor, paddingBottom: 0)
``` 

## X軸の中央
``` 
label.layout(top: view.topAnchor, paddingTop: 0,
            bottom: view.bottomAnchor, paddingBottom: 0)
label.centerX(inView: view)

``` 

## Y軸中央
```
label.layout(left: view.leftAnchor, paddingLeft: 0,
            right: view.rightAnchor, paddingRight: 0)
label.centerY(inView: view)
```

