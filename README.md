# Windows初期セットアップ(scoopインストール～各パッケージインストールまで)
以下、powershellで実行

## scoopインストール
```
Set-ExecutionPolicy RemoteSigned -scope CurrentUser
Invoke-Expression (New-Object System.Net.WebClient).DownloadString('https://get.scoop.sh')
```

## 拡張バケット追加
```
scoop install git
scoop bucket add extras
```

## 拡張バケット追加（香り屋Vimおよびfontインストール）
```
scoop bucket add jp https://github.com/dooteeen/scoop-for-jp
scoop install vim-kaoriya
scoop install main/sudo
sudo scoop install cica -g
```

## パッケージインストール
```
scoop install firefox googlechrome vscode keypiinha teraterm ccleaner
# teratermの代わりにwindows-terminalをインストールする場合は以下
scoop install firefox googlechrome vscode keypirinha github windows-terminal ccleaner
```

## VSCode拡張機能インストール
```
.\vscode-pkg-install.ps1
```

## Keypirinha設定
以下のフォルダにKeypirinha.iniを配置

%HOMEPATH%\scoop\apps\keypirinha\current\portable\Profile\User

システムコマンドを使用できるように以下からプラグインをダウンロード

https://github.com/psistorm/keypirinha-systemcommands

ダウンロードしたファイルを以下に配置

%HOMEPATH%\scoop\apps\keypirinha\current\portable\Profile\InstalledPackage