How to use Hadoop clusters on UnitHosting.

Copyright (C) 2010 Dino Co.,Ltd.
Copyright (C) 2010 Yoshihiro TAKAHARA

1. はじめに
----------

`uhadoop`プロジェクトは、分散処理フレームワーク[Hadoop]を[UnitHosting]で利用するためのスクリプトを提供します。
まず、ユーザはmasterとslaveの2種類のサーバを構築する必要があります。
`uhadoop`スクリプトは`master`を`nameノード`として扱い、`slave`を必要数分コピーして`dataノード`として扱います。

 **必要条件
 ruby 1.8以上
 git
 

2. 準備
-------

### ruby APIライブラリのインストール

    [bash]
    gem install unit_hosting

### uhadoopのインストール

    [bash]
    git clone http://www.github.com/tumf/uhadoop/master

### ユニットホスティングへ登録

### サーバグループの作成

### サーバグループのAPIキーの有効化と取得

サーバグループを作成します。サーバグループの名前は何でも構いません。サーバグループを作成したら、基本情報の下の部分にある「APIキー」から「作成」を押してAPIキーを作成します。`.key`ファイルをダウンロードして、そのファイルを自分のホームディレクトリの下に`~/.UnitHosting/keys`ディレクトリを作ってその下におきます。

### masterサーバの構築

インスタントプランAでmasterサーバを構築します。
構築時にサーバの名称はmasterとしてください。

ユーザスクリプトは、以下を利用してください:
> http://www.github.com/tumf/UnitHosting/scripts/hadoop-master.sh

構築が終わったら、

### slaveサーバの構築

slaveサーバのAPIキーを作成しておきましょう。

3. デプロイ
----------

slave-clusterが必要数に足りない場合は、作成します。

uhadoopディレクトリ以下が`/home/hadoop/hadoop`以下にコピーされます。
iptablesを設定します。
hdfsを初期化します。

また、以下のファイルが自動で修正されます。

* /etc/hosts
* /home/hadoop/.ssh/config


4. 実行
-------


5. サーバの破棄
-------------



6. おわりに
----------



[Hadoop]: http://hadoop.apache.org/
[UnitHosting]: http://www.unit-hosting.com
[Dino]: http://www.dino.co.jp
