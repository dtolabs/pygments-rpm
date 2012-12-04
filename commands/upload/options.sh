# Generated by stubbs:add-option. Do not edit, if using stubbs.
# Created: Mon Dec  3 11:55:07 PST 2012
#
#/ usage: pygments-rpm:upload [ --release <1>]  --version <> [ --owner <dtolabs>] [ --repository <third-party>] 

# _rerun_options_parse_ - Parse the command arguments and set option variables.
#
#     rerun_options_parse "$@"
#
# Arguments:
#
# * the command options and their arguments
#
# Notes:
# 
# * Sets shell variables for any parsed options.
# * The "-?" help argument prints command usage and will exit 2.
# * Return 0 for successful option parse.
#
rerun_options_parse() {
    
    while [ "$#" -gt 0 ]; do
        OPT="$1"
        case "$OPT" in
            --release) rerun_option_check $# ; RELEASE=$2 ; shift ;;
            --version) rerun_option_check $# ; VERSION=$2 ; shift ;;
            --owner) rerun_option_check $# ; OWNER=$2 ; shift ;;
            --repository) rerun_option_check $# ; REPOSITORY=$2 ; shift ;;
            # help option
            -?)
                rerun_option_usage
                exit 2
                ;;
            # end of options, just arguments left
            *)
              break
        esac
        shift
    done

    # Set defaultable options.
    [ -z "$RELEASE" ] && RELEASE="1"
    [ -z "$OWNER" ] && OWNER="dtolabs"
    [ -z "$REPOSITORY" ] && REPOSITORY="third-party"
    # Check required options are set
    [ -z "$VERSION" ] && { echo >&2 "missing required option: --version" ; return 2 ; }
    # If option variables are declared exportable, export them.

    #
    return 0
}


# Initialize the options variables to null.
RELEASE=
VERSION=
OWNER=
REPOSITORY=

