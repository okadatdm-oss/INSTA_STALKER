# INSTA_STALKER

Script simples para buscar menções públicas do @ de um perfil do Instagram, feito para rodar facilmente no Termux (Android) e também em distribuições Linux.

---

## ⚡ Instalação e uso rápido no Termux

Basta colar este comando no Termux:

pkg update && pkg install -y git curl && git clone https://github.com/okadatdm-oss/INSTA_STALKER.git && cd INSTA_STALKER && chmod +x insta_stalker.sh && ./insta_stalker.sh

---

## 📚 Passo a passo detalhado

### 1. Atualizar e instalar dependências

pkg update  
pkg install git curl  

---

### 2. Clonar o repositório

git clone https://github.com/okadatdm-oss/INSTA_STALKER.git  
cd INSTA_STALKER  

---

### 3. Dar permissão de execução

chmod +x insta_stalker.sh  

---

### 4. Rodar o script

./insta_stalker.sh  

---

## 🤔 O que o script faz?

- Recebe um @ do Instagram do usuário
- Verifica se o perfil é público
- Procura contas públicas que mencionaram esse @ usando resultados da web

---

## 🚨 Observações importantes

- O script **NÃO hackeia contas**
- Ele apenas busca **informações públicas**
- Resultados dependem do que o Google indexou
- Contas privadas não aparecem

---

## 🛠️ Exemplo de uso
