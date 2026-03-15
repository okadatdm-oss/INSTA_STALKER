#!/bin/sh
# INSTA STALKER - Busca menções públicas ao @ de Instagram

echo "==== INSTA STALKER ===="

printf "Digite o @ do Instagram (ex: usuario): "
read user

insta_user=${user#@}

profile_url="https://www.instagram.com/$insta_user/"

echo "[*] Checando se o perfil $profile_url é público..."

profile_html=$(curl -s -A "Mozilla/5.0" "$profile_url")

if echo "$profile_html" | grep -i -q "private"; then
echo "[!] O perfil @$insta_user é privado ou não encontrado."
exit 1
fi

echo "[OK] Perfil público detectado!"

echo "[*] Buscando menções públicas ao @$insta_user..."

search_query="site:instagram.com \"$insta_user\""

search_url="https://www.google.com/search?q=$(echo "$search_query" | sed 's/ /+/g')"

serp=$(curl -s -A "Mozilla/5.0" "$search_url")

echo "[*] Contas que mencionaram @$insta_user:"

echo "$serp" \
| grep -o -E 'instagram.com/[a-zA-Z0-9_.]+' \
| grep -v "/$insta_user" \
| awk -F/ '{print "@"$2}' \
| sort \
| uniq

echo "==== FIM ===="
