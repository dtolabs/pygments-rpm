# Generated by stubbs:add-option. Do not edit, if using stubbs.
# Created: Fri Dec  7 10:17:51 PST 2012
#
#/ usage: pygments-rpm:build  --version <> [ --package-name <dtolabs-pygments>]  --build-number <> 

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
            --package-name) rerun_option_check $# ; PACKAGE_NAME=$2 ; shift ;;
            --build-number) rerun_option_check $# ; BUILD_NUMBER=$2 ; shift ;;
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
    [ -z "$PACKAGE_NAME" ] && PACKAGE_NAME="dtolabs-pygments"
    # Check required options are set
    [ -z "$VERSION" ] && { echo >&2 "missing required option: --version" ; return 2 ; }
    [ -z "$BUILD_NUMBER" ] && { echo >&2 "missing required option: --build-number" ; return 2 ; }
    # If option variables are declared exportable, export them.

    #
    return 0
}


# Initialize the options variables to null.
VERSION=
PACKAGE_NAME=
BUILD_NUMBER=


