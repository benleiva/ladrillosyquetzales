####create fluid row####
fluidRow(
  
  #### put input area here ####
  column(4,
         style = "background-color: #E8E8E8",
         
         ##change the title here
         div(style="display: inline-block; vertical-align:top; text-align:center; width: 100%;",
             strong("Parámetros")),
         
         br(),
         ##put input boxes here
         div(style="display: inline-block;vertical-align:top; width: 110px;",
             strong("Ingreso anual:"), 
             textInput("ZMmean1", NULL, width = 60)),
         
         div(style="display: inline-block;vertical-align:top; width: 100px;",
             strong("Variación anual:"),
             textInput("ZMse1", NULL, width = 60)),
         
         br(),
         
         div(style="display: inline-block;vertical-align:top; width: 110px;",
             strong("Costo anual:"),
             textInput("ZMsd1", NULL, width = 60)), 
         
         div(style="display: inline-block;vertical-align:top; width: 100px;",
             strong("Variación anual:"),
             textInput("ZMse1", NULL, width = 60)),
         
         br(),
         div(style="display: inline-block;vertical-align:top; width: 200px;",
             strong("Años de análisis"),
             textInput("ZMmean2", NULL, width = 60)),
         
         br(),
         div(style="display: inline-block;vertical-align:top; width: 110px;",
             strong("Tasa de descuento"),
             textInput("ZMsd2", NULL, width = 60)), 
         submitButton("Valorar")
         
  ), ## close column 1
  
  #### put output here ####
  column(8, 
         tabsetPanel(
           tabPanel("Summary", htmlOutput("ZMsummary")),
           tabPanel("Code", withMathJax(), 
                    HTML(markdown::markdownToHTML(knit("ztestM_code.Rmd", quiet = T)))),
           tabPanel("Help", HTML("<iframe width=\"560\" height=\"315\" 
                                 src=\"https://www.youtube.com/embed/CyfOS7Ew-Hw\" 
                                 frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>"))
         ) ## close tabset panel
         
  ) ## close column
  
) ##close fluid row
