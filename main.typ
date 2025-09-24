#import "@preview/abbr:0.2.3"
#abbr.load("/abbriviations.csv")

#import "/settings/about.typ"
#import "/settings/settings.typ": settings
#import "/helpers/include-chapters.typ": include-chapters

#show: settings


/** 
* --- front matter
*/
#[
  // settings
  #set page(numbering: "i")
  #set heading(numbering: none)

  // content
  #include "paratext/titlepage.typ"
  #include "paratext/abstract.typ"
  #include "paratext/outline.typ"
  #include "paratext/abbriviations.typ"
]


/** 
* --- main content
*/
#[
  // settings
  #set page(numbering: "1")
  #counter(page).update(1)

  // content
  #include-chapters()
]




/** 
* --- back matter
*/
#[
  // settings
  #set page(numbering: "I")
  #set heading(numbering: none)
  #counter(page).update(1)

  // content
  #include "paratext/bibliography.typ"
  #include "paratext/appendices.typ"
]



