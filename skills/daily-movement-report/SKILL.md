---
name: daily-movement-report
description: Relatório diário de movimentação do ecossistema ASF (commits + status dos sites)
---

# Daily ASF Movement Report

## Escopo (fonte da verdade: /ESCOPO-MONITORAMENTO.md)

### Repositórios monitorados (somente estes 4)
- acarolmourad-commits/asf-app
- acarolmourad-commits/asf-eventos
- acarolmourad-commits/asf-mapa
- acarolmourad-commits/asf-ranking

### EXCLUÍDOS — nunca reportar como erro
- asf-receitas, asf-blog, asf-onde-assinar → repositórios NÃO existem por decisão (duplicidade com asf-nutricao, asf-inspiracao/asf-leitura e asf-clube). Não listar nem como 404.

## URLs dos sites (CORRETO — sempre com prefixo asf-)
- https://acarolmourad-commits.github.io/asf-app/
- https://acarolmourad-commits.github.io/asf-eventos/
- https://acarolmourad-commits.github.io/asf-mapa/
- https://acarolmourad-commits.github.io/asf-ranking/

⚠️ NUNCA testar /app/, /eventos/, /mapa/, /ranking/ (sem prefixo) — esses paths não existem e geram falso alarme de "sites offline".

## Autenticação GitHub (OBRIGATÓRIO)
- A coleta de commits EXIGE token: usar env GH_TOKEN ou GITHUB_TOKEN (PAT fine-grained, permissão read em repos).
- API sem token tem rate limit de 60 req/h e retorna 403 — nesse caso, reportar "bloqueado por autenticação" e NUNCA afirmar "sem atividade de desenvolvimento".
- Org/usuário canônico dos repositórios: acarolmourad-commits (confirmado via API autenticada em 2026-09-23).

## Regras de integridade
1. Nunca inventar dados de commits; se a API falhar, dizer que não foi possível coletar.
2. Distinguir "site fora do ar" (URL correta retorna 5xx/timeout) de "URL errada" (404 em path sem prefixo asf-).
3. Commits de bots (ASF Bot, github-actions[bot]) contam como atividade e devem ser listados.