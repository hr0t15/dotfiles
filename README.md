# dotfiles

このリポジトリは、[chezmoi](https://www.chezmoi.io/) により一元的に管理しているdotfileを格納している場所である。

## 依存関係

### Ghostty

- フォントとして、HackGenを使っている。

## chezmoiのインストール

### MacOS

brewを用いてインストールする。

```bash
brew install chezmoi
```

### バイナリインストール

```bash
sh -c "$(curl -fsLS get.chezmoi.io)"
```

## 基本的な運用設定

### 管理対象の追加

新たに管理したいドットファイルがある場合、`chezmoi add`コマンドを使用する。  
たとえば、`~/.zshrc`を追加する場合は以下の通りとなる。

```bash
chezmoi add ~/.zshrc
```

### 設定ファイルの変更

設定ファイルに変更を加えるには`chezmoi edit`コマンドを使用する。  

```bash
chezmoi edit ~/.zshrc
```

変更を即座に反映したい場合は、`edit`コマンドの引数に`--apply`オプションも指定する。

```bash
chezmoi edit ~/.zshrc --apply
```

### 変更の適用

編集した設定を実際の環境に適用するには、`chezmoi apply`を実行する。

```bash
chezmoi apply
```

変更内容を確認したい場合は、`--dry-run`または`--verbose`オプションを使用する。

```bash
chezmoi apply --dry-run --verbose
```

### Git操作

`chezmoi cd`コマンドにて、chezmoiにより管理されているリポジトリのルートディレクトリ（`~/.local/share/chezmoi`）に移動ができる。

```bash
chezmoi cd
```

このディレクトリ上で、Git操作をすればよい。
