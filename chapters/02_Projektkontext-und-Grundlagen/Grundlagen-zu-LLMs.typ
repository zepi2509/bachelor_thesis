#import "@preview/abbr:0.2.3"

== Grundlagen zu #abbr.pls[LLM]

=== Funktionsweise

#abbr.pla[LLM] sind eine Klasse von Sprachmodellen, die auf der von Google vorgestellten Transformer-Architektur@vaswaniAttentionAllYou2017 aufbauen und als neuronale Netze auf immensen Textdatenmengen trainiert sind.@WasSindLarge2025
Obwohl #abbr.pla[LLM] eine große Rolle dabei gespielt haben, generative KI in das Bewusstsein der Öffentlichkeit zu rücken, haben Unternehmen wie IBM bereits in den Jahren vor 2017 daran gearbeitet, Sprachmodelle für #abbr.a[NLU] und #abbr.a[NLP] zu verbessern – damals noch nicht auf Basis der Transformer-Architektur.
Im Kern stellen #abbr.pla[LLM] den neuesten Durchbruch in #abbr.a[NLP] und #abbr.a[KI] dar. Sie sind so konzipiert, dass sie Inhalte ähnlich wie Menschen verstehen und generieren können, um eine breite Palette von Anwendungsfällen abzudecken. Sie sind in der Lage, aus dem Kontext zu schließen, kohärente und kontextbezogene Antworten zu geben, in andere Sprachen zu übersetzen, Texte zusammenzufassen, Fragen zu beantworten und bei kreativen Schreib- oder Codegenerierungsaufgaben zu helfen. @WasSindLarge2025

Grundsätzlich lässt sich ein #abbr.a[LLM] in vier wesentliche Funktionen unterteilen: @kelbertWieFunktionierenLLMs2024

  + Tokenisierung
  + Einbettung
  + Vorhersage
  + Dekodierung

Die Tokenisierung beschreibt ein Verfahren, bei dem ein Text in viele kleinere Teile zerlegt wird. Dafür gibt es unterschiedliche Techniken, z. B. die Aufteilung nach einzelnen Wörtern. Die Wahl einer Tokenisierungstechnik ist eine Abwägung zweier Aspekte: zum einen die Gesamtzahl der möglichen Token, zum anderen der semantische Informationsgehalt. Aktuelle #abbr.pla[LLM] setzen auf Tokenisierungsverfahren, die Subwörter (Teilwörter) produzieren.

#figure(
  image(
    "/assets/Tiktokenizer.png",
    width: 80%
  ),
  caption: [Ein Beispiel für Tokenisierung (Erstellt mit #link("https://tiktokenizer.vercel.app/"))]
)

Im zweiten Schritt werden Token auf Vektoren abgebildet – die sogenannte Einbettung (engl. Embedding). Dabei werden die Vektoren so berechnet, dass semantisch ähnliche Informationen zu ähnlichen Vektoren führen. Das ermöglicht neuronalen Netzen, mit Texten zu arbeiten. In der Transformer-Architektur spielt zusätzlich zur Semantik auch die Position im Satz eine Rolle.

// TODO: Grafik für Vektoren


Nach der Einbettung bestimmt der Transformer, welche Teile des Kontexts für ein bestimmtes Token wichtig sind.@IntroductionLargeLanguage
Dieses Verfahren heißt Selbstaufmerksamkeit (Self‑Attention): Für jedes Token wird gewichtet, wie stark es die übrigen Token im selben Kontextfenster berücksichtigen sollte. Anschaulich gefragt jedes Token gewissermaßen: „Welche anderen Wörter sind für meine Bedeutung gerade relevant?“
Ein Beispiel: In dem Satz „Das Tier überquerte die Straße nicht, weil es zu müde war.“ kann das Pronomen „es“ mehrdeutig sein. Die Selbstaufmerksamkeit hilft dem Modell, die passenden Bezüge zu finden – hier typischerweise zum „Tier“ und nicht zur „Straße“ –, indem relevante Wörter höher gewichtet werden.
Technisch geschieht dies über sogenannte Queries, Keys und Values, oft in mehreren parallelen „Köpfen“ (Multi‑Head Attention). Positionsinformationen werden separat kodiert (z. B. mittels Positional Encodings oder gelernter Positions‑Einbettungen), damit das Modell auch Wortreihenfolge berücksichtigen kann.@IntroductionLargeLanguage

Der dritte Schritt ist die Vorhersage des nächsten Tokens. Viele moderne #abbr.pla[LLM] werden autoregressiv trainiert (z. B. GPT‑Modelle) und lernen, das nächste Token im Kontext vorherzusagen. Es gibt aber auch andere Trainingsziele (Masked LM, Seq2Seq). Die Modellgröße (Anzahl der Parameter) wird erhöht, um mehr Muster aus großen Datenmengen zu erfassen und bessere Generalisierung zu erreichen.@kelbertWieFunktionierenLLMs2024
Genau hier setzen die meisten modernen #abbr.pla[LLM] auf neuronale Netze mit der Transformer-Architektur (z. B. das _T_ in _#abbr.a[GPT]_).

Um zu einem möglichst guten Ergebnis zu kommen, wird im letzten Schritt auf Basis der berechneten Wahrscheinlichkeiten das nächste Token ausgewählt. Bei der Dekodierung gibt es verschiedene Strategien: Greedy Search, Beam Search, Top‑k, Top‑p (Nucleus) Sampling und Temperatursteuerung#footnote[Mehr Informationen zu den unterschiedlichen Strategien: https://huggingface.co/blog/mlabonne/decoding-strategies] — jede Methode hat Vor- und Nachteile hinsichtlich Vielfalt, Kohärenz und Berechenbarkeit.@DecodingStrategiesLarge2025

=== Fehlerquellen und Limitationen

Trotz ihrer hohen Leistungsfähigkeit stoßen #abbr.pla[LLM] in mehreren Bereichen an klare Grenzen. Das Training erfordert enorme Rechenressourcen, spezialisierte Hardware und viel Energie. Mit wachsender Modellgröße steigt die technische Komplexität, etwa bei Stabilität, Speicherbedarf oder der Verteilung über viele Recheneinheiten, während der Leistungszuwachs nach dem Prinzip abnehmender Erträge immer geringer ausfällt. @naveedComprehensiveOverviewLarge2025 Diese Anforderungen machen den gesamten Entwicklungs- und Einsatzprozess kostenintensiv und schränken die Zugänglichkeit großer Modelle erheblich ein. @naveedComprehensiveOverviewLarge2025

Da LLMs auf großen Mengen menschlicher Sprache beruhen, übernehmen sie leicht vorhandene Verzerrungen und stereotype Darstellungen. Dadurch können sie unangemessene oder fehlerhafte Inhalte erzeugen. Maßnahmen wie sorgfältige Datenaufbereitung, die Ausrichtung an menschlichen Präferenzen (etwa mit RLHF) und laufende Sicherheitsbewertungen sollen solche Effekte verringern. @IntroductionLargeLanguage @naveedComprehensiveOverviewLarge2025 Eine kontinuierliche Prüfung und Nachjustierung im Betrieb ist dabei entscheidend, um faire und verlässliche Ergebnisse sicherzustellen. @IntroductionLargeLanguage @naveedComprehensiveOverviewLarge2025

Auch Datenschutz und Nachvollziehbarkeit bleiben kritisch. Große Modelle sind anfällig dafür, Trainingsinhalte unbeabsichtigt wiederzugeben, und ihre internen Entscheidungsprozesse sind kaum transparent. Eine verantwortungsvolle Nutzung setzt daher erklärbare Verfahren, Datenfilterung und kontinuierliche Audits voraus. @naveedComprehensiveOverviewLarge2025 Nur durch nachvollziehbare und überprüfbare Mechanismen kann langfristig Vertrauen in diese Systeme entstehen. @naveedComprehensiveOverviewLarge2025

Fehlerhafte oder erfundene Antworten, sogenannte Halluzinationen, gelten zudem als besonders problematisch. Sie entstehen häufig durch begrenzte Kontextlängen oder veraltetes Wissen. Verbesserte Kontextmodelle und erweiterte Zugriffsmöglichkeiten auf aktuelle Informationen bilden hier einen wichtigen Ansatzpunkt für zukünftige Entwicklungen, insbesondere in Verbindung mit Retrieval-Augmentation. @IntroductionLargeLanguage @naveedComprehensiveOverviewLarge2025
