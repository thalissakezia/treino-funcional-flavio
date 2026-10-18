# Treino funcional do Flávio

Treinos ilustrados e compactos de segunda a sábado, seleção automática do dia atual, controle das semanas, registro diário do peso, gráfico de evolução e sincronização de dados privados usando Supabase.

## Publicação — falta ativar o GitHub Pages

O arquivo do site (`index.html` e `imagens/`) está no repositório. A automação [Publicar Treino do Flávio](../../actions/workflows/publicar-site.yml) foi criada e validou os arquivos, porém o job `Configurar Pages` falhou porque o Pages ainda não está ativado.

Faça **uma vez**:
1. Abra **Settings > Pages** em `https://github.com/thalissakezia/treino-funcional-flavio/settings/pages`.
2. Em **Build and deployment > Source**, selecione **GitHub Actions**. Salve se houver botão.
3. O próximo push em `main` publicará o site automaticamente, ou acione **Run workflow** na aba Actions.

Endereço esperado após publicação: `https://thalissakezia.github.io/treino-funcional-flavio/`.

## Supabase — falta concluir as configurações de autenticação

O projeto gratuito `treino-funcional-flavio` está ativo. O banco contém três tabelas com Row Level Security por usuário autenticado. O cliente web usa somente a **publishable key** (segura para frontend), nunca uma chave secreta.

Configure uma vez no painel do projeto:
1. Em **Authentication > URL Configuration**:
   - **Site URL:** `https://thalissakezia.github.io/treino-funcional-flavio/`
   - **Redirect URLs:** inclua `https://thalissakezia.github.io/treino-funcional-flavio/**`
2. Em **Authentication > Email Templates > Magic Link**, cole o conteúdo de [`supabase/email-templates/magic-link.html`](supabase/email-templates/magic-link.html) e salve, para enviar código e link no mesmo e-mail.

O site suporta tanto a digitação do código quanto o clique em um link de autenticação, quando o domínio está autorizado. Enquanto o modelo de e-mail não for atualizado, há também um campo para colar um link de acesso recebido.

## Privacidade e backup

Pesagens e exercícios são vinculados à conta autenticada no banco privado. O navegador guarda uma cópia local para uso offline e o site disponibiliza **Guardar uma cópia** e **Recuperar meus dados**. A sincronização em dois aparelhos ainda precisa ser testada com um login verdadeiro depois das configurações acima.

**Nunca publique** arquivos com seus pesos, backups pessoais, senhas ou tokens de autenticação no GitHub. Este repositório é público.

## Manutenção

A atualização é feita diretamente em `index.html` e `imagens/`. A automação antiga que importava o ZIP foi desativada, para evitar a substituição da versão atual por um pacote desatualizado.
