# dotfiles

## overview

I'm  a believer that dotfiles are  personal in that we're all different and so we each have our own likes and dislikes. I've been manually maintaining dotfiles for years and whenever I get a new computer, or refresh an existing one, the process starts over from scratch of installing the packages I need and configuring them to my liking.

When I did this process for El Capitan a few weeks ago I decided to finally automate the process and save myself a few hours in the coming years.

Seeking inspiration for a running start from [Zach Holman's dotfiles](https://github.com/holman/dotfiles) I took that as a base and made it my own, removing and adding as works for me. I'm still in the fine tuning phase with the goal of getting it fully idempotent, complete and personal over time.

Use these at your own risk as YMMV :).

## what do you get
The script installs and configures the following:
1. Homebrew and a number of packakes, see: [here](./homebrew/install.sh).
2. Google Cloud CLI (gcloud)
3. Some OS X preferences, see: [here](./osx/set-defaults.sh).
4. Powerline fonts for command prompt
3. Oh-my-zsh
4. Python 2 and 3 using pyenv
5. AWS CLI (coming soon)
6. tmux
7. Vim with

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
