# zsh-pins

ZSH plugin for pinning directories. Like a CLI folder bookmark manager (with tab completion!)

## Usage

| Command     | Description                                      |
| ----------- | ------------------------------------------------ |
| `pl`        | list all pins                                    |
| `pg <name>` | go to pin and list contents                      |
| `pa <name>` | add pin to current directory with name           |
| `pd <name>` | delete pin with name                             |
| `pe <name>` | edit pin with name to point to current directory |

## Demo

![pins Picture Demo](demo.png)

### Tab Completion

![Tab Completion](tab_complete.png)

## Installation

* [Antigen](#antigen)
* [Oh My Zsh](#oh-my-zsh)
* [Manual](#manual-git-clone)

### Antigen

1. Add the following to your `.zshrc`:

    ```sh
    antigen bundle mehalter/zsh-pins
    ```

2. Start a new terminal session.

### Oh My Zsh

1. Clone this repository into `$ZSH_CUSTOM/plugins` (by default `~/.oh-my-zsh/custom/plugins`)

    ```sh
    git clone https://github.com/mehalter/zsh-pins ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-pins
    ```

2. Add the plugin to the list of plugins for Oh My Zsh to load (inside `~/.zshrc`):

    ```sh
    plugins=( 
        # other plugins...
        zsh-pins
    )
    ```

3. Start a new terminal session.

### Manual (Git Clone)

1. Clone this repository somewhere on your machine. This guide will assume `~/.zsh/zsh-autosuggestions`.

    ```sh
    git clone https://github.com/mehalter/zsh-pins ~/.zsh/zsh-pins
    ```

2. Add the following to your `.zshrc`:

    ```sh
    source ~/.zsh/zsh-pins/zsh-pins.plugin.zsh
    fpath+= ~/.zsh/zsh-pins
    ```

3. Start a new terminal session.

