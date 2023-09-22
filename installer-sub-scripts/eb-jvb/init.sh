# ------------------------------------------------------------------------------
# INIT.SH
# ------------------------------------------------------------------------------
set -e

# ------------------------------------------------------------------------------
# ENVIRONMENT
# ------------------------------------------------------------------------------
cd $INSTALLER

# ------------------------------------------------------------------------------
# INIT
# ------------------------------------------------------------------------------
[[ "$DONT_RUN_INIT" = true ]] && exit

# ------------------------------------------------------------------------------
# CHECKS
# ------------------------------------------------------------------------------
echo

[[ -z "$JITSI_FQDN" ]] && echo "JITSI_FQDN not found" && false
[[ -z "$(dig +short $JITSI_FQDN)" ]] && echo "unresolvable JITSI_FQDN" && false
[[ -z "$JVB_SHARD_PASSWD" ]] && echo "JVB_SHARD_PASSWD not found" && false

# ------------------------------------------------------------------------------
# INSTALLER CONFIGURATION
# ------------------------------------------------------------------------------
cp -ap ../$TAG-base/* .
