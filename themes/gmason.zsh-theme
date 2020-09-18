local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"

local userhostcolor=''

case $(hostname) in
    "niska")
        export userhostcolor="225"
        ;;
    "natira")
        export userhostcolor="225"
        ;;
    "sup-mail")
        export userhostcolor="075"
        ;;
    "mail")
        export userhostcolor="075"
        ;;
    "gcal")
        export userhostcolor="073"
        ;;
    *)
        export userhostcolor="40"
        ;;
esac


local time='%{$fg[cyan]%}%T%{$reset_color%}'
local user_host='%{$FX[bold]$FG[$userhostcolor]%}%n%{$FG[201]%}@%{$reset_color$FX[bold]$FG[$userhostcolor]%}%m%{$reset_color%}'
local current_dir='%{$FG[111]%}%~%{$reset_color%}'
local git_branch='$(git_prompt_info)%{$reset_color%}'

PROMPT="${time} ${user_host} ${current_dir} ${git_branch}
%{$fg_bold[yellow]%}%B$%b %{$reset_color%}"
RPS1="${return_code}"

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[yellow]%}‹"
ZSH_THEME_GIT_PROMPT_SUFFIX="› %{$reset_color%}"
