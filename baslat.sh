# Bash Script for Hide Phishing URL Created by KP

url_checker() {
    if [ ! "${1//:*}" = http ]; then
        if [ ! "${1//:*}" = https ]; then
            echo -e "\e[31m[!] Invalid URL. Please use http or https.\e[0m"
            exit 1
        fi
    fi
}
 _____      ____ _ _ __ | |_ _____  __  _ __ | |__ (_)___| |__ (_)_ __   __ _ 
/ __\ \ /\ / / _` | '_ \| __/ _ \ \/ / | '_ \| '_ \| / __| '_ \| | '_ \ / _` |
\__ \\ V  V / (_| | | | | ||  __/>  <  | |_) | | | | \__ \ | | | | | | | (_| |
|___/ \_/\_/ \__,_|_| |_|\__\___/_/\_\ | .__/|_| |_|_|___/_| |_|_|_| |_|\__, |
                                       |_|                           
echo -e "\e[40;38;5;82m İNSTA \e[30;48;5;82m https://www.instagram.com/furkancekerek1 \e[0m"
echo -e "\e[30;48;5;82m    by coded FURKAN
echo -e "\e[1;31;42m ### Phishing URL ###\e[0m \n"
echo -n "phishing urlni yapıştır=
read phish
url_checker $phish
sleep 1
echo "Processing and Modifing Phishing URL"
echo ""
short=$(curl -s https://is.gd/create.php\?format\=simple\&url\=${phish})
shorter=${short#https://}
echo -e "\n\e[1;31;42m ### Masking Domain ###\e[0m"
echo 'Domain to mask the Phishing URL (with http or https), ex: https://google.com, http
://anything.org) :'
echo -en "\e[32m=>\e[0m "
read mask
url_checker $mask
echo -e '\nType social engineering words:(like free-money, best-pubg-tricks)'
echo -e "\e[31mDon't use space just use '-' between social engineering words\e[0m"
echo -en "\e[32m=>\e[0m "
read words
if [[ -z "$words" ]]; then
echo -e "\e[31m[!] No words.\e[0m"
echo -e "\nGenerating MaskPhish Link...\n"
final=$mask@$shorter
echo -e "Here is the MaskPhish URL:\e[32m ${final} \e[0m\n"
exit
fi
if [[ "$words" =~ " " ]]; then
echo -e "\e[31m[!] Invalid words. Please avoid space.\e[0m"
echo -e "\nGenerating MaskPhish Link...\n"
final=$mask@$shorter
echo -e "Here is the MaskPhish URL:\e[32m ${final} \e[0m\n"
exit
fi
echo -e "\nGenerating MaskPhish Link...\n"
final=$mask-$words@$shorter
echo -e "Here is the MaskPhish URL:\e[32m ${final} \e[0m\n"
