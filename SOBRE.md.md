# Review Data Cleansing

## Sobre

Tratamento do flood de comentários nas avaliações dos estabelecimentos do mapa Bar de Respeito visando manter a credibilidade da plataforma após um grande número de acessos repentinos.

## Objetivo

  Pensar em estratégias de higienização das reviews dos estabelecimentos e estruturar [queries](https://github.com/brunasalvan/review_data_cleansing/blob/main/queries.sql) para efetuar o delete no banco de dados.

## Ferramentas

  - PostgreSQL
  
## Problema
  
- [x] Quais tipos de comentários são pertinentes nas reviews?
- [x] Qual é o padrão de comentários não pertinentes?
- [x] O que caracteriza um comentário proveniente de flood?
- [x] Qual período será considerado no delete?

## Etapas

- [x] Análise exploratória dos comentários com SELECT
- [x] Estruturação das [queries](https://github.com/brunasalvan/review_data_cleansing/blob/main/queries.sql)
- [x] Medição dos resultados e futuro impacto nos reviews do mapa
- [x] Aplicação no ambiente de testes
- [x] Comparação com o ambiente real
- [x] Verificação de melhorias e otimizações das queries
- [x] Aplicação no ambiente real

## Estratégias Definidas

- [x] Usuários com comentários que iniciam com 3 consoantes
- [x] Usuários que comentaram 3 caracteres ou menos
- [x] Usuários com "não informado/outro"em duas etapas do cadastro na plataforma
- [x] Usuários que comentaram apenas consoantes
- [x] Usuários com o dado "nome" iniciando com 3 consoantes seguidas

## Conclusões

- [x] Foram removidas mais de 30 mil reviews após a filtragem
- [x] Discutir formas de evitar criação de contas desenfreadas, adicionando novas etapas de verificação no cadastro
- [x] Criar limitações no envio de reviews, como mínimo de caracteres