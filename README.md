# INSTA_STALKER

Script simples para buscar menções públicas do @ de um perfil do Instagram, feito para rodar facilmente no Termux (Android) e também em distribuições Linux.

---

## ⚡ Instalação e uso rápido no Termux

Basta colar **este comando** no Termux (Android):

```sh
pkg update && pkg install -y git curl && git clone https://github.com/SEU-USUARIO/INSTA_STALKER.git && cd INSTA_STALKER && chmod +x insta_stalker.sh && ./insta_stalker.sh
```

<sub>Substitua `SEU-USUARIO` pelo seu nome de usuário do GitHub, caso ainda não tenha criado seu próprio repositório.</sub>

---

## 📚 Passo a passo detalhado

1. **Atualize o Termux e instale as dependências:**
   ```sh
   pkg update
   pkg install git curl
   ```

2. **Clone este repositório:**
   ```sh
   git clone https://github.com/SEU-USUARIO/INSTA_STALKER.git
   cd INSTA_STALKER
   ```

3. **Dê permissão de execução ao script:**
   ```sh
   chmod +x insta_stalker.sh
   ```

4. **Rode o script:**
   ```sh
   ./insta_stalker.sh
   ```

---

## 🤔 O que o script faz?

- Recebe um @ do Instagram do usuário
- Verifica se o perfil é público
- Procura contas públicas que mencionaram esse @ em bios ou posts através da busca do Google/Instagram

---

## 🚨 Observações importantes

- O script **NÃO** hackeia, invade ou burla a privacidade de ninguém.
- Resultados dependem da indexação do Google e do Instagram.
- Só encontra menções públicas (visíveis no Google).
- Pode não encontrar todas as menções; depende do que está indexado.

---

## 🛠️ Exemplo de uso

```sh
$ ./insta_stalker.sh
==== INSTA STALKER ====
Digite o @ do Instagram (ex: usuario): meuinfluencer
[*] Checando se o perfil https://www.instagram.com/meuinfluencer/ é público...
[OK] Perfil público detectado! Buscando menções públicas ao @meuinfluencer usando o Google...
[*] Contas que mencionaram @meuinfluencer (pelos resultados do Google):
@outrousuario
@umaempresa
...
==== FIM ====
```

---

## 👨‍💻 Feito para quê?

Este script foi criado para fins educacionais: explorar o que está **publicamente exposto** a partir do cruzamento entre Instagram e Google.  
Ele não burla nem força limites de privacidade, nem coleta dados sensíveis.

---

## 📄 Licença

MIT
