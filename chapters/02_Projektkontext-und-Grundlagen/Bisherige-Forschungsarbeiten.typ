#import "@preview/abbr:0.2.3"

== Bisherige Forschungsarbeiten

Zur Einordnung dieser Arbeit in den aktuellen Stand der Forschung wird in diesem Abschnitt eine Literaturübersicht vorgenommen.

Mit der #abbr.s[KI]-Welle ab 2021/2022 hat sich die Nutzung von #abbr.pla[LLM] zur Informationsextraktion dynamisch entwickelt. Obwohl #abbr.s[LLM]-basierte Ansätze hohe Aufmerksamkeit erhalten, handelt es sich in vielen Anwendungsdomänen weiterhin um ein junges Forschungsfeld.

Für den spezifischen Kontext der Extraktion strukturierter Informationen aus polizeilichen Freitexten ergab eine systematischen Suche (#ref(<app_Literaturrechercheprotokoll>, form: "page", supplement: [siehe Literaturrechercheprotokoll, Seite])) nur wenige peer-reviewte Arbeiten. Einige relevante Ausnahmen stellen die Beiträge @xingEntityExtractionKey2024 @chenEntityRecognitionMethod2024 und @liuTIPSTailoredInformation2025 dar.
Darüber hinaus existieren älterer Studien mit klassischen #abbr.s[NLP]-Verfahren @kuCrimeInformationExtraction2008 @kuNaturalLanguageProcessing2008 sowie jüngere, überwiegend als Preprints verfügbare Arbeiten zur #abbr.s[LLM]-basierten Extraktion in anderen Domänen, z. B. Sport @merilehtoPDFsStructuredData2024, Landwirtschaft @pengEmbeddingbasedRetrievalLLM2023 und Medizin @wiestLLMAIxOpenSource2024). Methodisch sind diese Ansätze teilweise übertragbar.
Ergänzend liefern @haasTechnischeIntegrationGrosser2025 und @liSurveyLLMbasedMultiagent2024 praxisrelevante Hinweise zur technischen Integration von #abbr.pla[LLM] in Unternehmensumgebungen (z. B. Hosting, #abbr.a[RAG], Datenvorbereitung), die für die Architektur dieser Arbeit relevant sind.

Auch die Verbesserung der Ergebnisse durch den Ansatz eines mehrstufigen Arbeitsablauf wurde bereits im medizinischen Fachgebiet getestet. @geroSelfVerificationImprovesFewShot2023

Angesichts des explorativen Charakters dieser Arbeit dienen die genannten Arbeiten der kontextuellen Einordnung und zur Ableitung von Methoden (z. B. Prompting/RAG, Evaluationsmetriken). Aufgrund abweichender Domänen, Sprachen und Datenlagen werden sie nicht als direkte Baselines für die Evaluation herangezogen, fließen jedoch in die Begründung der Architektur- und Designentscheidungen ein.
