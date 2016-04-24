# Capstone Project: Next Word Prediction
# Author: Al Shain
# Module: ui.R
#-------------------------------------------------------------------------------------------------
library(shiny)
require(markdown)

shinyUI(
  navbarPage("Predict the Next Word", inverse = FALSE, collapsable = FALSE, 
             tabPanel("Application", (includeScript("Google_Analytics.js")),
                      # includeCSS("bootstrap.css"),
                      fluidRow(
                        sidebarPanel(width=3,
                                     h3("Input:"),
                                     textInput("entry", 
                                               "This simple application will attempt to predict your next word from the phrase or sentence that you have entered.
                                               While not always perfect, its fairly predictive. For example, your phrase or sentence is:",
                                               "Jack and Jill ran up the"),
                                     # submitButton('Predict'),
                                     sliderInput("max", 
                                                 h5("Maximum number of TAGS to use in the word cloud:"), 
                                                 min = 10,  max = 100,  value = 50),
                                     br(),
                                     actionButton("update", "Click to Refresh"),
                                     hr(),
                                     helpText("1. Type your word phrase or incomplete sentence in the text field", style="color:#428ee8"),
                                     helpText("2. The value will be passed to the model while you are typing.", style="color:#428ee8"),
                                     helpText("3. To obtain more information on the app, please visit my websites: ", style="color:#428ee8"),
                                     a(img(src = "linkedin.png", height = 26, width = 26),href="https://www.linkedin.com/in/alshain"),
                                     a(img(src = "GitHub-Mark.png", height = 30, width = 30),href="https://github.com/omg-allen/Capstone"),
                                     a(img(src = "gmail.jpeg", height = 30, width = 30),href="mailto: aheuristicsolution@gmail.com"),
                                     br()
                                     ),
                        mainPanel(
                          column(5,
                                 h3("Word Prediction"),hr(),
                                 h5('The sentence you just typed:'),                             
                                 wellPanel(span(h4(textOutput('sent')),style = "color:#428ee8")),
                                 hr(),
                                 h5('Out of a possible five(5) top responses to your phrase, here is the top next word in your phrase that the application will predict:'),
                                 wellPanel(span(h4(textOutput('top1')),style = "color:#e8428e")),
                                 hr(),
                                 h5('The lesser four(4) top predictions to your phrase are:'),
                                 wellPanel(span(h5(textOutput('top2')),style = "color:#4942e8"),
                                           span(h5(textOutput('top3')),style = "color:#1b73dc"),
                                           span(h5(textOutput('top4')),style = "color:#599ceb"),
                                           span(h5(textOutput('top5')),style = "color:#86b7f0")),
                                 hr(),
                                 
                                 p('This Capstone project was based on the premise of next word predictions as modeled by the application, SWIFTKEY.
                                   For more details of the SwiftKey application visit, please visit the Wiki at', a("SwiftKey-Wiki",href="https://en.wikipedia.org/wiki/SwiftKey"))
                          ),
                          column(5,
                                 h3("Predict the Word Cloud"),hr(),
                                 h5("A", code("word cloud"), "or ", code("tag cloud"),"  is a visual representation of text data, typically used to depict keyword metadata (tags) 
                                    on websites, or to visualize free form text. Tags are usually single words, and the importance of each tag is shown with font size or color."),
                                 hr(),
                                 h5("Please click", code("Click to Refresh"), "button or move the", code("Slide Bar"), "to adjust the number of tags in the word cloud."),
                                 plotOutput("wordCloud"), # wordcloud
                                 br()
                          )
                          )
                        )
             )
             )
  )