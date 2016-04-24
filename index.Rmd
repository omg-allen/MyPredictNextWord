---
title: "Predict the Next Word"
author: "Al Shain"
highlighter: highlight.js
output:
  html_document:
    css: www/bootstrap.css
    keep_md: yes
job: null
knit: slidify::knit2slides
mode: selfcontained
hitheme: tomorrow
subtitle: John Hopkins, Capstone Project April 2016
framework: io2012
widgets: []
---

## Predict the Next Word: A Somewhat Intuitive R App

Introducing an interactive Shiny R application that can predict the next word based on the phrase/sentence/word you enter. 
It's intuitive and easy to use. 

This Capstone project was based on the premise of next word predictions as modeled by the sofware company, SWIFTKEY.
For more information on the John Hopkins, Coursera Data Science Capstone project please visit:

<a target="_blank" href="https://www.coursera.org/learn/data-science-project">Coursera</a>


---

## How it works
If you have a phrase, sentence or word then this application can predict the succeeding word with the certain degree of probability.

Here are the steps:

1. The user enters the required phrase, sentence or word
2. The application utilizes a series of algorithms to figure out which word may occur next
3. The application outputs the results using four visual displays:</p>
  a. Redisplay of your phrase or sentence.
  
  b. The top ranked result appended to your phrase.
  
  c. A list of the bottom four predicted phrases.
  
  d. A Word or Tag Cloud of the possible words (based on the maximum number you have allowed)

---

## The Internal of the Applications

At the core, the application uses n-gram Markov model for prediction. An n-gram model is a type of probabilistic language model for predicting the next item in such a sequence in the form of a (n − 1)–order Markov model. You can read more about it here <a target="_blank" href="https://en.wikipedia.org/wiki/N-gram"> n-grams using Markov Models</a>. 

In the fields of computational linguistics and probability, an n-gram is a contiguous sequence of n items from a given sequence of text or speech. The items can be phonemes, syllables, letters, words or base pairs according to the application. The n-grams typically are collected from a text or speech corpus. When the items are words, n-grams may also be called shingles.[1]

An n-gram of size 1 is referred to as a "unigram"; size 2 is a "bigram" (or, less commonly, a "digram"); size 3 is a "trigram". Larger sizes are sometimes referred to by the value of n, e.g., "four-gram", "five-gram", and so on.

---

## How Do I Get my Hands on the Application?

Now, try it out for yourself!

<a target="_blank" href="http://alshain.shinyapps.io/PredictWord/">PredictNextWord - An Intuitive Shiny Application</a>

<a target="_blank" href="https://github.com/alshain/Data-Science/tree/master/Capstone%20Project/PredictWord"> Here's the source code</a>

### Thank you!



