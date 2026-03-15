#!/data/data/com.termux/files/usr/bin/bash
# INSTA STALKER - Busca menções públicas ao @ de Instagram

echo "==== INSTA STALKER ===="
read -p "Digite o @ do Instagram (ex: usuario): " user

# Remove @ do início, se houver
insta_user="${user#@}"

profile_url="https://www.instagram.com/$insta_user/"

echo "[*] Checando se o perfil $profile_url é público..."

# Baixa página do perfil
profile_html=$(curl -s -A "Mozilla/5.0" "$profile_url")

# Checa se é privado
if echo "$profile_html" | grep -i -q "esta conta é privada\|this account is private"; then
    echo "[!] O perfil @$insta_user é privado ou não encontrado."
    exit 1
fi

echo "[OK] Perfil público detectado! Buscando menções públicas ao @$insta_user usando o Google..."

# Monta busca no Google
search_query="site:instagram.com \"$insta_user\""
search_url="https://www.google.com/search?q=$(echo "$search_query" | sed 's/ /+/g')"

serp=$(curl -s -A "Mozilla/5.0" "$search_url")

echo "[*] Contas que mencionaram @$insta_user (pelos resultados do Google):"
echo "$serp" | grep -o -E 'instagram.com/[a-zA-Z0-9_.]+' | grep -v "/$insta_user" | awk -F/ '{print "@"$2}' | sort | uniq

echo "==== FIM ===="
