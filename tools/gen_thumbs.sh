#!/usr/bin/env bash
# ASF — gerador de thumbnails Open Graph (1200x630)
set -euo pipefail
mkdir -p thumbnails
APPS=(
  "acarolmourad-commits.github.io|ASF|Hub de apps da Associação de Surf Feminino"
  "asf-achados|ASF Achados|Achados e perdidos do pico quilhas leashes chaves"
  "asf-alerta|ASF Alerta|Alertas de condições do mar e avisos da comunidade"
  "asf-apnea|ASF Apneia|Treinador de apneia e respiração para segurança em wipeouts"
  "asf-app|ASF App|Associação de Surf Feminino"
  "asf-atlas|ASF Atlas|Mapa interativo dos picos de surf do litoral norte de SP"
  "asf-bemestar|ASF Bem-estar|Saúde yoga e autocuidado para surfistas"
  "asf-carona|ASF Carona|Carona solidária para praias e eventos de surf"
  "asf-checklist|ASF Checklist|Checklist pré-surf equipamento condições e segurança"
  "asf-clube|ASF Clube|Carteirinha digital e benefícios da associada ASF"
  "asf-comunidade|ASF Comunidade|Histórias mentorias e rede de apoio do surf feminino"
  "asf-desafio|ASF Desafio 30|Tracker de 30 dias de evolução no surf"
  "asf-desafios|ASF Desafios|Desafios semanais da comunidade com XP e níveis"
  "asf-diario|ASF Diário|Diário de surf com registro de sessões e evolução"
  "asf-eco|ASF Eco|Sustentabilidade limpeza de praias e surf ecológico"
  "asf-equipamento|ASF Equipamento|Guia de pranchas wetsuits e acessórios"
  "asf-eventos|ASF Eventos|Calendário de competições e eventos de surf feminino"
  "asf-filmes|ASF Filmes|Filmes e documentários sobre mulheres no surf"
  "asf-galeria|ASF Galeria|Mural colaborativo de fotos de surf feminino"
  "asf-glossario|ASF Glossário|Dicionário de termos do surf para iniciantes"
  "asf-goldenhour|ASF Golden Hour|Nascer e pôr do sol ao vivo para fotos de surf"
  "asf-historia|ASF História|A história do surf feminino no Brasil e no mundo"
  "asf-inspiracao|ASF Inspiração|Frase do dia e histórias inspiradoras"
  "asf-kids|ASF Kids|Iniciação ao surf para meninas com segurança e diversão"
  "asf-leitura|ASF Leitura de Mar|Identifique correntes e canais olhando a praia"
  "asf-loja|ASF Loja|Marcas parceiras e cupons exclusivos para a comunidade"
  "asf-mala|ASF Mala|Checklist inteligente de praia por tipo de sessão"
  "asf-manobras|ASF Manobras|Trilha de progressão de manobras com checklist e XP"
  "asf-mapa|ASF Mapa|Mapa interativo dos picos de surf do litoral norte de SP"
  "asf-mare|ASF Maré|Calculadora de tábua de marés e fases da lua"
  "asf-matematica|ASF Matemática do Surf|O surf explicado com números"
  "asf-memoria|ASF Memória|Jogo da memória com os termos do surf"
  "asf-mental|ASF Mental|Mindset respiração e psicologia do esporte"
  "asf-mentorias|ASF Mentorias|Mentorias entre surfistas experientes e iniciantes"
  "asf-mercado|ASF Mercado|Troca e venda de equipamentos usados"
  "asf-nutricao|ASF Nutrição|Alimentação e hidratação para surfistas"
  "asf-parceiras|ASF Parceiras|Parceiras de surf por nível praia e horário"
  "asf-patrocinio|ASF Patrocínio|Apoie o surf feminino cotas e parcerias"
  "asf-podcast|ASF Podcast|Episódios em áudio sobre surf feminino"
  "asf-ponto|ASF Ponto|Check-in ao vivo quem está em qual pico agora"
  "asf-popup|ASF Pop-up|Cronômetro de treino de pop-up com séries guiadas"
  "asf-praias|ASF Praias|Guia de praias para surfistas no litoral norte de SP"
  "asf-previsao|ASF Previsão|Previsão de ondas vento e maré"
  "asf-quiz|ASF Quiz|Quiz diário de conhecimento do surf com XP e streak"
  "asf-ranking|ASF Ranking|Ranking gamificado da comunidade ASF"
  "asf-respira|ASF Respira|Treinador de respiração 4-4-4 e apneia"
  "asf-seguranca|ASF Segurança|Segurança no mar etiqueta e primeiros socorros"
  "asf-sonhos|ASF Sonhos|Vision board de metas e sonhos de surf"
  "asf-sono|ASF Sono|Sono e recuperação para performance no surf"
  "asf-sos|ASF SOS|Botão de emergência com geolocalização"
  "asf-treino|ASF Treino|Treinos e progressão de surf para mulheres"
  "asf-vento|ASF Vento|Vento direção e temperatura ao vivo nas praias"
  "asf-viagens|ASF Viagens|Roteiros de surf trips e expedições"
  "asf-volume|ASF Volume|Calculadora de volume ideal de prancha"
  "asf-yoga|ASF Yoga|Aquecimento e yoga guiado para surfistas"
)
for entry in "${APPS[@]}"; do
  IFS='|' read -r NAME TITLE SUB <<< "$entry"
  convert -size 1200x630 \
    -define gradient:angle=135 gradient:'#0E2439'-'#00A8CC' \
    \( -size 1200x630 gradient:none-'#9B59B6' -function sinusoid 1,90,0.5,0.5 \) \
    -compose blend -define compose:args=25 -composite \
    -fill 'rgba(255,255,255,0.10)' -draw "rectangle 0,470 1200,630" \
    -fill 'rgba(255,255,255,0.07)' -draw "rectangle 0,520 1200,630" \
    -gravity NorthWest \
    -fill 'rgba(255,255,255,0.18)' -draw "roundrectangle 80,70 230,120 25,25" \
    -font DejaVu-Sans-Bold -pointsize 28 -fill 'rgba(255,255,255,0.9)' \
    -annotate +120+82 'ASF' \
    -font DejaVu-Sans-Bold -pointsize 80 -fill white -annotate +80+220 "$TITLE" \
    -font DejaVu-Sans -pointsize 32 -fill '#E6F5FA' -annotate +80+360 "$SUB" \
    -font DejaVu-Sans-Bold -pointsize 24 -fill 'rgba(255,255,255,0.65)' \
    -annotate +80+560 "acarolmourad-commits.github.io/$NAME/" \
    -quality 82 "thumbnails/$NAME.jpg"
done
echo "OK: $(ls thumbnails | wc -l) thumbnails geradas"
