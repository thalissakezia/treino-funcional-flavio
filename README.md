# Treino Funcional do Flávio

Site estático e responsivo para acompanhar exercícios funcionais em casa, de segunda a sábado.

## Funcionalidades
- Cards compactos: imagens completas à esquerda e orientações ao lado
- 30 movimentos por semana, controle de conclusão e cronômetro
- Avanço automático para a semana seguinte ao concluir a semana atual
- Histórico de peso, cintura, peito, quadril, braços e coxas
- Gráficos, backup JSON, restauração de dados e exportação CSV
- Uso gratuito, sem API paga ou assinatura

## Publicação do site
1. Extraia o ZIP do projeto fornecido no ChatGPT.
2. Envie **o arquivo `index.html` e a pasta `imagens/`** para a raiz deste repositório, preservando os nomes de arquivo. O README pode permanecer.
3. Em **Settings > Pages > Build and deployment**, selecione **Deploy from a branch**, branch **main**, pasta **/(root)**.
4. O GitHub Pages fornecerá a URL do site.

## Armazenamento de dados
Os registros ficam salvos no `localStorage` do navegador usado para acessar o site. **Não há sincronização na nuvem nesta versão.** Caso troque de celular ou limpe os dados do navegador, importe um backup JSON criado anteriormente. O GitHub armazena o código e imagens do site, mas não as medidas pessoais registradas no navegador.

## Nota
Guia educativo de atividade física. Por causa de sedentarismo prolongado e peso atual, é recomendado obter avaliação clínica antes de iniciar. Não use o treino como substituto de acompanhamento profissional.
