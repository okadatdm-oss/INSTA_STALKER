#!/bin/sh
# INSTA STALKER - Busca menções públicas usando link do perfil

echo "==== INSTA STALKER ===="

printf "Cole o link do perfil do Instagram: "
read profile_link

# Remove parâmetros ?igsh=...
clean_link=$(echo "$profile_link" | cut -d'?' -f1)

# Extrai o username
insta_user=$(echo "$clean_link" | awk -F/ '{print $4}')

profile_url="https://www.instagram.com/$insta_user/"

echo "[*] Checando perfil: $profile_url"

profile_html=$(curl -s -A "Mozilla/5.0" "$profile_url")

if echo "$profile_html" | grep -i -q "private"; then
echo "[!] O perfil é privado ou não encontrado."
exit 1
fi

echo "[OK] Perfil público detectado!"

echo "[*] Buscando menções públicas..."

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
