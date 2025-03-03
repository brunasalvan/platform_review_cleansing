Tratamento do flood de comentários nas avaliações dos estabelecimentos do mapa Bar de Respeito visando manter a credibilidade da plataforma após um grande número de acessos repentinos

<h3>Objetivo</h3>

Pensar em estratégias de higienização das reviews dos estabelecimentos e estruturar queries para efetuar o delete no banco de dados

<h3>Ferramentas</h3>

• PostgreSQL •

<h3>Problema</h3>
<ul>
  <li>Quais tipos de comentários são pertinentes nas reviews?</li>
  <li>Qual é o padrão de comentários não pertinentes?</li>
  <li>O que caracteriza um comentário proveniente de flood?</li>
  <li>Qual período será considerado no delete?</li>
</ul>

<h3>Etapas</h3>
<ul>
  <li>Análise exploratória dos comentários com SELECT</li>
  <li>Estruturação das queries</li>
  <li>Medição dos resultados e futuro impacto nos reviews do mapa</li>
  <li>Aplicação no ambiente de testes</li>
  <li>Comparação com o ambiente real</li>
  <li>Verificação de melhorias e otimizações das queries</li>
  <li>Aplicação no ambiente real</li>
</ul>

<h3>Estratégias Definidas</h3>
<ul>
  <li>Usuários com comentários que iniciam com 3 consoantes</li>
  <li>Usuários que comentaram 3 caracteres ou menos</li>
  <li>Usuários com "não informado/outro"em duas etapas do cadastro na plataforma</li>
  <li>Usuários que comentaram apenas consoantes</li>
  <li>Usuários com o dado "nome" iniciando com 3 consoantes seguidas</li>
</ul>

<h3>Conclusões</h3>
<ul>
  <li>Foram removidas mais de 30 mil reviews após a filtragem</li>
  <li>Discutir formas de evitar criação de contas desenfreadas, adicionando novas etapas de verificação no cadastro</li>
  <li>Criar limitações no envio de reviews, como mínimo de caracteres</li>
</ul>
