#let chapter_dirs = (
  "01_Einleitung",
  "02_Projektkontext-und-Grundlagen",
  "03_Analyse-und-Anforderungsdefinition",
  "04_Konzeption",
  "05_Implementierung",
  "06_Evaluation-und-Tests",
  "07_Diskussion",
  "08_Fazit-und-Ausblick"
)

#let include-chapters(base: "chapters", dirs: chapter_dirs) = {
  for dir in dirs {
    include("/" + base + "/" + dir + "/default.typ")
  }
}
