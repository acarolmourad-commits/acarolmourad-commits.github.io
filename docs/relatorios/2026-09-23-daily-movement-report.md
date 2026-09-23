# Daily ASF Movement Report — 2026-09-23 (versão corrigida)

Janela: 2026-09-22T11:26Z → 2026-09-23T11:44Z | Fonte: API GitHub autenticada + verificação HTTP direta

## RESUMO
Commits: 13 coletados ✅ | Sites: 4/4 no ar ✅ | Sem bloqueios.

## DEV — Commits reais (24h)
- asf-app: 5 commits — ASF Bot: "Daily content update 2026-09-23", "Breathing & stretching update"
- asf-eventos: 2 commits — footer com links legais (Privacidade/Cookies/Termos)
- asf-mapa: 2 commits — footer com links legais
- asf-ranking: 4 commits — footer com links legais
Destaque: rollout de footer legal concluído nos 3 satélites; atualizações diárias automatizadas ativas no asf-app.

## SITE — Status real (URLs corretas, com prefixo asf-)
- /asf-app/ → 200 (0,23s) ✅
- /asf-eventos/ → 200 (0,31s) ✅
- /asf-mapa/ → 200 (0,13s) ✅
- /asf-ranking/ → 200 (0,23s) ✅
- Root → 200 ✅
Nota: o relatório do cron testou paths sem prefixo (/app/, /eventos/…) — falso alarme corrigido no SKILL.md.

## EXCLUÍDOS DO ESCOPO (decisão 2026-09-23)
asf-receitas, asf-blog, asf-onde-assinar — repositórios inexistentes por decisão (duplicidade). Não reportar.

## PENDÊNCIA OPERACIONAL
Cron local sem GH_TOKEN — criar PAT fine-grained read-only e injetar no ambiente do cron.