<h1 align="center">
  😍 + 🚀
  <br>Spaceship Node Package Manager<br>
</h1>

<h4 align="center">
  A Node Package Manager section for Spaceship prompt
</h4>

## Installing

You need to source this plugin somewhere in your dotfiles. Here's how to do it with some popular tools:

### [Oh-My-Zsh]

Execute this command to clone this repo into Oh-My-Zsh plugin's folder:

```zsh
git clone https://github.com/hyoban/spaceship-node-package-manager.git $ZSH_CUSTOM/plugins/spaceship-node-package-manager
```

Include `spaceship-node-package-manager` in Oh-My-Zsh plugins list:

```zsh
plugins=($plugins spaceship-node-package-manager)
```

### [zplug]

```zsh
zplug "spaceship-prompt/spaceship-node-package-manager"
```

### [antigen]

```zsh
antigen bundle "spaceship-prompt/spaceship-node-package-manager"
```

### [antibody]

```zsh
antibody bundle "spaceship-prompt/spaceship-node-package-manager"
```

### [zinit]

```zsh
zinit light "spaceship-prompt/spaceship-node-package-manager"
```

### [zgen]

```zsh
zgen load "spaceship-prompt/spaceship-node-package-manager"
```

### [sheldon]

```toml
[plugins.spaceship-node-package-manager]
github = "spaceship-prompt/spaceship-node-package-manager"
```

### Manual

If none of the above methods works for you, you can install Spaceship manually.

1. Clone this repo somewhere, for example to `$HOME/.zsh/spaceship-node-package-manager`.
2. Source this section in your `~/.zshrc`.

### Example

```zsh
mkdir -p "$HOME/.zsh"
git clone --depth=1 https://github.com/hyoban/spaceship-node-package-manager.git "$HOME/.zsh/spaceship-node-package-manager"
```

For initializing prompt system add this to your `.zshrc`:

```zsh title=".zshrc"
source "~/.zsh/spaceship-node-package-manager/spaceship-node-package-manager.plugin.zsh"
```

## Usage

After installing, add the following line to your `.zshrc` in order to include Ember section in the prompt:

```zsh
spaceship add node_package_manager --before exec_time
```

<!-- References -->

[Oh-My-Zsh]: https://ohmyz.sh/
[zplug]: https://github.com/zplug/zplug
[antigen]: https://antigen.sharats.me/
[antibody]: https://getantibody.github.io/
[zinit]: https://github.com/zdharma/zinit
[zgen]: https://github.com/tarjoilija/zgen
[sheldon]: https://sheldon.cli.rs/
