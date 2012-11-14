                                                                        ___           ___
                                             ___           ___         /\_ \         /\_ \ (R)
    sssssssssssssamuelolololololololol      /\_ \         /\_ \     ___\//\ \     ___\//\ \
      ____    __      ___ ___   __  __    __\//\ \     ___\//\ \   / __`\\ \ \   / __`\\ \ \
     /',__\ /'__`\  /' __` __`\/\ \/\ \ /'__`\\ \ \   / __`\\ \ \ /\ \L\ \\_\ \_/\ \L\ \\_\ \_
    /\__, `\\ \L\.\_/\ \/\ \/\ \ \ \_\ \\  __/ \_\ \_/\ \L\ \\_\ \\ \____//\____\ \____//\____\
    \/\____/ \__/.\_\ \_\ \_\ \_\ \____/ \____\/\____\ \____//\____\/___/ \/____/\/___/ \/____/
     \/___/ \/__/\/_/\/_/\/_/\/_/\/___/ \/____/\/____/\/___/ \/____/ by samuelololol@gmail.com
                                                                                                          
# Samuel's Dot Files


## PREREQUISITES

### git
>for installing this repository

### svn
>for _ydict_

### zsh
### screen
### tmux 
>\>tmux-1.7

### Vim
>\>Vim-7.3

##HOW TO INSTALL

1. Clone the source file to ur home directory from github:  
    
        # git clone https://github.com/samuelololol/dotfiles.git

2. Install the prefer topics

    ###screen/tmux

    >Put `export TERM=xterm-256color` in ~/.bashrc to support 256color in screen/tmux

        # rm ~/.screenrc  && ln -s dotfiles/.screenrc  ~/.screenrc  
        # rm ~/.tmux.conf && ln -s dotfiles/.tmux.conf ~/.tmux.conf  

    ###Vim

    >In case you want to save your original Vim setting, you can move the original .vim/ as below

        # mv ~/.vim ~/dotfiles/.vim/extfdr

    >Install 

        # rm ~/.vimrc   && ln -s dotfiles/.vimrc ~/.vimrc  
        # rm ~/.vim -rf && ln -s dotfiles/.vim   ~/.vim  

    ###zsh

        # rm ~/.zshrc   && ln -s dotfiles/.zshrc ~/.zshrc
        # rm ~/.zsh -rf && ln -s dotfiles/.zsh   ~/.zsh

    ###ydict (Yahoo Dictionary on console):

    >_svn_ is required

        # cd ~/dotfiles
        # ./commands/update_ydict.sh 

    ###Others
    >my gnt setting file for finch

        # rm ~/.gntrc && ln -s dotfiles/.gntrc ~/.gntrc  



3. Update the sources in dotfiles  

        # cd dotfiles  
        # git pull
        # ./commands/submod_sync.sh
       
##Vim PLUGIN INFO

Installed ViM Plugins

+ [auto-pairs](https://github.com/vim-scripts/Auto-Pairs): 

    Insert or delete brackets, parens, quotes in pair.

+ [crefvim](http://github.com/vim-scripts/CRefVim)

    C reference support for ViM(Howto is described in [my blog](http://samuelololol.blogspot.com/2010/01/crefvim-c-reference-manual-especially.html))

+ [ctrlp](https://github.com/kien/ctrlp.vim)

    Fuzzy file, buffer, mru, tag, etc finder.

+ [doxygentoolkit](https://github.com/vim-scripts/DoxygenToolkit.vim)

    Simplify Doxygen documentation in C, C++, Python.

+ [LanguageTool](http://www.vim.org/scripts/script.php?script_id=3223)  
  
    [LanguageTool](http://www.languagetool.org/) : Grammar checker for English, French, German (etc.) in Vim   
    (require _java-jdk_ support)  
    Project Homepage: [http://www.languagetool.org/](http://www.languagetool.org/)  
    Project CVS:   

                 cvs -z3 \   
                 -d:pserver:anonymous@languagetool.cvs.sourceforge.net:/cvsroot/languagetool \   
                 co -P JLanguageTool   

+ [matchit](https://github.com/vim-scripts/matchit.zip)

    Extended % matching for HTML, LaTeX, and many other languages

+ [neocomplcache](https://github.com/Shougo/neocomplcache)

    Ultimate auto-completion system for Vim

+ [neosnippet](https://github.com/Shougo/neosnippet)

    neo-snippet plugin contains neocomplcache snippets source

+ [nerdtree](https://github.com/scrooloose/nerdtree): 

    A tree explorer plugin for navigating the filesystem

+ [sudo](https://github.com/vim-scripts/sudo.vim)

    Allows one to edit a file with prevledges from an unprivledged session.

+ [surround](https://github.com/vim-scripts/surround.vim):

    Delete/change/add parentheses/quotes/XML-tags/much more with ease

+ [tagbar](https://github.com/majutsushi/tagbar)
    
    Vim plugin that displays tags in a window, ordered by class etc.

+ [tasklist](https://github.com/vim-scripts/TaskList.vim)

    Eclipse like task list

+ [trinity](ihttps://github.com/wesleyche/Trinity)

    A (G)Vim plugin which build the trinity of Source Explorer, TagList and NERD tree to be an IDE for software development

+ [valgrind](https://github.com/vim-scripts/valgrind.vim)

    Navigate in the output of the memory checker valgrind

+ [EasyMotion](https://github.com/Lokaltog/vim-easymotion)

    Vim motions on speed!

+ [vim-pathogen](https://github.com/tpope/vim-pathogen)

    pathogen.vim: manage your runtimepath

## FORKED PLUGIN
### (with some noob-tweak)

+ [taglist-local](https://github.com/vim-scripts/taglist.vim)

    Source code browser (supports C/C++, java, perl, python, tcl, sql, php, etc)
    (Switch the Taglist Position to right and save locally as the support for ViM)

        edit: 
            embedded taglist in Vim folder

+ [trinity-local](https://github.com/wesleyche/Trinity)

    A (G)Vim plugin which build the trinity of Source Explorer, TagList and NERD tree to be an IDE for software development.
        edit: 
            replace taglist with tagbar
            disable local searching

+ [srcexpl-local](https://github.com/vim-scripts/SrcExpl)

    A Source code Explorer which works like the context window of "Source Insight". 
    (Disable the direct preview of one tag result)

        edit:
            disable local searching
            disable the preview declaration

## Vim Personal Features
   
+ Cscope/ctags meta files generating command

        :CSCTgenC cscope  "generating cscope.out and processing the add into Vim
        :CSCTgenC ctags   "generation ctags for taglist/tagbar
        :CSCTgenC clean   "remove cscope/ctags files
    
+ Switch Window

        gw/gW

+ Move tab to next as an window

        gmt/gmT

+ Key-binding

        NERDTree:           <F2>
        Taglist:            <F3>
        Tagbar:             <F4>
        Update file:        <F5> (update and go the bottom of the file <C-\><C-R>)
        Scroll bind/unbind: <F6>
        Set paste/nopaste:  <F7>
        Update NERDTree list: <Leader><r>
        Open/Close QuickFix:  <Leader><q>
        Yahoo Dictionary: <C-K> (cursor on the word, or virtual mode selected)

+ English/Chinese Dictionary Translateion

    >_ydict_ is required

        1. Select a pharse in virtaul-mode and press <C-k> or
        2. put the cursor under a word and press <C-k>

##OTHER FEATURES:
### zsh
>[oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)

A community-driven framework for managing your zsh configuration. 
Includes 40+ optional plugins (rails, git, OSX, hub, capistrano, 
brew, ant, macports, etc), over 80 terminal themes to spice up your 
morning, and an auto-update tool so that makes it easy to keep up 
with the latest updates from the community.

>[Theme](https://github.com/robbyrussell/oh-my-zsh/wiki/themes): 
[https://github.com/robbyrussell/oh-my-zsh/wiki/themes](https://github.com/robbyrussell/oh-my-zsh/wiki/themes)


### screen

#### Key-binding

>**window behavior**

    window-kill    <F9>
    window-create  <F10>
    prev-window    <F11>
    next-window    <F12>

>**content copy**

    copy mode              <C-a>[
    select                 <space>
    copy(yank)             <space>
    paste                  <C-a>]

### tmux
![dotfiles][1]
####Key-binding

>**window/pane behavior**

    prefix key             <C-a>
    kill-pane              <F9>
    new-window             <F10>
    previous-window        <F11>
    next-window            <F12>
>**pane split**
    
    split pane             <C-a>s
    split pane vertically  <C-a>v
>**content copy**

    copy mode              <C-a>[
    select                 v
    copy(yank)             y
    paste                  <C-a>]
>**mouse mode**

    ON                     <C-a> m   (xtrem scroll mode, convenient for tmux-system copy behavior)
    OFF                    <C-a> M   (enable the X-system native copy/paste behavior)

### LanguageTool installation 

+ Requirements:  

    (gentoo)  
    >= _dev-java/sun-jdk_-1.604  
    _dev-java/ant_  
    _dev-vcs/cvs_  

+ Use the following commands

        # cd ~/dotfiles  
        # ./commands/build_languagetool.sh




[1]: https://raw.github.com/samuelololol/dotfiles/master/.img/tmux-statusbar-window-titles.png

<!-- {{{ 
* my custom Vim script  

    samuelololol/plugin/

        mycodetoblogger.vim  function of blogger posting
        mycscope.vim         key map for cscope  
        mycsct.vim           ctags/cscope detection and generation  
        mymaptoggle.vim      contain a function used by MoveTo*()  
        mymvtotab.vim        MoveTo*() function used for moving tab  
        myneocomplcache.vim  my neocomplcache settings
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
