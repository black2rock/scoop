# Windows初期セットアップ(scoopインストール～各パッケージインストールまで)
以下、powershellで実行

## scoopインストール
Set-ExecutionPolicy RemoteSigned -scope CurrentUser
Invoke-Expression (New-Object System.Net.WebClient).DownloadString('https://get.scoop.sh')

## 拡張バケット追加
scoop bucket add extras

## 拡張バケット追加（香り屋Vimおよびfontインストール）
scoop bucket add jp https://github.com/dooteeen/scoop-for-jp
scoop install vim-kaoriya
scoop install main/sudo
sudo scoop install cica -g

## パッケージインストール
scoop install git firefox googlechrome vscode keypirinha github teraterm

## VSCode拡張機能インストール
.\vscode-pkg-install.ps1

## Keypirinha設定
以下のフォルダにKeypirinha.iniを配置
%HOMEPATH%\scoop\apps\keypirinha\current\portable\Profile\User