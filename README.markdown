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

#INFO

Installed ViM Plugins

+ [auto-pairs](https://github.com/vim-scripts/Auto-Pairs): 

    Insert or delete brackets, parens, quotes in pair.

+ [crefvim](http://github.com/vim-scripts/CRefVim): 

    C reference support for ViM(Howto is described in [my blog](http://samuelololol.blogspot.com/2010/01/crefvim-c-reference-manual-especially.html))

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

+ [neocomplcache](https://github.com/Shougo/neocomplcache-snippets-complete)

    neocomplcache complete snippets source

+ [nerdtree](https://github.com/scrooloose/nerdtree): 

    A tree explorer plugin for navigating the filesystem

+ [surround](https://github.com/vim-scripts/surround.vim):

    Delete/change/add parentheses/quotes/XML-tags/much more with ease

+ [valgrind](https://github.com/vim-scripts/valgrind.vim)

    Navigate in the output of the memory checker valgrind

+ [EasyMotion](https://github.com/Lokaltog/vim-easymotion)

    Vim motions on speed!

+ [vim-pathogen](https://github.com/tpope/vim-pathogen)

    pathogen.vim: manage your runtimepath

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

            add submodule with single script command:

            ~/dotfiles/ $ ./commands/add_submodule.sh <FULL GIT REPO PATH> \
                                ./.vim/bundle/<local folder name for the plugin>


}}} 
vim:fdm=marker
-->
