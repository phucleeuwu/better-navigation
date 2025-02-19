# 📌 aliases-plus-plus.zsh

A powerful Zsh plugin that enhances directory navigation by providing quick shortcuts and improved movement commands.

## 🚀 Features
- **Quick Directory Navigation**: Easily jump between directories using intuitive shortcuts.
- **Enhanced `cd` Commands**: Navigate up multiple levels quickly.
- **Integration with `zoxide`**: Leverage smarter directory jumping.

## 📦 Installation

### Using Zinit (Recommended)
```sh
zinit load phucleeuwu/navigation-plus.zsh
```

### Using Oh My Zsh
1. Clone the repository into your custom plugins directory:
   ```sh
   git clone https://github.com/phucleeuwu/navigation-plus.zsh ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/navigation-plus
   ```
2. Add `navigation-plus` to your `~/.zshrc` plugins list:
   ```sh
   plugins=(... navigation-plus)
   ```
3. Restart your shell:
   ```sh
   source ~/.zshrc
   ```

## ⌨️ Usage

### Navigation Shortcuts
- `..` → Move up one directory
- `.2` → Move up two directories
- `.3` → Move up three directories
- `.4` → Move up four directories
- `.5` → Move up five directories

### `zoxide` Integration
- `cd <dir>` → Uses `zoxide` for smarter navigation
- `cdc` → Jump to the last directory

## 🔧 Configuration
Customize aliases by modifying `navigation-plus.zsh` or adding custom overrides in `.zshrc`.

## 🤝 Contributing
Pull requests are welcome! Feel free to submit issues and suggestions.

## 📜 License
This project is licensed under the **MIT License**.

