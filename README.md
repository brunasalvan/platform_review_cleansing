<details><summary><h1>Português | pt-br </h1></summary>

  Tratamento do flood de comentários nas avaliações dos estabelecimentos do mapa Bar de Respeito visando manter a credibilidade da plataforma após um grande    número de acessos repentinos

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
</details>

<details><summary><h1>English | en </h1></summary>

Managing comment flood on establishment reviews in the bar de respeito map to maintain platform trustworthiness after a traffic surge
    
  <h3>Objective</h3>
    
  <p>Develop strategies for cleaning establishment reviews and structure queries to perform database deletions.</p>
    
  <h3>Tools</h3>
    
  <p>&bull; PostgreSQL &bull;</p>
    
  <h3>Problem</h3>
  <ul>
      <li>What types of comments are pertinent in reviews?</li>
      <li>What is the pattern for non-pertinent comments?</li>
      <li>What characterizes a comment originating from a flood?</li>
      <li>Which period will be considered for deletion?</li>
  </ul>
    
  <h3>Procedures</h3>
  <ul>
    <li>Exploratory analysis of comments using SELECT</li>
    <li>Structuring of queries</li>
    <li>Measurement of results and future impact on map reviews</li>
    <li>Application in the test environment</li>
    <li>Comparison with the real environment</li>
    <li>Verification of improvements and optimizations of queries</li>
    <li>Application in the real environment</li>
  </ul>
    
  <h3>Defined Strategies</h3>
  <ul>
    <li>Users with comments starting with three consonants</li>
    <li>Users who posted comments with three or fewer characters</li>
    <li>Users who selected "not informed/other" in two registration steps</li>
    <li>Users who posted comments containing only consonants</li>
    <li>Users whose "name" data starts with three consecutive consonants</li>
  </ul>
    
  <h3>Final Conclusions</h3>
  <ul>
    <li>More than 30,000 reviews were removed after filtering</li>
    <li>Discuss ways to prevent uncontrolled account creation by adding new verification steps in registration</li>
    <li>Create limitations on review submissions, such as a minimum character count</li>
  </ul>
</details>
