# Treino funcional do Flávio

Site de treino funcional feito para o Flávio, com treinos ilustrados de segunda a sábado.

Site: https://thalissakezia.github.io/treino-funcional-flavio/

## O que o site faz

- Abre direto no treino do dia
- Mostra cada exercício com imagem, séries e repetições
- Controla as semanas do programa
- Registra o peso diário e mostra um gráfico da evolução
- Login por código no e-mail e sincronização entre aparelhos (Supabase)
- Funciona offline e permite guardar e recuperar uma cópia dos dados

## Tecnologias

- HTML, CSS e JavaScript
- Supabase (autenticação e banco com Row Level Security)
- GitHub Pages e GitHub Actions para publicar

## Configuração

1. Em Settings > Pages, escolha GitHub Actions como fonte. Cada push na `main` publica o site.
2. No Supabase, em Authentication > URL Configuration, coloque o endereço do site em Site URL e em Redirect URLs.
3. Em Authentication > Email Templates > Magic Link, use o modelo de `supabase/email-templates/magic-link.html` para mandar o código e o link no mesmo e-mail.
4. A estrutura do banco está em `supabase/migrations`.

O site usa só a chave pública (publishable key) do Supabase. Chaves secretas, tokens e backups com dados pessoais não devem ir para este repositório, que é público.
