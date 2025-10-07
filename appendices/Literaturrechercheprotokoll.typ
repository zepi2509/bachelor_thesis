#let author  = "Noah Zepner"
#let date    = datetime(day: 30, month: 9, year: 2025).display("[day].[month].[year]")
#set par(first-line-indent: 0em)

= Rechercheprotokoll
#[
  #set align(center)
  #v(0.5em)
  Autor: #author • Datum: #date
]

== Ziel und Fragestellung
*Ziel*: LLM-basierte Informationsextraktion aus polizeilichen Freitexten (DE/EN),
Fokus 2021–2025, mit Schwerpunkt auf prototypischer Systemintegration
(Workflow/Pipeline) in \@rtus.

*Leitfragen*:
- Welche LLM-Strategien zur strukturierten Ausgabe (JSON, schema-guided) sind belegt?
- Welche domänennahen Arbeiten existieren (DE/EN)?
- Welche methodisch nahen Arbeiten gibt es?
- Welche Integrationsmuster sind praktikabel?

== Rahmenbedingungen
- *Datenbanken/Quellen*: Google Scholar, Semantic Scholar 
- *Zeitraum/Filter*: 2021–2025 (LLM); ältere Arbeiten für klassische Polizeibericht‑IE als Kontext/Baseline zulassen.
- *Sprachen*: DE, EN.
- *Dokumenttypen*: Peer‑reviewte Konferenz-/Journal‑Beiträge; Preprints separat gekennzeichnet.
- *Fokus/Scope*: Freitext aus Polizeikontext; Informationsextraktion (IE/NER/NLP); Integration in System.
- *Abgrenzung*: Nur textbasierte unstrukturierte Daten (keine Bilder/Audio/Video, kein PDF‑OCR). Kein breit angelegter Modell‑Leistungsvergleich. Datenschutz wird als vorgeprüft angenommen; keine umfassende Compliance‑Analyse.

== Suchstrings
*Domäne*:
- "police report" AND "information extraction" AND LLM
- "incident report" AND (NLP OR "information extraction") AND LLM
- "law enforcement" AND (NLP OR "information extraction") AND LLM
*Deutsch (Domäne)*
- "Polizeibericht" AND (Informationsextraktion OR NLP)
- "Einsatzbericht" AND (NLP OR Extraktion)
- "Vorgangsbeschreibung" AND (Informationsextraktion OR NLP)
- "Strafanzeige" AND (NLP OR extraktion) AND LLM
*Methodik LLM/Extraktion*
- "LLM-based information extraction" OR ("large language model" AND "information extraction")
- "structured output" AND (LLM OR transformer) AND (JSON OR XML)
- "schema-guided extraction" OR ("JSON schema" AND (LLM OR transformer))
- "few-shot" AND "information extraction" AND LLM
- "retrieval-augmented" AND (extraction OR "structured output") AND LLM
*Integration/Architektur*
- ("workflow" OR "pipeline") AND (LLM OR "language model") AND integration
- "enterprise integration" AND LLM


#page(flipped: true)[
== Suchläufe
#table(
  columns: (auto, 1fr, auto, auto, 1fr),
  align: horizon,
  stroke: 0.5pt + gray,
  inset: 6pt,
  table.header([Datum], [Suchstring], [Filter], [Treffer], [Notizen]),
  [#datetime(day: 27, month: 9, year: 2025).display("[day].[month].[year]")],
  ["police report" AND "information extraction" AND LLM],
  ["2021–2025; EN/DE"], 
  [4], 
  [],

  [#datetime(day: 27, month: 9, year: 2025).display("[day].[month].[year]")],
  ["incident report" AND (NLP OR "information extraction") AND LLM],
  ["2021–2025; EN/DE"], 
  [0], 
  [],

  [#datetime(day: 30, month: 9, year: 2025).display("[day].[month].[year]")],
  ["law enforcement" AND (NLP OR "information extraction") AND LLM],
  ["2021–2025; EN/DE"], 
  [1], 
  [],

  [#datetime(day: 30, month: 9, year: 2025).display("[day].[month].[year]")],
  ["Polizeibericht" AND (Informationsextraktion OR NLP)],
  ["2021–2025; EN/DE"], 
  [0], 
  [],

  [#datetime(day: 30, month: 9, year: 2025).display("[day].[month].[year]")],
  ["Einsatzbericht" AND (NLP OR Extraktion)],
  ["2021–2025; EN/DE"], 
  [0], 
  [],

  [#datetime(day: 30, month: 9, year: 2025).display("[day].[month].[year]")],
  ["Strafanzeige" AND (NLP OR extraktion) AND LLM],
  ["2021–2025; EN/DE"], 
  [0], 
  [],

  [#datetime(day: 30, month: 9, year: 2025).display("[day].[month].[year]")],
  ["LLM-based information extraction" OR ("large language model" AND "information extraction")],
  ["2021–2025; EN/DE"], 
  [2], 
  [],

  [#datetime(day: 30, month: 9, year: 2025).display("[day].[month].[year]")],
  ["structured output" AND (LLM OR transformer) AND (JSON OR XML)],
  ["2021–2025; EN/DE"], 
  [3], 
  [],

  [#datetime(day: 30, month: 9, year: 2025).display("[day].[month].[year]")],
  ["few-shot" AND "information extraction" AND LLM],
  ["2021–2025; EN/DE"], 
  [1], 
  [],

  [#datetime(day: 30, month: 9, year: 2025).display("[day].[month].[year]")],
  ["retrieval-augmented" AND (extraction OR "structured output") AND LLM],
  ["2021–2025; EN/DE"], 
  [2], 
  [],

  [#datetime(day: 30, month: 9, year: 2025).display("[day].[month].[year]")],
  [("workflow" OR "pipeline") AND (LLM OR "language model") AND integration],
  ["2021–2025; EN/DE"], 
  [2], 
  [],

  [#datetime(day: 30, month: 9, year: 2025).display("[day].[month].[year]")],
  ["enterprise integration" AND LLM],
  ["2021–2025; EN/DE"], 
  [2], 
  [],
)
]

== Inklusions- und Exklusionskriterien
*Inklusion*:
- IE/Strukturierung aus unstrukturiertem Text (NER/NLP).
- LLM/Transformer‑basiert (ab 2021) ODER klassische IE zu Polizeiberichten als Kontext/Baseline.
- Empirische Methode/Evaluation oder nachvollziehbare Pipeline/Implementierung.
- Bezug zu Integration/Workflow erwünscht.

*Exklusion*:
- Reine Klassifikation ohne Extraktion.
- Nicht‑textuelle Modalitäten (Bilder, Audio, Video) und PDF‑OCR‑Spezialfälle.
- Meinungs-/Positionspapiere ohne Methode/Evaluation.
- Kein Volltext oder nicht zugänglich.
- Breite Modell‑Leistungsvergleiche ohne Integrationsbezug.

== Screening-Prozess
+ Titel/Abstract‑Screening
+ Volltextprüfung der geeigneten Beiträge.
+ Snowballing: Vorwärts/Rückwärts über Zitationen/Referenzen.

== Limitierungen
- Keine Modalitäten jenseits von Text; keine OCR‑Spezialfälle.
- Kein umfassender Modell‑Leistungsvergleich (Fokus Integration/Workflow).
- Zeitlich begrenzt; Zugriff auf lizenzierte Datenbanken ggf. eingeschränkt.
