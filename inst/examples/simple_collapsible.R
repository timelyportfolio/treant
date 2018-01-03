library(treant)
library(htmltools)

trhw <- treant(
  list(
    chart = list(
      animateOnInit = TRUE,
      node = list(collapsable = TRUE),
      animation =  list(
        nodeAnimation =  "easeOutBounce",
        nodeSpeed =  700,
        connectorsAnimation =  "bounce",
        connectorsSpeed =  700
      )
    ),
    nodeStructure = list(
      text = list(title = "root"),
      children = list(
        list(text = list(title = "A")),
        list(text = list(title = "B")),
        list(text = list(title = "C"))
      )
    )
  )
)

browsable(
  tagList(
    tags$style(HTML(
  '
  .Treant > .node { padding: 3px; border: 1px solid #484848; border-radius: 3px; }
  .Treant > .node img { width: 100%; height: 100%; }

  .Treant .collapse-switch { width: 100%; height: 100%; border: none; }
  .Treant .node.collapsed { background-color: #DEF82D; }
  .Treant .node.collapsed .collapse-switch { background: none; }
  '
    )),
    trhw
  )
)
