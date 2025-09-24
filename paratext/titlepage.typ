#import "@preview/abbr:0.2.3"

#import "/settings/about.typ"

#set page(footer: none)

#align(center)[
  #grid(
    columns: (1fr, 1fr),
    align: center + horizon,
    inset: (x: .618em, y: 0cm),
    column-gutter: 6.854em,
    row-gutter: .618em,

    [#image("/assets/Fachhochschule_Kiel_Logo_03.2022.svg")], [#image("/assets/Dataport_Logo.svg")],
    [#text(13.5pt, weight: "bold")[#abbr.s("HAW Kiel")] \ #text(12pt)[#abbr.lo("HAW Kiel")]], [#text(14pt, weight: "bold")[#abbr.lo("Dataport")]]
  )
  #v(1fr)
  #text(size: 24.33pt, weight: "bold")[#about.title] \
  #v(1.618em)
  im Studiengang #about.studiengang

  #v(1fr)
  #grid(
    columns: (auto, 1fr),
    row-gutter: 1.618em,
    column-gutter: 0.618em,
    align: left,

    [*Thema:*], [#about.thema],
    v(1.618em),[],
    [*eingereicht von:*], [#about.autor],
    [*eingereicht am:*], [#about.datum],
    v(1.618em),[],
    [*Erstprüfer*:], [#about.erstprüfer],
    [*Zweitprüfer*:], [#about.zweitprüfer],
  )
]
