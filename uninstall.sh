#!/bin/bash
#
# 任意仓库的卸载脚本
set -euxo pipefail

# 修改 REPO 的值, 即可
readonly OWNER='yzaj'
readonly REPO='phone'

readonly repodir="/${OWNER}/${REPO}"
readonly src="/etc/profile.d/${OWNER}-${REPO}.sh"

if [[ "${REPO}" == "yzaj" || "${REPO}" == "log" ]]; then
  exit 1
fi

if [[ -d "${repodir}" ]]; then
  rm -r "${repodir}"
fi

if [[ -f "${src}" ]]; then
  rm "${src}"
fi
