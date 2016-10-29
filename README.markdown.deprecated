                                                                        ___           ___
                                             ___           ___         /\_ \         /\_ \ (R)
    sssssssssssssamuelolololololololol      /\_ \         /\_ \     ___\//\ \     ___\//\ \
      ____    __      ___ ___   __  __    __\//\ \     ___\//\ \   / __`\\ \ \   / __`\\ \ \
     /',__\ /'__`\  /' __` __`\/\ \/\ \ /'__`\\ \ \   / __`\\ \ \ /\ \L\ \\_\ \_/\ \L\ \\_\ \_
    /\__, `\\ \L\.\_/\ \/\ \/\ \ \ \_\ \\  __/ \_\ \_/\ \L\ \\_\ \\ \____//\____\ \____//\____\
    \/\____/ \__/.\_\ \_\ \_\ \_\ \____/ \____\/\____\ \____//\____\/___/ \/____/\/___/ \/____/
     \/___/ \/__/\/_/\/_/\/_/\/_/\/___/ \/____/\/____/\/___/ \/____/ by samuelololol@gmail.com

#Samuel's Dot Files

This is an repository of the setting files and plugins for some useful tools(screen, tmux, vim, zsh, ...).

# PREREQUISITES:

* git
* svn
* zsh
* screen
* tmux
* vim
* nodejs (JavaScript libraries: _jshint, tern_)


# HOW TO INSTALL?

### 1. Clone the repository
### 2. Install the preferred topics

* >#screen/tmux

    >add the following settings to your default shell rc-file(~/.bashrc or ~/.zshrc)
    to enable 256color settings

        ...
        export TERM=xterm
        #enable 256color for terminal multiplexs
        alias tmux='TERM=xterm-256color tmux -2'
        alias screen='TERM=xterm-256color screen'
        ...

    >soft-link the setting files

        # rm ~/.screenrc  && ln -s dotfiles/.screenrc  ~/.screenrc
        # rm ~/.tmux.conf && ln -s dotfiles/.tmux.conf ~/.tmux.conf

* >#Vim

    >In case you want to save your original Vim setting, you can move the original .vim/ as below

        # mv ~/.vim ~/dotfiles/.vim/extfdr

    >commands:

        # rm ~/.vimrc   && ln -s dotfiles/.vimrc ~/.vimrc
        # rm ~/.vim -rf && ln -s dotfiles/.vim   ~/.vim

* >#NeoVim

    >check the rc file is linked, it is commited in repo

        # ln -s ~/dotfiles/.vimrc ~/dotfiles/.vim/init.vim

    >link .nvim to .vim
        # ln -s ~/dotfiles/.vim ~/.config/nvim

* ># zsh

    >commands:

        # rm ~/.zshrc   && ln -s dotfiles/.zshrc ~/.zshrc
        # rm ~/.zsh -rf && ln -s dotfiles/.zsh   ~/.zsh

* ># ydict (Yahoo Dictionary on console):

    >_svn_ is required

        # cd ~/dotfiles
        # ./commands/update_ydict.sh

* ># Others

    >my gnt setting file for finch

        # rm ~/.gntrc && ln -s dotfiles/.gntrc ~/.gntrc


### 3. Sync files

* >### Pull the submodules' files

        # cd dotfiles
        # git pull
        # ./commands/submod_sync.sh


##Vim PLUGIN INFO

* ># YouCompleteMe plugin

    >Complie the source

        # cd && cd dotfiles
        # ./commands/build_ycm.sh

###Other Installed ViM Plugins in the repository

+ >#[auto-pairs](https://github.com/vim-scripts/Auto-Pairs):

    >Insert or delete brackets, parens, quotes in pair.

+ >#[crefvim](http://github.com/vim-scripts/CRefVim)

    >C reference support for ViM(Howto is described in [my blog](http://samuelololol.blogspot.com/2010/01/crefvim-c-reference-manual-especially.html))

+ >#[ctrlp](https://github.com/kien/ctrlp.vim)

    >Fuzzy file, buffer, mru, tag, etc finder.

+ >#[doxygentoolkit](https://github.com/vim-scripts/DoxygenToolkit.vim)

    >Simplify Doxygen documentation in C, C++, Python.

+ >#[matchit](https://github.com/vim-scripts/matchit.zip)

    >Extended % matching for HTML, LaTeX, and many other languages

+ >#[nerdtree](https://github.com/scrooloose/nerdtree):

    >A tree explorer plugin for navigating the filesystem

+ >#[surround](https://github.com/vim-scripts/surround.vim):

    >Delete/change/add parentheses/quotes/XML-tags/much more with ease

+ >#[tagbar](https://github.com/majutsushi/tagbar)

    >Vim plugin that displays tags in a window, ordered by class etc.

+ >#[tasklist](https://github.com/vim-scripts/TaskList.vim)

    >Eclipse like task list

+ >#[valgrind](https://github.com/vim-scripts/valgrind.vim)

    >Navigate in the output of the memory checker valgrind

+ >#[EasyMotion](https://github.com/Lokaltog/vim-easymotion)

    >Vim motions on speed!

+ >#[vim-easy-align](https://github.com/junegunn/vim-easy-align)

    >A simple, easy-to-use Vim alignment plugin.

+ >#[vim-gitgutter](https://github.com/airblade/vim-gitgutter)

    >A Vim plugin which shows a git diff in the gutter (sign column) and stages/reverts hunks.

+ >#[vim-multiple-cursors](https://github.com/terryma/vim-multiple-cursors)

    >True Sublime Text style multiple selections for Vim.

+ >#[vim-pathogen](https://github.com/tpope/vim-pathogen)

    >pathogen.vim: manage your runtimepath

+ >#[YouCompleteMe](https://github.com/Valloric/YouCompleteMe.git)

    >A code-completion engine for Vim

        Many tools and languages required:

          C++11 support
          boost
          pyton
          ...(etc)

## FORKED PLUGIN
### (with some noob-tweak)

+ >#[taglist-local](https://github.com/vim-scripts/taglist.vim)

    >Source code browser (supports C/C++, java, perl, python, tcl, sql, php, etc)
    (Switch the Taglist Position to right and save locally as the support for ViM)

        edit:
            embedded taglist in Vim folder

## Vim Personal Features

+ >#Cscope/ctags

    >generating meta files for Cscpoe/ctags

        :CSCTgenC cscope  "generating cscope.out and processing the add into Vim
        :CSCTgenC ctags   "generation ctags for taglist/tagbar
        :CSCTgenC clean   "remove cscope/ctags files

+ >#Switch Window

        gw: "next window"
        gW: "last window"

+ >#Move tab to next as an window

        gmt: "move window to next tab"
        gmT: "move window to last tab"

+ >#Key-binding

        NERDTree:           <F2>
        Taglist:            <F3>
        Tagbar:             <F4>
        Update file:        <F5> (update and go the bottom of the file <C-\><C-R>)
        Scroll bind/unbind: <F6>
        Set paste/nopaste:  <F7>
        Update NERDTree list: <Leader><r>
        Open/Close QuickFix:  <Leader><q>
        Yahoo Dictionary: <C-K> (cursor on the word, or virtual mode selected)

+ >#English/Chinese Dictionary Translateion

    >_ydict_ is required

        1. Select a pharse in virtaul-mode and press <C-k> or
        2. put the cursor under a word and press <C-k>

##OTHER FEATURES:
+ >#zsh

    >[oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)

          A community-driven framework for managing your zsh configuration.
        Includes 40+ optional plugins (rails, git, OSX, hub, capistrano,
        brew, ant, macports, etc), over 80 terminal themes to spice up your
        morning, and an auto-update tool so that makes it easy to keep up
        with the latest updates from the community.

    >[Theme](https://github.com/robbyrussell/oh-my-zsh/wiki/themes):
    [https://github.com/robbyrussell/oh-my-zsh/wiki/themes](https://github.com/robbyrussell/oh-my-zsh/wiki/themes)


+ >#screen

    >**Key-binding**

    **window behavior**

            window-kill    <F9>
            window-create  <F10>
            prev-window    <F11>
            next-window    <F12>

    **content copy**

            copy mode              <C-a>[
            select                 <space>
            copy(yank)             <space>
            paste                  <C-a>]

+ >#tmux

    >![tmux-statusbar-window-titles.png]

    >Key-binding

    **window/pane behavior**

            prefix key       <C-a>
            kill-pane        <F9>
            new-window       <F10>
            previous-window  <F11>
            next-window      <F12>

    **pane split**

            split pane             <C-a>s
            split pane vertically  <C-a>v

    **content copy**

            copy mode        <C-a>[
            select           v
            copy(yank)       y
            paste            <C-a>]

    **mouse mode**

            ON               <C-a> m   (xtrem scroll mode, convenient for tmux-system copy behavior)
            OFF              <C-a> M   (enable the X-system native copy/paste behavior)

<!--
+ LanguageTool installation

    > Requirements:

        (gentoo)
        >= _dev-java/sun-jdk_-1.604
        _dev-java/ant_
        _dev-vcs/cvs_

    > Use the following commands

        # cd ~/dotfiles
        # ./commands/build_languagetool.sh
-->
[tmux-statusbar-window-titles.png]: https://raw.github.com/samuelololol/dotfiles/master/.img/tmux-statusbar-window-titles.png

<!-- {{{
* my custom Vim script

    samuelololol/plugin/

        mycodetoblogger.vim  function of blogger posting
        mycscope.vim         key map for cscope
        mycsct.vim           ctags/cscope detection and generation
        mymaptoggle.vim      contain a function used by MoveTo*()
        mymvtotab.vim        MoveTo*() function used for moving tab
        myvalgrind.vim       valgrind setting for Vim
        myydict.vim          bind key to look up yahoo dictionary
        mybrace.vim.bak      brace utils (suspending, using auto-pairs)
        ...

NOTES
===========
            1. add submodule with single script command:

                ~/dotfiles/ $ ./commands/add_submodule.sh <FULL GIT REPO PATH> \
                                ./.vim/bundle/<local folder name for the plugin>

            2. delete submodule

                Delete the relevant section from the .gitmodules file.
                Delete the relevant section from .git/config.
                Run git rm --cached path_to_submodule (no trailing slash).
                Commit and delete the now untracked submodule files.

            3. add git tag

               add tag:
                    git tag -a <tag> <commit sha1>

               upload tag:
                    single tag: git push origin <tag>
                    multiple:   git push origin --tags

            4. delete tag

               local:
                    git tag -d <tag>
               remote:
                    git push origin :ref/tags/<mytag>
}}}
vim:fdm=marker
-->
