# Treino Funcional do Flávio

Versão atual: diário de **peso (kg)**, imagens compactas, guia ilustrado com explicações, séries, cronômetro e avanço automático de semana.

## Acesso ao site
Para publicar, abra **Settings > Pages > Build and deployment**, selecione **Deploy from a branch**, branch **main** e pasta **/(root)**. O GitHub Pages publicará o `index.html` e a pasta `imagens/`.

## Histórico e privacidade
O histórico é salvo no navegador, por `localStorage` usando a chave `flavio-funcional-v1`. O site **ainda não sincroniza** os pesos e treinos com a nuvem. O repositório é público, portanto **NÃO envie JSONs de backup, dados de peso, senhas ou credenciais para o GitHub**.

Para mudar de dispositivo ou do arquivo local para o site publicado: use **Backup JSON** no endereço antigo e **Restaurar dados** na página publicada. Faça backup antes de limpar os dados do navegador.

## Atualizações
A página principal já está atualizada diretamente em `index.html`. O arquivo `treino_flavio_site_atualizado.zip` continua guardado como cópia antiga. **Não reenvie esse ZIP antigo**, pois a automação importadora substituirá o site atual pela versão anterior.

## Sincronização futura
O melhor próximo passo é autenticação individual e banco de dados privado (por exemplo Supabase Auth + Postgres, com Row Level Security). O e-mail não deve ser tratado como senha. A configuração de nuvem ainda requer escolha e autorização do titular dos registros.

## Concluir autenticação por e-mail (Supabase)
Projeto: `yrwtszdbpwskovipxzgz`. Em **Authentication > Email Templates > Magic Link**, troque o corpo para um modelo contendo **`{{ .Token }}`** para o e-mail levar um código numérico digitável em vez de depender apenas de link. Em **Authentication > URL Configuration**, configure:
- **Site URL:** `https://thalissakezia.github.io/treino-funcional-flavio/`
- **Redirect URLs:** `https://thalissakezia.github.io/treino-funcional-flavio/**`

O cliente usa apenas `sb_publishable_...` no navegador; nunca adicione service_role nem senhas. Para testar sincronização, entre no primeiro aparelho, registre um peso e marque um exercício; depois entre no segundo com o mesmo e-mail e verifique os dados.

**Importante:** antes de testar uma nova instalação, exporte a cópia dos registros atuais. Nesta versão, o backup manual continua disponível. O envio por e-mail e o fluxo completo não foram testados ainda.
