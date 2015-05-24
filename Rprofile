


library(boot)
library(ggplot2)
if(interactive()){
#       library(colorout)
       options(datatable.print.nrows=Inf)
       if(Sys.getenv("TERM") != "linux" && Sys.getenv("TERM") != "")
#	   setOutputColors256(verbose = FALSE)
       if(nchar(Sys.getenv("DISPLAY")) > 1){
	   grDevices::X11.options(width = 4.5, height = 4, ypos = 0,
				  xpos = 1000, pointsize = 10)
	   options(editor = 'mvim -f -c "set ft=r"')
	   options(pager = "/Library/Frameworks/R.framework/Resources/bin/pager")
       } else {
	   options(pager = "/Library/Frameworks/R.framework/Resources/bin/pager")
       }
   }


# setup r_profile loaded
options(profiles_loaded=append(options()$profiles_loaded,"Default(~/.Rprofile)"))


# Some global variables that I always use: 
   dissertation_root<-"~/Documents/Boulder/Projects/Dissertation/"
dissertation_home<-"~/Documents/Boulder/Projects/Dissertation/Data"
.boxcar_token<-"fbk7wDNoTKbP8BJb9U4k"
require('tmisc')
## .First() run at the start of every R session. 
## Use to load commonly used packages? 
.First <- function() {
  if(file.exists(path.expand("~/.Rprofile"))){
  cat("\n Hello! I'm the Default .Rprofile at",path.expand("~/.Rprofile"), "\n")
  }else{
    cat("\n Hello! I'm .Rprofile loaded from an unknown location")
#    .Rprofiles_loaded<-list('~/.Rprofile')
  }
  
}



# open help in browser
options(help_type = "html") 

