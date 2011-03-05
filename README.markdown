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
        # ./update_vim_plugins.sh
       
#NOTICE  

### gist-vim

+ Requirement:  

    _curl_  

### LanguageTool installation 

+ Requirements:  

    (gentoo)  
    >\>= _java-jdk_-1.6_04  
    >_ant_  


+ Use the following commands

        # cd ~/dotfiles  
        # ./build_languagetool.sh

### ydict installation

+ Requirement:  

    _python_  

+ Use the following commands

        # cd ~/dotfiles
        # ./update_ydict.sh 
#INFO


Installed ViM Plugins

+ [crefvim](http://github.com/vim-scripts/CRefVim): 

   C reference support for ViM
   [my blog](http://samuelololol.blogspot.com/2010/01/crefvim-c-reference-manual-especially.html)

+ [gist-vim](http://github.com/mattn/gist-vim): 

   To post the current buffer to gist  
   (reuqire _curl_ support)

+ [LanguageTool](http://www.vim.org/scripts/script.php?script_id=3223)  
  
   [LanguageTool](http://www.languagetool.org/) : Grammar checker for English, French, German (etc.) in Vim   
   (require _java-jdk_ support)  
   Project Homepage: http://www.languagetool.org/  
   Project CVS:   

                 cvs -z3 \   
                 -d:pserver:anonymous@languagetool.cvs.sourceforge.net:/cvsroot/languagetool \   
                 co -P JLanguageTool   

+ [matchit](git://github.com/vim-scripts/matchit.zip.git)

   Extended % matching for HTML, LaTeX, and many other languages

+ [nerdtree](http://github.com/scrooloose/nerdtree): 

   A tree explorer plugin for navigating the filesystem

* [pydiction](http://github.com/vim-scripts/Pydiction): 

   Tab-complete your Python code 
   *(I've changed the hotkey from Tab to C-J,
     and load complete-dict manually by my vim script) 

+ [snipmate](http://github.com/msanders/snipmate.vim): 

   TextMate-style snippets for ViM

+ [supertab](http://github.com/ervandew/supertab): 

   Do all your inser-mode completion with Tab!

+ [surround](git://github.com/vim-scripts/surround.vim.git):

   Delete/change/add parentheses/quotes/XML-tags/much more with ease

+ [systemc_syntax](http://www.vim.org/scripts/script.php?script_id=835): 

   Syntax file for SystemC

+ [valgrind](https://github.com/vim-scripts/valgrind.vim)

   Navigate in the output of the memory checker valgrind


<!-- {{{ 
#The Detail of Files Placement

* crefvim/
* gist-vim/
* matchit/
* nerdtree/
* pydiction/
* snipmate/
* supertab/
* surround/
* systemc_syntax/
* valgrind/
* .gntrc
* .screenrc
* .tmux.conf
* .vimrc


-----


* crefvim  
  crefvim/after/syntax/help.vim  
  doc/crefvim.txt  
  doc/crefvimdoc.txt  
  ftplugin/c/crefvim.vim 

* gist-vim  
  plugin/gist-vim

* matchit  
  doc/matchit.txt  
  plugin/matchit.vim  

* nerdtree  
  doc/NERD_tree.txt  
  nerdtree_plugin/exec_menuitem.vim  
  nerdtree_plugin/fs_menu.vim  
  plugin/NERD_tree.txt  

* snipmate  
  after/plugin/snipMate.vim  
  autoload/snipMate.vim  
  doc/snipMate.txt  
  ftplugin/xhtml/html_snip_helper.vim  
  syntax/snippet.vim  
  snippets/*.snippets  

* supertab  
  doc/supertab.txt  
  plugin/supertab.vim  

* surround  
  doc/surround.txt  
  plugin/surround.vim  

* systemc_syntax  
  ftplugin/systemc.vim

* valgrind  
  plugin/valgrind.vim

* pydiction  
  doc/README.txt  
  ftplugin/python/python_pydiction.vim (fork-version, change the key map to C-J)  
  plugin/python_diction.vim  
  pydiction.py  
  (complete-dict)   


* my custom vim script  
    plugin/

        mycscope.vim         key map for cscope  
        mycsct.vim           ctags/cscope detection and generation  
        mybrace.vim          brace utils  
        mymaptoggle.vim      contain a function used by MoveTo*()  
        mymvtotab.vim        MoveTo*() function used for moving tab  
        mysystemc.vim        Sysc() function to enable SystemC syntax  
        myydict.vim          bind key to look up yahoo dictionary 

    ftplugin/python/  

        mypython.vim         Load dictionary file: complete-dict need  
                             by pydiction

NOTES
===========

* add submodule:  

        $ git submodule add <FULL GIT REPO PATH> <local folder name>  
        $ git submodule update --init  
        $ cd <local folder name>  
        $ git pull origin master  
        $ cd ..  
        $ git commit -m'add a new submodule'  


}}} 
vim:fdm=marker
-->
