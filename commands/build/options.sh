# Generated by stubbs:add-option. Do not edit, if using stubbs.
# Created: Mon Dec  3 11:04:32 PST 2012
#
#/ usage: pygments-rpm:build  --version <> [ --release <1>] 

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
            --version) rerun_option_check $# ; VERSION=$2 ; shift ;;
            --release) rerun_option_check $# ; RELEASE=$2 ; shift ;;
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
    # Check required options are set
    [ -z "$VERSION" ] && { echo >&2 "missing required option: --version" ; return 2 ; }
    # If option variables are declared exportable, export them.

    #
    return 0
}


# Initialize the options variables to null.
VERSION=
RELEASE=


