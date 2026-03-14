# INSTA STALKER

Script simples para buscar menções públicas do @ de um perfil do Instagram, feito para rodar facilmente no Termux (Android) e também em distribuições Linux.

## Como usar no Termux

**Basta rodar os comandos abaixo:**

```sh
pkg update && pkg install -y git curl
git clone https://github.com/SEU-USUARIO/insta-stalker.git
cd insta-stalker
chmod +x insta_stalker.sh
./insta_stalker.sh
```

Ou tudo de uma vez (copie e cole no Termux):

```sh
pkg update && pkg install -y git curl && git clone https://github.com/SEU-USUARIO/insta-stalker.git && cd insta-stalker && chmod +x insta_stalker.sh && ./insta_stalker.sh
```

## O que faz?

- Recebe um @ do Instagram do usuário
- Verifica se o perfil é público
- Procura contas públicas que mencionaram esse @ em bios ou posts através da busca do Google/Instagram

## Observações

- O script **não** hackeia, invade, nem burla privacidade.
- Resultados dependem da indexação do Google e do Instagram.
- Só encontra menções públicas!

## Licença

MIT
