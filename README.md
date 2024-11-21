
# latex-template-kanekolab

[![License: CC0-1.0](https://img.shields.io/badge/License-CC0_1.0-lightgrey.svg)](http://creativecommons.org/publicdomain/zero/1.0/)

## 概要

* TUAT-EECS金子研究室の卒論・修論用LaTeX実行環境&amp;テンプレート
* ローカル環境にTeX環境を構築せず，Docker + DevContainerの仮想環境を利用
* 金子研究室の卒論・修論に適したTeXテンプレートを提供

## 環境

* Windows 10 or later
* Visual Studio Code
* Docker Desktop for Windows
<!-- * Git for Windows -->

<!-- ※macOSについてはこちらをご利用ください． -->

## 環境のセットアップ

環境で示した4つの要素のうち，Visual Studio Codeを除く要素は配属生全員が導入済みとは限らないので，
それぞれセットアップ方法を簡単に示します．

### 1. WSL（Windows Subsystem for Linux）の有効化

Dockerを導入する前に，その前提となるWSLを使用可能とする必要があります．

```powershell
wsl --install
```

上記のコマンドをコマンドプロンプトやPowerShellといったターミナルで実行すると，WSLが有効化されます．

なお，このコマンドで有効化できない場合や，セットアップ完了後にWSL関連のエラーが生じた場合など，
より詳しいWSLのセットアップ方法が知りたい方は[こちら](https://learn.microsoft.com/ja-jp/windows/wsl/install)をご参照ください．

### 2. Docker Desktopのインストール

Windows環境においては，Docker DesktopというソフトウェアによってDocker環境を利用します．

[Docker Desktop 公式サイト](https://www.docker.com/ja-jp/products/docker-desktop/)からインストーラーをダウンロードします．
[Docker Desktop 公式サイト](https://www.docker.com/ja-jp/products/docker-desktop/)からインストーラーをダウンロードします．

「Docker Desktop をダウンロードする」にカーソルを合わせて出てくるドロップダウンリストの中から，
「Windows用をダウンロード - AMD64」を選択します．
![Docker Desktop 公式サイト](<figures/スクリーンショット 2024-11-15 171014.png>)

ダウンロードされたインストーラーを起動し，画面の指示に従って進めてください．
詳しいインストール方法は[このサイト](https://qiita.com/zembutsu/items/a98f6f25ef47c04893b3)を参考にしてください．
詳しいインストール方法は[このサイト](https://qiita.com/zembutsu/items/a98f6f25ef47c04893b3)を参考にしてください．

<!-- ### 3. Gitのインストール

本テンプレートの配布にはGitというソースコード管理ソフトを用いています．

[Git for Windows 公式サイト](https://gitforwindows.org/)からインストーラーをダウンロードします．
[Git for Windows 公式サイト](https://gitforwindows.org/)からインストーラーをダウンロードします．

「Download」をクリックするとインストーラーが自動でダウンロードされます．
![Git for Windows 公式サイト](<figures/スクリーンショット 2024-11-21 163514.png>)

ダウンロードされたインストーラーを起動し，画面の指示に従って進めてください．
詳しいインストール方法は[このサイト](https://qiita.com/T-H9703EnAc/items/4fbe6593d42f9a844b1c)を参考にしてください． -->

## 本テンプレートのセットアップ

### 1. GitHubからダウンロード

<!-- 環境のセットアップを終えたら，このテンプレートをご自身のPCにダウンロードしましょう．

このテンプレートを配置したいディレクトリをターミナルで開き，次のコマンドを入力します．

```bash
git clone https://github.com/HiroTNK1118/latex-template-kanekolab.git
```

GitHubからテンプレートがダウンロードされます． -->

### 2. VSCode DevContainer で開く

ダウンロードされた`latex-template-kanekolab`ディレクトリをVSCodeで開きなおします．
![VSCode](<figures/スクリーンショット 2024-11-21 170318.png>)

タブの右下に表示されるダイアログボックスの「コンテナーで再度開く」を選択してください．
![ダイアログボックス](<figures/スクリーンショット 2024-11-21 170318 (1).png>)

後は自動でTex環境を含む諸々がインストール・セットアップされ，次の状態になったら準備完了です．
![alt text](<figures/スクリーンショット 2024-11-21 170903.png>)

## 本テンプレートの使用方法
