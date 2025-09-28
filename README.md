# Template

Nixを使用し、開発環境のテンプレートを提供する

## 使い方

```sh
nix flake init -t github:Maechu369/templates#template
```

全てのテンプレートのテンプレートは`template`とする。

個々のテンプレートの詳細は各テンプレートのREADMEを参照。

このリポジトリが更新されたら、`nix flake metadata --refresh github:Maechu369/templates#template`で反映する。

