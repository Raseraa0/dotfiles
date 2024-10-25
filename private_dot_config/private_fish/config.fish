if status is-interactive
    # Commands to run in interactive sessions can go here
    alias wo='cd ~/Documents/Travail/3A/UPC'
    alias go='cd ~/Documents/Perso/porte_folio/raseraa0.github.io && code .' 
    alias temp='cd ~/Documents/temp && code .' 

    alias mariettecaca='echo "Mariette est vraiment un petit caca" && open ~/.mariette/.labg/.delaterreentiere/kiki.txt'

    alias maj='sudo apt-get upgrade -y && sudo apt-get update -y'
    alias dup='gnome-terminal .'
    alias b='cd ..'
    alias sss='ssh raseraa@pcserveur.ensimag.fr -XKC'
    
    alias ccc='sudo update-alternatives --config '
    alias nb='npm run build'
    alias rc='rt *.class'

    alias gs="git status"
    alias gu="git add -u"
    alias gc="git commit"
    alias gll="git pull"
    alias gllr="git pull --rebase"
    alias gr="git rebase --continue"
    alias gsh="git push"
    alias gd="git diff"
    alias gsw='git_switch_branch'

    alias lsdll='lsd -l'
    alias lsdla='lsd -A'
    alias lsdlla='lsd -lA'
    alias lsdl='lsd'
    alias lsdls='lsd'
    alias lsdlt='lsd --tree --depth '
    alias lsdlta='lsd -A --tree --depth '

    alias l='eza --icons'
    alias ls='eza --icons'
    alias ll='eza -lgh --icons --git'
    alias la='eza -a --icons'
    alias lla='eza -lgha --icons --git'
    alias lt='eza --icons --tree --level '
    alias lta='eza -a --icons --tree --level '


    alias lll='fzf --preview "batcat --style=numbers --color=always --line-range :500 {}"'
    alias fgb='__git_fzf_git_branch'
    alias fgs='__git_fzf_git_status'

    alias rm='echo "rt is better to delete: "'
    alias rt='trash-put --verbose'
    alias trash-empty='Dangereux...'

    alias mz='minizinc'
    alias mzide='/home/arthur/Documents/Travail/3A/UPC/CPP/MiniZincIDE-2.8.6-bundle-linux-x86_64/MiniZincIDE.sh'

    alias cat='batcat'

    alias ci="conda_init"

    function fish_greeting
        echo (set_color --bold 09F)"Welcome to PowerShell :) the best shell for coding."(set_color normal)
    end

    eval (/home/linuxbrew/.linuxbrew/bin/brew shellenv)

    atuin init fish --disable-up-arrow | source
    starship init fish | source


    set -x PATH "$HOME/.local/bin:$PATH"

    set -x EZA_CONFIG_DIR "$HOME/.config/eza"


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
    # set fish_color_autosuggestion 

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
    set fish_color_valid_path FD6C9E

    set fish_pager_color_selected_background --background=4a486d


end

# eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"


#################################### FISH TIME #################################### 



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
