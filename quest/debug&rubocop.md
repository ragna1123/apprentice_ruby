# ruby/debug
## debugって？
- Ruby用のデバッグツールの一種
- プログラムを任意のところで止めたり、中身を見れるぞ
- バグの原因を突き止めるのに役に立つぞ

## インストール  
- `gem debug`またはGemfileに`gem 'debug', '>= 1.0.0'`
- railsには標準でインストールされている

## 使い方
- 使用するファイルの１行目に`require 'debug'`を記入  
- 一時停止したい箇所に`binding.b`を差し込んでおく
- コンソールで該当ファイルを起動するとデバックモードに入る  
- デバックモードでの使用コマンドはこちらを参照
> https://zenn.dev/igaiga/books/rails-practice-note/viewer/ruby_rails_debug_gem  

>[Rubyのコーディング規約](https://shugo.net/ruby-codeconv/codeconv.html)


# RUBOCOP
## Rubocopって？
- RubyのLintツール
- 自動でコードのフォーマットや修正をしてくれる
- 任意でどう直すかを弄れるぞ

## インストール  
- `gem rubocop`またはGemfileに`gem rubocop`

## 使い方
- 使用しているディレクトリ内に`.rubocop.yml`という設定ファイルを作成
- 記述内容は以下参照
> https://qiita.com/necojackarc/items/8bc16092bbc69f17a16d
> https://zenn.dev/tmasuyama1114/books/ab51fea5d5f659/viewer/rubocop