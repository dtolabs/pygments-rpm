# Generated by stubbs:add-option. Do not edit, if using stubbs.
# Created: Fri Dec  7 10:13:31 PST 2012
#
#/ usage: pygments-rpm:upload [ --release <1>]  --version <> [ --owner <dtolabs>] [ --repository <pygments-rpm>] [ --package-name <dtolabs-pygments>] [ --architecture <noarch>] [ --distribution-release-version <$(rerun rpm:get-distribution-release-version)>] 

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
            --package-name) rerun_option_check $# ; PACKAGE_NAME=$2 ; shift ;;
            --architecture) rerun_option_check $# ; ARCHITECTURE=$2 ; shift ;;
            --distribution-release-version) rerun_option_check $# ; DISTRIBUTION_RELEASE_VERSION=$2 ; shift ;;
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
    [ -z "$REPOSITORY" ] && REPOSITORY="pygments-rpm"
    [ -z "$PACKAGE_NAME" ] && PACKAGE_NAME="dtolabs-pygments"
    [ -z "$ARCHITECTURE" ] && ARCHITECTURE="noarch"
    [ -z "$DISTRIBUTION_RELEASE_VERSION" ] && DISTRIBUTION_RELEASE_VERSION="$(rerun rpm:get-distribution-release-version)"
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
PACKAGE_NAME=
ARCHITECTURE=
DISTRIBUTION_RELEASE_VERSION=


