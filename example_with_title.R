      require(rCharts)
      
      df <- data.frame(x=1:20,y=runif(n=20))
      
      n1 <- nPlot(
        y~x,
        data=df,
        type="multiBarChart"
      )
      n1$yAxis( axisLabel = "Randomness" )
      
      #nvd3 draws the label but falls outside the bounds
      #so two ways to fix
      
      #best way I believe is to set the margin to allow room
      #nvd3 draws at -63, so something bigger than 63
      #n1$chart(margin = list(left = 100))
      #n1
      
      
      #second way as discussed here
      #https://github.com/ramnathv/rCharts/issues/102
      n1$yAxis( axisLabel = "Randomness", width = 40 )
      n1
      
      
      #now let's add a title
      #for a local template something like this
      #n1$templates$script <- "./chartWithTitle.html"
      n1$templates$script <- "http://timelyportfolio.github.io/rCharts_nvd3_templates/chartWithTitle.html"
      n1$set(title = "rCharts + nvd3 Power")
      n1
      
      #using some css style from http://tympanus.net/codrops/2012/11/02/heading-set-styling-with-css/
      #put in a different template 
      n1$templates$script <- "http://timelyportfolio.github.io/rCharts_nvd3_templates/chartWithTitle_styled.html"
      n1