/* ASF Nav — navegação compartilhada do ecossistema ASF.
   Uso em qualquer satélite (mesmo domínio github.io):
   <div id="asf-nav"></div><script src="https://acarolmourad-commits.github.io/asf-nav.js"></script>
   A nav destaca automaticamente o satélite atual pelo pathname. */
(function(){
  var BASE='https://acarolmourad-commits.github.io/';
  var SITES=[
    ['asf-app','🏄 App'],['asf-previsao','🌊 Previsão'],['asf-mare','🌙 Maré'],
    ['asf-alerta','🚨 Alerta'],['asf-praias','🏖️ Praias'],['asf-mapa','🗺️ Mapa'],
    ['asf-goldenhour','🌅 Golden Hour'],['asf-treino','🏋️ Treino'],['asf-manobras','⚡ Manobras'],
    ['asf-apnea','🫁 Apneia'],['asf-respira','🌬️ Respira'],['asf-yoga','🧘‍♀️ Yoga'],
    ['asf-volume','📏 Volume'],['asf-comunidade','🤝 Comunidade'],['asf-eventos','📅 Eventos'],
    ['asf-galeria','📸 Galeria'],['asf-carona','🚗 Carona'],['asf-parceiras','🤙 Parceiras'],
    ['asf-kids','🧒 Kids'],['asf-ranking','🏆 Ranking'],['asf-quiz','❓ Quiz'],
    ['asf-historia','📜 História'],['asf-bemestar','🧘 Bem-estar'],['asf-mental','🧠 Mental'],
    ['asf-nutricao','🥗 Nutrição'],['asf-glossario','📖 Glossário'],['asf-equipamento','🏂 Equipamento'],
    ['asf-seguranca','🛟 Segurança'],['asf-sos','🆘 SOS'],['asf-eco','🌱 Eco'],
    ['asf-mercado','🛒 Mercado'],['asf-viagens','✈️ Viagens'],['asf-diario','📓 Diário']
  ];
  var current=location.pathname.split('/')[1]||'';
  var host=document.getElementById('asf-nav');
  if(!host){host=document.createElement('div');host.id='asf-nav';document.body.prepend(host);}
  var nav=document.createElement('nav');
  nav.style.cssText='position:sticky;top:0;background:#0E2439;display:flex;flex-wrap:wrap;justify-content:center;gap:4px;padding:8px 12px;z-index:999;font-family:Outfit,system-ui,sans-serif';
  var home=document.createElement('a');
  home.href=BASE;home.textContent='🌐 Hub';
  home.style.cssText='color:#FFD166;text-decoration:none;font-weight:800;font-size:12px;padding:5px 9px';
  nav.appendChild(home);
  SITES.forEach(function(s){
    var a=document.createElement('a');
    a.href=BASE+s[0]+'/';a.textContent=s[1];
    var on=s[0]===current;
    a.style.cssText='color:'+(on?'#FFD166':'#fff')+';text-decoration:none;font-weight:'+(on?'800':'600')+';font-size:12px;padding:5px 9px;border-radius:6px'+(on?';background:#00A8CC':'');
    nav.appendChild(a);
  });
  host.appendChild(nav);
})();