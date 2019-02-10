
# gag Google Analytics in Homebrew
export HOMEBREW_NO_ANALYTICS=1

function node-project {
    git init
    npx license $(npm get init.license) -o "$(npm get init.author.name)" > LICENSE
    npx gitignore node
    npx covgen "$(npm get init.author.email)"
    npm init -y
    git add -A
    git commit -m "Initial commit"
}

###########################################################################
# Add specified content at the beginning of all files matching specified
# regexp pattern in selected directory.
# Files need to have content already, if file is empty content will
# not be added.
# Globals:
#   None
# Arguments:
#   -h: help
#   -R: recursive
#   -d <directory>: selected directory
#   -c <content>: content to be added to files
#   -f <regexp>: regular expression to match files in selected directory
# Returns:
#   None
###########################################################################
function add-to-files () {
    usage='
    Usage:\nadd-to-files [-h] -d <directory> -f <regexp> -c <content>\n\nAdd <content> to all
    files matching <regexp> in <directory> recursively.
    '
    # local definition so value is lost after function execution
    local OPTIND option DIR CONTENT FORMAT HELP RECURSIVE
    while getopts "d:f:c:hR" option; do
        case "${option}" in
            h ) HELP="help";;
            R ) RECURSIVE="recursive";;
            d ) DIR="${OPTARG}";;
            c ) CONTENT="${OPTARG}";;
            f ) FORMAT="${OPTARG}";;
            : ) echo "Invalid Option: $OPTARG requires and argument" 1>&2;;
            \? ) echo "Invalid Option: $OPTARG" 1>&2;;
        esac
    done
    shift $((OPTIND -1))
    if [[ ! -z $HELP ]]; then
        echo -e  $usage
    elif [[ ! -z $CONTENT ]] && [[ ! -z $DIR ]] && [[ ! -z $FORMAT ]]
    then
        if [[ ! -z $RECURSIVE ]]; then
            find $DIR -name "$FORMAT" | while read line; do
                sed -i '' '1s/^/'"$CONTENT"'\'$'\n\\\n/' $line;
            done
        else
            find $DIR -maxdepth 1 -name "$FORMAT" | while read line; do
                sed -i '' '1s/^/'"$CONTENT"'\'$'\n\\\n/' $line;
            done
        fi
    else
        echo -e $usage
    fi
}
