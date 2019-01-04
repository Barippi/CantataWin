# Windows10でCantata2.3.3をつくるやり方
## 最初にお断り
「私がこうやったらできた」というだけで万人がこれで上手く行く、とは限りませんのでメモとして残しておきますが、無保証です。サポートも行いません。本来の作者であるCraigDさんにサポートを求めるのもしないでください。あらかじめご了承ください。

## Qtを入れる
[こっからフリーのを落とす！](https://www.qt.io)→
32bitアプリを作るので5.11.2のmingw-32のを入れます。Qt Creatorは勝手に入るけど使わないかもしれません。作者はQt Creatorでビルドしろって書いてあったけど上手く行かなかったです。やり方が悪かったのかもしれません。
C:\dev\Qtがトップのフォルダーになるようにします(ここは作者の言うとおりに)。

## SSL関係のDLLを入れる

[なんか怪しいけどWin32って書いてある方を落とす！](https://indy.fulgan.com/SSL/)→展開し、C:\dev\sslへ。

## CMAKEを入れる
[こっから最新の32bit版を落とす！](https://cmake.org)→
Zip版でいいです。展開してC:\dev\cmakeへ。

## 環境変数を作る
コントロールパネル→システム→システムの詳細設定→環境変数でプロパティを出す。
ユーザー環境変数を追加する。
CMAKE_PREFIX_PATH `C:\dev\Qt\5.11.2\mingw53_32`  
QTDIR `C:\dev\Qt\5.11.2\mingw53_32`  
PATHに追加 `C:\dev\Qt\Tools\mingw530_32\bin;C:\dev\Qt\5.11.2\mingw53_32\bin;c:\dev\taglib\bin;c:\dev\cmake\bin:c:\dev\zlib\bin`  
ZLIB_INCLUDE_DIR `C:\dev\zlib\include`  
ZLIB_LIBRARY `C:\dev\zlib\bin`

作者がしろって言うから…。

ここまでしたら環境変数を反映させるために再起動する(多分プロパティを閉じて反映はされるとは思うけど念のために)。

## Zlibを作る
[こっから最新のソースを落とす！](https://zlib.net)→展開しC:\dev\zlibへ。

C:\dev\cmake\Cmake-Gui.exeを立ち上げ、`Browse Source`でそのフォルダを開くようにする。`Browse Build`も同じフォルダにする。  
ウインドウの真ん中あたりにあるConfigureボタンを押下する。なにでビルドするか聞かれるので`MinGW Makefiles`を選択します。  
`Finish`ボタンを押下するとなんらかの処理をし始めて`Configure`ボタンの上側のリストが真っ赤になります。エラーではなくて、設定してくれ！というメッセージのようです。  `CMAKE_BUILD_TYPE`に`Release`と入れます。`CMAKE_INSTALL_PREFIX`には`C:/dev/zlib`を入れます。`INSTALL_BIN_DIR`には`C:/dev/zlib/bin`、INC、LIB、MAN、PKGCONFIGのそれぞれのDIRも`C:/dev/zlib`から始まるようにします。一番下の`LIBRARY_OUTPUT_PATH`は`C:/dev/zlib/lib`でいいでしょう。  
そして再び`Configure`ボタンを押下すると赤かったのが無くなってボタンの下に`Configuring done`と出ます。  
そうしたら`Generate`ボタンを押下してください。  
`Generating done`と出てきたら成功です。やったね。Cmakeはここでいったんお役御免。  

Windowsスタートメニューボタンを右クリックして`Windows PowerShell`を押下します。  
```cmd
cd \dev\zlib
```
でカレントフォルダを移動します。そこで
```cmd
mingw32-make.exe install
```
を実行します。ずらーっとなんらかの文字列が流れていき、最後に指定したフォルダになんらかのファイルが格納されるはず、です。`.obj`ファイルと`.a`ファイルはいらないので
```cmd
mingw32-make.exe clean
```
で消します。消えます。残ったファイル、`.dll`ファイルと`.dll.a`ファイルと`include`フォルダの`.h`ファイルは必要です。ので消さないでください。PowerShellはいったん閉じます。閉じなくてもまた使いますのでそのままでもいいです。

## taglibを作る
[こっから最新のソースを落とす！](https://taglib.org)→展開しC:\dev\taglibへ。

再びCmake-gui.exeを起動し、Browse Sourceを`C:\dev\taglib`を選び、Browse Buildも同じフォルダにします。  
`Configure`ボタンを押下し、先ほどのzlibと同じようにMinGW Makefilesを選びます。先ほどより長くなんらかの作業が行われ、また赤くなります。`CMAKE_BUILD_TYPE`に`Release`を入れ、DIRの項は同じように`C:/dev/taglib`配下に置くように設定します。また`BUILD_SHARED_LIBS`にチェックを入れます。  
再び`Configure`ボタンを押下し、`Configuring done`が出てきたらこっちのもんです。すかさず`Generate`を押下しましょう。エラーが出なければまたMakefileができあがります。赤文字を読んでZLIB関連のエラーが気になるのであれば`Advanced`にチェックを入れ詳細設定を出し、ZLIB関連の設定をしてあげましょう。
```cmd
cd \dev\taglib
```
し、同じように
```cmd
mingw-32.exe install
```
しましょう。zlibよりもファイルが多いため割と時間がかかります。エラーっぽいのも出てきますが、できるファイルに特に動作には支障がなさそうなのでこれでできあがりです。また
```cmd
mingw-32.exe clean
```
をして余計なファイルは削除しておきましょう。なんか長かったですね。でもまだCantataビルドしてないんですよ。これからです。では行きましょう。

## Cantataをビルドする

[こっから最新のソースを落とす！](https://github.com/CDrummond/cantata/releases)→展開しC:\Cantata\srcへ。

Cantata配下にはinstallフォルダも作っておきます。ここにビルドされたファイルが入るようにします。  
`Browse Source`に`C:/cantata/src`を`Browse Build`は`C:/cantata/src`を選びます。しかる後に`Configure`ボタンを押下するとエラーが出ます。Qtスタジオなら多分出ないであろうエラーになります。ここからはエラーをしらみつぶしにしていきます。  
まず`CMAKE_BUILD_TYPE`に`Release`を入れます。`CMAKE_INSTALL_PREFIX`に`C:/cantata/install`をいれます。`SHARE_INSTALL_PREFIX`にも`C:/cantata/install`をいれます。`Advanced`にチェックを入れ、`TAGLIB_INCLUDES`に`C:/dev/taglib/include`、`ZLIB_INCLUDE_DIR`をZLIBを作ったときにできたincludeフォルダを指定し、`ZLIB_LIBRARY_RELEASE`に作った`libzlib.dll`を指定し、また`Configure`ボタンを押下すると恐らく上手いことエラーがでないはずです。そうしたら`Generate`ボタンを押下し、Makefileを作りましょう。  
PowerShell上で
```cmd
cd \cantata\src
```
し、
```cmd
mingw32-make.exe install
```
しましょう。これはtaglibを作るよりもはるかに時間がかかります。お茶でも飲むかなんか他のことをしてましょう。

……エラーが出て止まりましたね。ここでQt Creatorの出番です。Qt Creatorを立ち上げ、`ファイル`→`ファイル/プロジェクトを開く`で`C:/cantata/src/windows/CMakeList.txt`を開きます。そうすると`Configure Project`画面になるので`Desktop Qt 5.11.2 MinGW 32bit`にだけチェックを入れます。そして画面を下にスクロールさせ、`Configure Project`ボタンを押下します。そしてQt Creatorの左側にある`プロジェクト`ボタンを押下し、`Build & Run`のところの`Build`が選ばれた状態になり、画面の右側にいろいろと書かれている画面が出たと思います。その中の`CMAKE_CODEBLOCKS_MAKE_ARGUMENTS`に`../src -DCMAKE_BUILD_TYPE=Release -DENABLE_TAGLIB=OFF -DTAGLIB_FOUND=1 -DTAGLIB_INCLUDES=c:/dev/taglib/include -DTAGLIB_LIBRARIES=c:/dev/taglib/lib/libtag.dll.a -DTAGLIB_MP4_FOUND=1 -DTAGLIB_ASF_FOUND=1 -DTAGLIB_CAN_SAVE_ID3VER=1 -DZLIB_INCLUDE_DIR=c:/dev/zlib/include -DZLIB_LIBRARY=c:/dev/zlib/lib/libz.dll.a -DCMAKE_INSTALL_PREFIX=c:/cantata/install -DCANTATA_WINDOWS_INSTALLER_DEST=c:/cantata -DCANTATA_SSL_LIBS=c:/dev/ssl/libeay32.dll;c:/dev/ssl/ssleay32.dll`を入れます。で、ビルドステップと書いてある上にある`設定の変更を適用`ボタンを押下します。  
Qt Creatorの`ファイル`→`すべて保存`をします。  
Cmake-gui.exeを立ち上げ、`Configure`ボタンを押下し、設定をし直して何度か`Configure`ボタンを押下し、エラーが出ないようにしてから、`Generate`ボタンを押下してください。  
エラーが出ないようでしたら、PowerShellを立ち上げ
```cmd
cd \cantata\src
```
をして
```cmd
mingw32-make.exe install
```
を実行してください。今度こそお茶が飲める、と思います。なんならカップラーメンもお湯を沸かす所から作って食べられる時間ができると思います。  
でも、installに入ったところでインストールエラーで止まるんです。libz-1.dllが無いって言われて。そんなの作ってないですよね。大丈夫です。`c:\dev\zlib\bin`にあった`libzlib.dll`をその場にコピーして`libz-1.dll`にすれば引っ張ってきます。

## .nsiファイルを使用してインストーラーを作る

ここまで来ればCantata2.3.3はできあがりです。アイコンをダブルクリックすれば立ち上がると思います。でもなんとなくむずがゆい。  
恐らくSetup.exeみたいなインストーラーからインストールしてないからだと思います。  
そこで、せっかくなので(？)インストーラーも作りたいと思います。そのための`.nsi`ファイルなんですね。
[NSIS-Download](https://nsis.sourceforge.io/Download)からインストーラーを作る`NSIS 3.04`をダウンロードし、インストールして立ち上げます。立ち上がったら左上の`Compiler`の`Compile NSI scripts`を押下し、`MakeNSISW`画面を出し、`File`→`Load Script`を押下し、`C:\cantata\install`内にある`cantata.nsi`を選び、`開く`ボタンを押下します。そうするとスクリプトが自動的に動き、インストーラーがじきにできあがります。`Test Installer`ボタンを押下するとインストーラーが立ち上がります。見覚えのあるインストーラーが！ということでインストールしてCantataを立ち上げます。右上のハンバーガーメニューからCantataについてを選ぶと`Cantata 2.3.3`の文字が出ているはずです。お疲れ様でした。