# dotfiles

このリポジトリは、[chezmoi](https://www.chezmoi.io/) により一元的に管理しているdotfileを格納している場所である。

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

## TOPIC

### chezmoiのOS識別値と接尾辞

`.chezmoi.os`の値（ファイル接尾辞として使用可能）

| OS | 接尾辞 |
|----|--------|
| macOS | `.darwin` |
| Linux全般 | `.linux` |
| Windows | `.windows` |

- **重要**: Linuxディストリビューション別の接尾辞は非サポート  
  - ファイル接尾辞でLinuxディストリビューションを区別する機能は存在せず、`.ubuntu`、`.kali`のような接尾辞は使えない。
- 参考URL
  - [https://www.chezmoi.io/user-guide/machines/linux/](https://www.chezmoi.io/user-guide/machines/linux/) 
  - [https://www.chezmoi.io/user-guide/templating/](https://www.chezmoi.io/user-guide/templating/)
