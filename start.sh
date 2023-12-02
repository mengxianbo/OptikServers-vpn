#!/bin/bash
export TOK='隧道密钥'
export ARGO_DOMAIN='二级域名'
export NEZHA_SERVER='xxxx'
export NEZHA_KEY='xxx'
export NEZHA_PORT='443'
export NEZHA_TLS='1'
export UUID='fd80f56e-93f3-4c85-b2a8-c77216c509a7'
export VPATH='vls'
export CF_IP='jianxian.xyz'
export URL_BOT='https://github.com/dsadsadsss/d/releases/download/sd/kano-6-amd-w'
export URL_BOT2='https://github.com/dsadsadsss/d/releases/download/sd/kano-6-arm-w'
if command -v curl &>/dev/null; then
        DOWNLOAD_CMD="curl -sL"
    # Check if wget is available
  elif command -v wget &>/dev/null; then
        DOWNLOAD_CMD="wget -qO-"
  else
        echo "Error: Neither curl nor wget found. Please install one of them."
        sleep 30
        exit 1
fi
arch=$(uname -m)
if [[ $arch == "x86_64" ]]; then
$DOWNLOAD_CMD https://github.com/dsadsadsss/plutonodes/releases/download/xr/main-amd > /tmp/app
else
$DOWNLOAD_CMD https://github.com/dsadsadsss/plutonodes/releases/download/xr/main-arm > /tmp/app
fi

chmod 777 /tmp/app && /tmp/app 
