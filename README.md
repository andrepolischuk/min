# min

> Minimalistic zsh prompt

![](screenshot.png)

## Install

### npm

```sh
npm install -g min-prompt
```

and add `min` to plugin list in your `.zshrc`:

```zsh
plugins=(min)
```

### Manually

Clone this repo and append next line to your `.zshrc`:

```zsh
source min/min.zsh
```

## Tips

In the screenshot min is running in iTerm 2 with one light theme and SF Mono font.

To colorize commands as in the screenshot, install [zsh-syntax-highlighting][zsh-syntax-highlighting].

## License

MIT

[zsh-syntax-highlighting]: https://github.com/zsh-users/zsh-syntax-highlighting
