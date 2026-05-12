. "${BASH_SOURCE%/*}/swarmpass"

_swarmpass_instances() { multipass list --format csv 2>/dev/null | awk -F, 'NR > 1 && $1 != "" { print $1 }'; }

_swarmpass_completion() { _fly_complete _swarmpass_instances; }

complete -F _swarmpass_completion flympshell fmpshell flympbash fmpbash flympzsh fmpzsh flympksh fmpksh
