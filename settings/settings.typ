#import "@preview/abbr:0.2.3"
#import "@preview/hydra:0.6.2": hydra

#import "about.typ"

#let leading = 1.5em
#let leading = leading - 0.75em // "Normalization"

#let settings(doc) = {
  set page( header: context [
    #emph[#hydra()]
  ])

  set page( footer: context [
    #h(1fr)
    #counter(page).display()
  ])

  set block(
    spacing: leading,
  )

  set text(
    lang: "de",
    font: "Libertinus Serif",
    size: 12pt,
  )

  set page(
    paper: "a4",
    margin: (
      top: 2.5cm,
      bottom: 2.5cm,
      left: 3cm,
      right: 2.5cm,
    ),
  )

  set heading(numbering: (..nums) => {
    let lvl = nums.pos().len()
    let n = nums.pos().at(lvl - 1)
    if lvl == 1 {
      numbering("I.", n)
    } else if lvl == 2 {
      numbering("A.", n)
    } else if lvl == 3 {
      numbering("1)", n)
    } else if lvl == 4 {
      numbering("a)", n)
    }
  })

  show heading.where(level: 1): it => {
    pagebreak()
    set text(size: 21.62pt)
    set align(center)
    it
  }

  show heading.where(level: 2): it => {
    set text(size: 19.22pt)
    it
  }

  show heading.where(level: 3): it => {
    set text(size: 17.09pt, style: "italic")
    box(it)
  }

  show heading.where(level: 4): it => {
    set text(size: 15.19pt)
    box(it)
  }

  show heading.where(level: 5): it => {
    set text(13.5pt, style: "italic")
    box(it)
  }

  show heading.where(level: 6): it => {
    set text(12pt)
    it.body
  }

  show heading: it => {
    set text(font: "Inter 28pt", weight: "bold")
    it
    v(1em)
  }

  set par(
    justify: true,
    linebreaks: "optimized",
    spacing: leading,
    leading: leading,
    first-line-indent: (
      amount: 1.5em,
      all: true
    ),
  )

  show par: it => {
    it
    v(1em)
  }
  
  show enum: it => {
    it
    v(1em)
  }

  set math.equation(
    numbering: "1."
  )

  show figure: it => {
    v(1.5em)
    it
    v(1.5em)
  }

  abbr.config(style: it => it)

  doc
}
