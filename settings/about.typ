#import "@preview/abbr:0.2.3"

#let title = [Bachelorarbeit]
#let thema = [Konzeption und prototypische Umsetzung eines #abbr.s("KI")-gestützten Arbeitsablaufs zur Vorgangserfassung in \@rtus]
#let studiengang = [Informatik]

#let autor = [Noah Zepner]
#let datum = [#datetime.today().display("[day].[month].[year]")]
#let erstprüfer = [Prof. Dr. Robert Manzke]
#let zweitprüfer = [Dr.-Ing. Martin Toepfer]

#set document(
  title: title,
  author: autor.text,
  description: thema,
  date: auto
)

