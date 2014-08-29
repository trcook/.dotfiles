


library(boot)
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


# Some global variables that I always use: 
dissertation_home<-"~/Documents/Boulder/Projects/Dissertation/Data"
.boxcar_token<-"fbk7wDNoTKbP8BJb9U4k"
require('tmisc')
print("hello! I'm the default .Rprofile")
.Rprofiles_loaded<-list('~/.Rprofile')
