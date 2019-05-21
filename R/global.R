
##Functions######################################################
# ========================== Functions ======================== #
##pairwise
selectorUI <- function(id){
  ns = NS(id)
  rev_label <- function(label){
    paste0(rev(unlist(strsplit(label,split = '-'))),collapse = '-')
  }
  tags$div(
    fluidRow(
      div(style="display:inline-block;vertical-align:middle;margin-left:15px",
          HTML(paste0(rev_label(ns('Contrast group'))))
      ),
      br(),
      div(style="display:inline-block;vertical-align:middle;margin-left:15px;margin-right:10px",
          uiOutput(ns('Treatment'))),
      div(style="display:inline-block;vertical-align:middle;height:45px",
          HTML('VS')
      ),
      div(style="display:inline-block;vertical-align:middle;margin-left:10px;margin-right:15px",
          uiOutput(ns('Control'))
      )
    ),
    id = paste0('param', id)
  )
}

selectorServer <- function(input, output, session, thisList, multiple=F){
  ns = session$ns
  output$Treatment <- renderUI({
    selectInput(
      inputId = ns('Treatment'),multiple = multiple,
      label = NULL,
      width = '250px',
      choices = thisList, selected = NULL)
  })
  
  output$Control <- renderUI({
    selectInput(
      inputId = ns('Control'),multiple = multiple,
      label = NULL,
      width = '250px',
      choices = thisList, selected = NULL)
  })
}

##mean
selectorUI_mean <- function(id){
  ns = NS(id)
  rev_label <- function(label){
    paste0(rev(unlist(strsplit(label,split = '-'))),collapse = '-')
  }
  tags$div(
    fluidRow(
      div(style="display:inline-block;vertical-align:middle;margin-left:15px",
          HTML(paste0(rev_label(ns('Contrast group'))))
      ),
      br(),
      div(style="display:inline-block;vertical-align:middle;margin-left:15px;margin-right:10px",
          uiOutput(ns('Treatment_mean'))),
      div(style="display:inline-block;vertical-align:middle;height:45px",
          HTML('VS')
      ),
      div(style="display:inline-block;vertical-align:middle;margin-left:10px;margin-right:15px",
          uiOutput(ns('Control_mean'))
      )
    ),
    id = paste0('param_mean', id)
  )
}

selectorServer_mean <- function(input, output, session, thisList, multiple=T){
  ns = session$ns
  output$Treatment_mean <- renderUI({
    selectInput(
      inputId = ns('Treatment_mean'),multiple = multiple,
      label = NULL,
      width = '250px',
      choices = thisList, selected = NULL)
  })
  
  output$Control_mean <- renderUI({
    selectInput(
      inputId = ns('Control_mean'),multiple = multiple,
      label = NULL,
      width = '250px',
      choices = thisList, selected = NULL)
  })
}

##pairwise difference
selectorUI_pgdiff <- function(id){
  ns = NS(id)
  rev_label <- function(label){
    paste0(rev(unlist(strsplit(label,split = '-'))),collapse = '-')
  }
  tags$div(
    fluidRow(
      div(style="display:inline-block;vertical-align:middle;margin-left:15px",
          HTML(paste0(rev_label(ns('Contrast group'))))
      ),
      br(),
      div(style="display:inline-block;vertical-align:middle;margin-left:15px;margin-right:10px",
          uiOutput(ns('Treatment_pgdiff'))),
      div(style="display:inline-block;vertical-align:middle;height:45px",
          HTML('VS')
      ),
      div(style="display:inline-block;vertical-align:middle;margin-left:10px;margin-right:15px",
          uiOutput(ns('Control_pgdiff'))
      )
    ),
    id = paste0('param_pgdiff', id)
  )
}

selectorServer_pgdiff <- function(input, output, session, thisList, multiple=T){
  ns = session$ns
  output$Treatment_pgdiff <- renderUI({
    selectInput(
      inputId = ns('Treatment_pgdiff'),multiple = multiple,
      label = NULL,
      width = '250px',
      choices = thisList, selected = NULL)
  })
  
  output$Control_pgdiff <- renderUI({
    selectInput(
      inputId = ns('Control_pgdiff'),multiple = multiple,
      label = NULL,
      width = '250px',
      choices = thisList, selected = NULL)
  })
}

create.folders <- function(wd=getwd()){
  folder.name <- paste0(wd,'/',c('data','figure','result','report'))
  for(i in folder.name){
    if(!file.exists(i))
      dir.create(i,recursive = T)
  }
}

showmessage <- function(text='Done! Plots in pdf and png formats are saved into figure folder',
                        duration = 10, type='error'){
  message(text)
  showNotification(text,duration = duration,type=type)
}
