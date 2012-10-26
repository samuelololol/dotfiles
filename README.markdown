                                                                        ___           ___
                                             ___           ___         /\_ \         /\_ \ (R)
    sssssssssssssamuelolololololololol      /\_ \         /\_ \     ___\//\ \     ___\//\ \
      ____    __      ___ ___   __  __    __\//\ \     ___\//\ \   / __`\\ \ \   / __`\\ \ \
     /',__\ /'__`\  /' __` __`\/\ \/\ \ /'__`\\ \ \   / __`\\ \ \ /\ \L\ \\_\ \_/\ \L\ \\_\ \_
    /\__, `\\ \L\.\_/\ \/\ \/\ \ \ \_\ \\  __/ \_\ \_/\ \L\ \\_\ \\ \____//\____\ \____//\____\
    \/\____/ \__/.\_\ \_\ \_\ \_\ \____/ \____\/\____\ \____//\____\/___/ \/____/\/___/ \/____/
     \/___/ \/__/\/_/\/_/\/_/\/_/\/___/ \/____/\/____/\/___/ \/____/ by samuelololol@gmail.com
                                                                                                          

#HOW TO INSTALL

1. Clone the source file to ur home directory from github:  
    
        # git clone git://github.com/samuelololol/dotfiles.git

2. Select dotfiles, delete(or backup) old ones and softlink to ~/dotfiles  

        # rm ~/.gntrc     && ln -s dotfiles/.gntrc     ~/.gntrc  
        # rm ~/.screenrc  && ln -s dotfiles/.screenrc  ~/.screenrc  
        # rm ~/.tmux.conf && ln -s dotfiles/.tmux.conf ~/.tmux.conf  
        # rm ~/.vimrc     && ln -s dotfiles/.vimrc     ~/.vimrc  
        # rm ~/.vim -rf   && ln -s dotfiles/.vim       ~/.vim  

        zsh
        # rm ~/.zshrc     && ln -s dotfiles/.zshrc     ~/.zshrc
        # rm ~/.zsh -rf   && ln -s dotfiles/.zsh       ~/.zsh


3. Update the sources in dotfiles  

        # cd dotfiles  
        # git pull
        # ./commands/submod_sync.sh
       
#NOTICE  

### LanguageTool installation 

+ Requirements:  

    (gentoo)  
    >= _dev-java/sun-jdk_-1.604  
    _dev-java/ant_  
    _dev-vcs/cvs_  

+ Use the following commands

        # cd ~/dotfiles  
        # ./commands/build_languagetool.sh

### ydict installation

+ Requirement:  

    _python_  

+ Use the following commands

        # cd ~/dotfiles
        # ./commands/update_ydict.sh 

### zsh plugin: oh-my-zsh

    Theme: https://github.com/robbyrussell/oh-my-zsh/wiki/themes 

#INFO

Installed ViM Plugins

+ [auto-pairs](https://github.com/vim-scripts/Auto-Pairs): 

    Insert or delete brackets, parens, quotes in pair.

+ [crefvim](http://github.com/vim-scripts/CRefVim)

    C reference support for ViM(Howto is described in [my blog](http://samuelololol.blogspot.com/2010/01/crefvim-c-reference-manual-especially.html))

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

+ [neocomplcache-snippets-complete](https://github.com/Shougo/neocomplcache-snippets-complete)

    neocomplcache complete snippets source

+ [nerdtree](https://github.com/scrooloose/nerdtree): 

    A tree explorer plugin for navigating the filesystem

+ [surround](https://github.com/vim-scripts/surround.vim):

    Delete/change/add parentheses/quotes/XML-tags/much more with ease

+ [sudo](https://github.com/vim-scripts/sudo.vim)

    Allows one to edit a file with prevledges from an unprivledged session.

+ [tagbar](https://github.com/majutsushi/tagbar)
    
    Vim plugin that displays tags in a window, ordered by class etc.

+ [valgrind](https://github.com/vim-scripts/valgrind.vim)

    Navigate in the output of the memory checker valgrind

+ [EasyMotion](https://github.com/Lokaltog/vim-easymotion)

    Vim motions on speed!

+ [vim-pathogen](https://github.com/tpope/vim-pathogen)

    pathogen.vim: manage your runtimepath

# FORKED PLUGIN
### (with tuning)

+ [taglist-local](https://github.com/vim-scripts/taglist.vim)

    Source code browser (supports C/C++, java, perl, python, tcl, sql, php, etc)
    (Switch the Taglist Position to right and save locally as the support for ViM)

        edit: 
            embedded taglist in vim folder

+ [trinity-local](https://github.com/vim-scripts/trinity.vim)

    Build the trinity of srcexpl, taglist, NERD_tree to be a good IDE. 
    (replace the Taglist function with Tagbar, switch the position of NERDTree 
     and Taglist/Tagbar and adjust the Taglist/Tagbar window width)

        edit: 
            replace taglist with tagbar
            disable local searching

+ [srcexpl-local](https://github.com/vim-scripts/SrcExpl)

    A Source code Explorer which works like the context window of "Source Insight". 
    (Disable the direct preview of one tag result)

        edit:
            disable local searching
            disable the preview declaration

# Vim Personal Features
   
+ Cscope/ctags meta files generating command

        :CSCTgenC cscope  "generating cscope.out and processing the add into vim
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


# Screen Personal Features

+ Key-binding

        window-kill    <F9>
        window-create  <F10>
        prev-window    <F11>
        next-window    <F12>

# tmux Personal Features

+ Key-binding

        prefix key             <C-a>
        kill-pane              <F9>
        new-window             <F10>
        previous-window        <F11>
        next-window            <F12>

        split pane             <C-a>s
        split pane vertically  <C-a>v

        copy mode              <C-[>
        select                 v
        copy(yank)             y
        paste                  <C-]>

        mouse mode:
        ON                     <C-a> m   (xtrem scroll mode, convenient for tmux-system copy behavior)
        OFF                    <C-a> M   (enable the X-system native copy/paste behavior)

<!-- {{{ 
* my custom vim script  

    samuelololol/plugin/

        mycodetoblogger.vim  function of blogger posting
        mycscope.vim         key map for cscope  
        mycsct.vim           ctags/cscope detection and generation  
        mymaptoggle.vim      contain a function used by MoveTo*()  
        mymvtotab.vim        MoveTo*() function used for moving tab  
        myneocomplcache.vim  my neocomplcache settings
        myvalgrind.vim       valgrind setting for vim
        myydict.vim          bind key to look up yahoo dictionary 
        mybrace.vim.bak      brace utils (suspending, using auto-pairs) 

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

}}} 
vim:fdm=marker
-->
