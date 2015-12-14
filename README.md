# dotfiles

## overview

I'm  a believer that dotfiles are  personal in that we're all different and so we each have our own likes and dislikes. I've been manually maintaining dotfiles for years and whenever I get a new computer, or refresh an existing one, the process starts over from scratch of installing the packages I need and configuring them to my liking.

When I did this process for El Capitan a few weeks ago I decided to finally automate the process and save myself a few hours in the coming years.

Seeking inspiration for a running start from [Zach Holman's dotfiles](https://github.com/holman/dotfiles) I took that as a base and made it my own, removing and adding as works for me. I'm still in the fine tuning phase with the goal of getting it fully idempotent, complete and personal over time.

Use these at your own risk as YMMV :).

## what do you get
The script installs and configures the following:
* Homebrew and a number of packakes, see: [here](./homebrew/install.sh).
* Google Cloud CLI (gcloud)
* Some OS X preferences, see: [here](./osx/set-defaults.sh).
* Powerline fonts for command prompt
* Oh-my-zsh
* Python 2 and 3 using pyenv
* Ruby
* AWS CLI (coming soon)
* tmux (Adapted from Square's [maximum-awesome](https://github.com/square/maximum-awesome))
* Atom editor config
* Vim (Also adapted from Square's [maximum-awesome](https://github.com/square/maximum-awesome))

## prerequisites
1. Install latest version of Xcode from App Store
2. Accept Xcode license agreement either by launching it via the GUI or running

    ```
    sudo xcodebuild -license
    ```
3. Install Xcode Command Line Tools

    ```
    xcode-select --install
    ```
4. Install the [Atom text editor](https://atom.io)

## installation

1. Clone the repo into your $HOME
    ```
    git clone https://github.com/alanwill/dotfiles.git $HOME/.dotfiles
    ```

2. Install individual tools
    ```
    $HOME/.dotfiles/script/install
    ```
3. Install dotfiles and configure environment

    ```
    $HOME/.dotfiles/script/bootstrap
    ```
