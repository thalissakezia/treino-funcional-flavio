# Treino funcional do Flávio

Site responsivo com 30 exercícios, imagens compactas, cronômetro, histórico de semanas, medidas, gráficos e exportação de dados.

## Atualizar automaticamente pelo GitHub

O repositório `thalissakezia/treino-funcional-flavio` contém o fluxo `.github/workflows/importar-site.yml`.

1. Faça upload do **ZIP completo** chamado `treino_flavio_site_atualizado.zip` para a raiz do repositório (branch `main`).
2. A ação do GitHub deve extrair `index.html` e `imagens/` e fazer commit dos arquivos.
3. Acompanhe em **Actions > Importar site do Flávio** e confirme se a execução passou.
4. Configure **Settings > Pages** para **Deploy from a branch**, `main`, `/ (root)`.

Se Actions estiver desativado ou não puder escrever na branch, extraia o ZIP no celular/computador e envie manualmente `index.html` e a pasta `imagens/`, mantendo a estrutura.

## Dados

A persistência nesta versão é via `localStorage`: conclusão dos exercícios, semanas e medidas, no navegador. Ao concluir os 30 exercícios abre-se a semana seguinte, sem apagar histórico. A partir da semana 5 o plano mantém a intensidade da semana 4, sem aumento automático de carga.

**Não existe sincronização em nuvem nesta versão.** Utilize a função **Backup JSON** e guarde o arquivo com segurança. Para mudar de aparelho ou mudar o endereço/origem do site (por exemplo, de arquivo baixado para GitHub Pages), utilize **Restaurar dados**. O CSV contém apenas medidas, enquanto o JSON inclui também as semanas e exercícios marcados.

Dados pessoais não são enviados ao GitHub. O repositório está público, mas contém apenas arquivos do site e desenhos.
