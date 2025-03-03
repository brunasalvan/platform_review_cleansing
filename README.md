# Platform Review Cleansing

## About

Managing comment flood on establishment reviews in the bar de respeito map to maintain platform trustworthiness after a traffic surge

## Objective

Develop strategies for cleaning establishment reviews and structure [queries](https://github.com/brunasalvan/review_data_cleansing/blob/main/queries.sql) to perform database deletions.

## Tools

  - PostgreSQL (SSMS)
  
## Problem
  
- [x] What types of comments are pertinent in reviews?
- [x] What is the pattern for non-pertinent comments?
- [x] What characterizes a comment originating from a flood?
- [x] Which period will be considered for deletion?

## Procedures

- [x] Exploratory analysis of comments using SELECT
- [x] Structuring of [queries](https://github.com/brunasalvan/review_data_cleansing/blob/main/queries.sql)
- [x] Measurement of results and future impact on map reviews
- [x] Application in the test environment
- [x] Comparison with the real environment
- [x] Verification of improvements and optimizations of queries
- [x] Application in the real environment

## Defined Strategies

- [x] Users with comments starting with three consonants
- [x] Users who posted comments with three or fewer characters
- [x] Users who selected "not informed/other" in two registration steps
- [x] Users who posted comments containing only consonants
- [x] Users whose "name" data starts with three consecutive consonants

## Final Conclusions

- [x] More than 30,000 reviews were removed after filtering
- [x] Discuss ways to prevent uncontrolled account creation by adding new verification steps in registration
- [x] Create limitations on review submissions, such as a minimum character count
