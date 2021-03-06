﻿# TXT→TEX変換スクリプト

## やれること

- TXTファイルをTeXファイルに変換
  - 行末に \\\\ を挿入（空白行でも）
  - SHIFT-JIS＋CRLF→UTF-8＋LFに変換

変換前(sample.txt)

```
変換用サンプルファイルです。
このディレクトリ直下に変換したいファイルを格納してください。
文字コードはSHIFT-JISで格納してください。
改行コードはCR+LFで格納してください。

上記のような空白行も変換されます。
```

変換後(sample.tex)

```
変換用サンプルファイルです。\\
このディレクトリ直下に変換したいファイルを格納してください。\\
文字コードはSHIFT-JISで格納してください。\\
改行コードはCR+LFで格納してください。\\
\\
上記のような空白行も変換されます。\\
```


## 動作確認済環境

- Windows7 SP1
- Windows10 1809



## つかいかた

- zipを解凍する
- orgディレクトリに変換したいファイル（xxx.txt）を格納する
  - 文字コードと改行コードに気を付ける（SHIFT-JIS＋CRLF）
- main.vbsをダブルクリックする
- しばらく待つと完了と表示される
- replacedディレクトリに変換されたファイル（xxx.tex）が格納される



## 注意

- ディレクトリ構造や名前が変わると動きません
- 入力ファイルの文字コードや改行コードが違うとたぶん表示がおかしくなります
- 空白行検知の仕様上半角コロンで始まる行は半角コロンがなくなります
   - 同様に、半角コロンしかない行は無視されます

<!-- 

---

## やろうと思ったこと

- 普段使っている小説ファイルを出来るだけ手間を掛けずにTeXに流し込める形に変換したかった
  - ダブルクリックしたら一括処理してくれるくらいが望ましい
    - 1ファイルだけ直したいときはほかのファイル別の場所に格納すればいいかなって
  - 元のファイルを編集して変換する形を取れると望ましい
  - 現在の作業環境がWindows7なのでそれ単体で動きそうなものが望ましい
    - というかWindows10とかMacとかLinuxならこんなめんどくさいことする必要ない
  - 行頭全角スペース入力も考えたのだけれど、たぶんそこは自分で入れるかなと思った

-->
