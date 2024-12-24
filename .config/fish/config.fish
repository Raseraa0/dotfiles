if status is-interactive
    # Commands to run in interactive sessions can go here

    ### ============== My alias ============== ###

    # ======== Shortcut Directory
    ##==================================##
    alias wo='cd ~/Documents/Travail/3A/UPC'
    alias go='cd ~/Documents/Perso/Projets/RayTracing' 
    alias temp='cd ~/Documents/temp' 
    alias gt='cd ~/.local/share/Trash/files'
    ##==================================##


    # ======== No comment
    ##==================================##
    alias mariettecaca='echo "Mariette est vraiment un petit caca" && open ~/.mariette/.labg/.delaterreentiere/kiki.txt'
    ##==================================##


    # ======== My git alias
    ##==================================##
    alias gs="git status"
    alias gu="git add -u"
    alias gc="git commit"
    alias gll="git pull"
    alias gllr="git pull --rebase"
    alias gr="git rebase --continue"
    alias gsh="git push"
    alias gd="git diff"
    alias gsw='git_switch_branch'
    # alias glog='git log --graph --oneline --decorate --all'
    # y a un aloas pour glog plus bas avec les fonction fzf   
    ##==================================##


    # ======== Old ls alias
    ##==================================##
    alias lsdll='lsd -l'
    alias lsdla='lsd -A'
    alias lsdlla='lsd -lA'
    alias lsdl='lsd'
    alias lsdls='lsd'
    alias lsdlt='lsd --tree --depth '
    alias lsdlta='lsd -A --tree --depth '
    ##==================================##


    # ======== My ls alias
    ##==================================##
    alias l='eza --icons'
    alias ls='eza --icons'
    alias ll='eza -lgh --icons --git'
    alias llc='eza -lgh --icons --git --sort=modified --reverse'
    alias la='eza -a --icons'
    alias lla='eza -lgha --icons --git'
    alias lt='eza --icons --tree --level '
    alias lta='eza -a --icons --tree --level '
    alias lll='fzf --preview "batcat --style=numbers --color=always --line-range :500 {}"'
    ##==================================##


    # ======== Application
    ##==================================##
    alias mz='minizinc'
    alias mzide='/home/arthur/Documents/Travail/3A/UPC/CPP/MiniZincIDE-2.8.7-bundle-linux-x86_64/MiniZincIDE.sh'
    ##==================================##


    # ======== Override of rm
    ##==================================##
    alias rm='echo "rt is better to delete: "'
    alias rt='trash-put --verbose'
    alias trash-empty='Dangereux...'
    ##==================================##


    # ======== Useful 
    ##==================================##
    alias cat='batcat'
    alias rc='rt *.class'
    alias maj='sudo apt-get upgrade -y && sudo apt-get update -y'
    alias dup='gnome-terminal .'
    alias b='cd ..'
    alias sss='ssh raseraa@pcserveur.ensimag.fr -XKC'
    alias ccc='sudo update-alternatives --config '
    alias nb='npm run build'
    alias ci="conda_init"
    alias c="clear"
    alias vim="nvim"
    alias v="nvim"
    alias naut="nautilus ."
    ##==================================##


    # ======== Kitty
    ##==================================##
    alias icat='kitten icat'
    alias diff='kitten diff'
       
    # Alias pour sauvegarder la session actuelle
  # TODO !!!!!!!!
    # function kitty-save-session
    #     if test (count $argv) -eq 0
    #         echo "Usage: kitty-save-session <session_name>"
    #         return 1
    #     end
    #    
    #     set -l session_path "/home/arthur/.config/kitty/.sessions/$argv[1].kitty"
    #    
    #     kitty @ ls > "/home/arthur/.config/kitty/.sessions/$argv[1].json"
    #     cat "/home/arthur/.config/kitty/.sessions/$argv[1].json" | python3 /home/arthur/.config/kitty/kitty_convert.py > "$session_path"
    #     rm "/home/arthur/.config/kitty/.sessions/$argv[1].json" 
    #     echo "Session saved as $argv[1]"
    # end
   
    # Alias pour restaurer une session
   #  function kload
   #      if test (count $argv) -eq 0
   #          echo "Usage: kitty-restore-session <session_name>"
   #          return 1
   #      end
   #     
   #      set -l session_path "/home/arthur/.config/kitty/.sessions/$argv[1].kitty"
   #     
   #      if not test -f "$session_path"
   #          echo "Session $argv[1] not found"
   #          return 1
   #      end
   #     
   #      kitty --session "$session_path"
   #  end
   # 
    # Alias pour lister toutes les sessions
    # function klist
    #     ls /home/arthur/.config/kitty/.sessions/*.kitty | xargs -n1 basename | sed 's/\.kitty$//'
    # end

    ##==================================##


    ## ==== Welcome message

    # function fish_greeting
    #     echo (set_color --bold 09F)"Welcome to PowerShell :) the best shell for coding."(set_color normal)
    # end

    # function fish_greeting
        # echo -s (set_color --bold 0066CC) "W" (set_color --bold 0077DD) "e" (set_color --bold 0088EE) "l" (set_color --bold 0099FF) "c" (set_color --bold 00AAFF) "o" (set_color --bold 00BBFF) "m" (set_color --bold 00CCFF) "e" (set_color --bold 00DDFF) " " (set_color --bold 00EEFF) "t" (set_color --bold 00FFFF) "o" (set_color --bold 33FFFF) " " (set_color --bold 66FFFF) "P" (set_color --bold 99FFFF) "o" (set_color --bold CCFFFF) "w" (set_color --bold 00FFEE) "e" (set_color --bold 00FFDD) "r" (set_color --bold 00FFCC) "S" (set_color --bold 00FFBB) "h" (set_color --bold 00FFAA) "e" (set_color --bold 00FF99) "l" (set_color --bold 00FF88) "l" (set_color --bold 00FF77) " " (set_color --bold 00FF66) ":)" (set_color --bold 00FF55) " " (set_color --bold 00FF44) "t" (set_color --bold 00FF33) "h" (set_color --bold 00FF22) "e" (set_color --bold 00FF11) " " (set_color --bold 00FF00) "b" (set_color --bold 11FF00) "e" (set_color --bold 22FF00) "s" (set_color --bold 33FF00) "t" (set_color --bold 44FF00) " " (set_color --bold 55FF00) "s" (set_color --bold 66FF00) "h" (set_color --bold 77FF00) "e" (set_color --bold 88FF00) "l" (set_color --bold 99FF00) "l" (set_color --bold AAFF00) " " (set_color --bold BBFF00) "f" (set_color --bold CCFF00) "o" (set_color --bold DDFF00) "r" (set_color --bold EEFF00) " " (set_color --bold FFFF00) "c" (set_color --bold FFEE00) "o" (set_color --bold FFDD00) "d" (set_color --bold FFCC00) "i" (set_color --bold FFBB00) "n" (set_color --bold FFAA00) "g" (set_color --bold FF9900) "!" (set_color normal) 
    # end

    function fish_greeting
        echo -s (set_color --bold 00b7c0)"Welcome to" (set_color --bold ff5959) " PowerShell " (set_color --bold 00b7c0) ":) the best shell for"  " coding"  "." (set_color normal) " 🐟"
    end

    ##  ==== Load homebrew
    eval (/home/linuxbrew/.linuxbrew/bin/brew shellenv)

    ## ==== Load starship 
    starship init fish | source

    ## ==== Atuin diseable up arrow
    atuin init fish --disable-up-arrow | source

    zoxide init fish --cmd cd | source
  
    # fzf --fish | source

    ## ==== Set env

    set -x PATH "$HOME/.local/bin:$PATH"
    set -x PATH "/opt/nvim-linux64/bin:$PATH"
    ## ==== Set eza env
    set -x EZA_CONFIG_DIR "$HOME/.config/eza"

    #### ===================================================== #### 
    #### ====================Fish color======================= #### 
    #### ===================================================== #### 
    # Couleur de texte par défaut
    set fish_color_normal FFFFFF

    # Commandes
    set fish_color_command 00bdff

    # Guillemets
    set fish_color_quote 79ff71

    # Redirections IO
    set fish_color_redirection ffb814

    # Terminateurs de processus comme ';' et '&'
    set fish_color_end dc9a00

    # Erreurs
    set fish_color_error ff0000

    # Paramètres normaux
    set fish_color_param 00ffec

    # Commentaires
    set fish_color_comment d3f7f5

    # Texte correspondant dans les résultats de recherche
    set fish_color_match FD6C9E

    # Texte sélectionné dans le pager
    set fish_color_selection FD6C9E

    # Correspondances de recherche dans le pager
    set fish_color_search_match FD6C9E

    # Opérateurs comme '*' et '~'
    set fish_color_operator 00c10f

    # Caractères échappés
    set fish_color_escape 00ffae

    # Répertoire de travail actuel dans l'invite
    set fish_color_cwd FD6C9E

    # Suggestions automatiques
    set fish_color_autosuggestion 69707A 

    # Nom d'utilisateur dans l'invite par défaut
    set fish_color_user FD6C9E

    # Nom d'hôte dans l'invite par défaut
    set fish_color_host FD6C9E

    # La séquence d'annulation (CTRL+C)
    set fish_color_cancel fffb00

    # Le préfixe dans le pager
    set fish_pager_color_prefix 29f49a

    # Les complétions dans le pager
    set fish_pager_color_completion c5ffd3

    # Descriptions des complétions dans le pager
    set fish_pager_color_description f9e4a7

    # Barre de progression dans le pager
    set fish_pager_color_progress ff875d

    # L'élément d'historique actuel dans la recherche d'historique interactif
    set fish_color_history_current FD6C9E

    # Chemins de fichiers valides
    set fish_color_valid_path 00e2b2

    set fish_pager_color_selected_background --background=4a486d

    #### ===================================================== #### 
    #### ===================================================== #### 
    #### ===================================================== #### 


end

#################################### FONCTION TIME #################################### 


## ==== Git switch with fzf
function git_switch_branch
    if test -d ".git"
        set -l selected_remote_branch (git branch -r | fzf --height 40% | string trim)

        if test -n "$selected_remote_branch"
            set -l selected_branch (echo "$selected_remote_branch" | sed -e 's/origin\///')

            if git rev-parse --verify "$selected_branch"
                git checkout "$selected_branch"
            else
                git checkout --track "$selected_remote_branch"
            end
        else
            echo "Exit: You haven't selected a branch..."
        end
    else
        echo "Error: There's no .git dir..."
    end
end

## ==== Dynamique conda init
function conda_init
    # >>> conda initialize >>>
    # !! Contents within this block are managed by 'conda init' !!
    if test -f /home/arthur/anaconda3/bin/conda
        eval /home/arthur/anaconda3/bin/conda "shell.fish" "hook" $argv | source
    else
        if test -f "/home/arthur/anaconda3/etc/fish/conf.d/conda.fish"
            . "/home/arthur/anaconda3/etc/fish/conf.d/conda.fish"
        else
            set -x PATH "/home/arthur/anaconda3/bin" $PATH
        end
    end
    # <<< conda initialize <<<
end






####################### FZF TIME ############################


# @ttscoff's version of @max-sixty's revision of @aluxian's
# fish translation of @junegunn's fzf git keybindings
# https://gist.github.com/junegunn/8b572b8d4b5eddd8b85e5f4d40f17236
# https://gist.github.com/aluxian/9c6f97557b7971c32fdff2f2b1da8209
#
# 2021-12-23:
# - Fix hash returned by *git_log being truncated
# - Allow multiple selections for git_status
# - Allow multiple selections for git_log, insert HASH[1].. HASH[-1] range
# - bind ctrl-a for select all

# Deciphered from fzf-file-widget. Somewhat unclear why it doesn't exist already!
function fzf_add_to_commandline -d 'add stdin to the command line, for fzf functions'
	read -l result
	commandline -t ""
	commandline -it -- (string escape $result)
	commandline -f repaint
end

function fzf_add_multi_files_to_commandline -d 'add stdin to the command line without escaping, for fzf functions'
	read -l result
	set files (string split '*' $result)
	commandline -t ""
	for file in $files
		commandline -it -- (string escape $file)" "
	end
	commandline -f repaint
end

function fzf_add_multi_hashes_to_commandline -d 'add multiple hashes as a range'
	read -d \n -z -a result
	set -l hashes
	for hash in $result
		if test -n (string trim $hash)
			set -a hashes $hash
		end
	end
	commandline -t ""
	if test (count $hashes) -gt 1
		commandline -it -- $hashes[1]".. "$hashes[-1]
	else
		commandline -it -- $hashes[1]
	end
	commandline -f repaint
end


function fzf-down
	fzf --height 50% --min-height 20 --border --bind ctrl-p:toggle-preview --bind ctrl-a:select-all $argv
end

# https://gist.github.com/aluxian/9c6f97557b7971c32fdff2f2b1da8209
function __git_fzf_is_in_git_repo
	command -s -q git
		and git rev-parse HEAD >/dev/null 2>&1
end

function __git_fzf_git_remote
	__git_fzf_is_in_git_repo; or return
	git remote -v | awk '{print $1 ":" $2}' | uniq | \
		fzf-down --ansi --tac \
		--preview 'git log --oneline --graph --date=short --pretty="format:%C(auto)%cd %h%d %s" --remotes={1} | head -200' | \
		cut -d ':' -f1 | \
		fzf_add_to_commandline
end

function __git_fzf_git_status
	__git_fzf_is_in_git_repo; or return
	git -c color.status=always status --short | \
		fzf-down -m --ansi --preview 'git diff --color=always HEAD -- {-1} | head -500' | \
		cut -c4- | \
		sed 's/.* -> //' | \
		tr '\n' '*' | \
		sed 's/\*$//' | \
		fzf_add_multi_files_to_commandline
end

function __git_fzf_git_branch
	__git_fzf_is_in_git_repo; or return
	git branch -a --color=always | \
		grep -v '/HEAD\s' | \
		fzf-down -m --ansi --preview-window right:70% --preview 'git log --color=always --oneline --graph --date=short \
			--pretty="format:%C(auto)%cd %h%d %s %C(magenta)[%an]%Creset" \
			(echo {} | sed s/^..// | cut -d" " -f1) | head -'$LINES | \
		sed 's/^..//' | cut -d' ' -f1 | \
		sed 's#^remotes/##' | \
		fzf_add_to_commandline
end

function __git_fzf_git_tag
	__git_fzf_is_in_git_repo; or return
	git tag --sort -version:refname | \
		fzf-down --ansi --preview-window right:70% \
		--preview 'git show --color=always {} | head -'$LINES | \
		fzf_add_to_commandline
end

function glog
	__git_fzf_is_in_git_repo; or return
	git log --color=always --graph --date=short --format="%C(auto)%cd %h%d %s %C(magenta)[%an]%Creset" | \
		fzf-down -m --ansi --reverse --preview 'git show --color=always (echo {} | grep -o "[a-f0-9]\{7,\}") | head -'$LINES | \
		awk '{print $3}' \
		| fzf_add_multi_hashes_to_commandline
end

# function git_fzf_key_bindings -d "Set custom key bindings for git+fzf"
# 	bind \cg\cf __git_fzf_git_status
# 	bind \cg\cb __git_fzf_git_branch
# 	bind \cg\ct __git_fzf_git_tag
# 	bind \cg\ch __git_fzf_git_log
# 	bind \cg\cr __git_fzf_git_remote
# end
