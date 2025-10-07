#import "@preview/abbr:0.2.3"

== Kontextbasierte Generierung

Um #abbr.pla[LLM] sinnvoll für den Anwendungsfall dieser Arbeit nutzen zu können, müssen zwei Probleme adressiert werden: Erstens muss der Kontext — also die unstrukturierte Eingabe und das gewünschte Ausgabeformat — dem #abbr.a[LLM] bekannt gemacht werden; zweitens müssen Halluzinationen, insbesondere in sensiblen Bereichen wie dem polizeilichen Kontext, minimiert werden.

Eine verbreitete Lösung ist die kontextbezogene Generierung von Antworten. Hierfür wird häufig die #abbr.s[RAG]-Architektur eingesetzt. @ayalaReducingHallucinationStructured2024 @WhatRetrievalaugmentedGeneration2021

Die Kernidee von #abbr.a[RAG] ist, zunächst relevante Inhalte aus einem externen Speicher zu ermitteln und dann auf Basis dieser Inhalte eine Antwort zu generieren. @NEURIPS2020_6b493230 @WhatRetrievalaugmentedGeneration2021
Vereinfacht gliedert sich der Ablauf in wenige, klar getrennte Schritte:

#figure(
  image("/assets/rag_indexing.png"),
  caption: [
    Beispielgrafik für das #abbr.s[RAG]-Indexing aus der LangChain‑Dokumentation. \
    Quelle: https://github.com/langchain-ai/docs (MIT License) \
    Copyright (c) 2025 LangChain. #ref(<app_Literaturrechercheprotokoll>, form: "page", supplement: [Voller Lizenztext im Anhang, Seite])
  ]
)

Zunächst wird der Wissensbestand aufbereitet: Längere Dokumente werden in inhaltlich sinnvolle Abschnitte ("Chunks") zerlegt und mit einem Embedding‑Modell in dichte Vektoren überführt. Diese Vektoren werden in einem semantischen Index (z. B. Vektordatenbank / ANN) abgelegt. Dadurch lassen sich später nicht nur Schlüsselwörter, sondern die semantische Bedeutung einer Anfrage wiederfinden. @kelbertRetrievalAugmentedGeneration2024 @WhatRetrievalaugmentedGeneration2021

#figure(
  image("/assets/rag_retrieval_generation.png"),
  caption: [
    Beispielgrafik für das #abbr.s[RAG]-Retrieval und ‑Generierung aus der LangChain‑Dokumentation. \
    Quelle: https://github.com/langchain-ai/docs (MIT License) \
    Copyright (c) 2025 LangChain. #ref(<app_Literaturrechercheprotokoll>, form: "page", supplement: [Voller Lizenztext im Anhang, Seite])
  ]
)

Zur Laufzeit wird die Eingabe ebenfalls eingebettet und gegen den Index gesucht, um die Top‑k semantisch nächsten Chunks als Belege zu erhalten. In der Originalarbeit fungiert dieser Index als "nicht‑parametrischer Speicher", auf den ein separater Retriever zugreift. @NEURIPS2020_6b493230

Im Generierungsschritt erhält das Generator‑Modell (#abbr.a[LLM]) die ursprüngliche Eingabe zusammen mit den zuvor gefundenen Belegen und formuliert die Antwort auf Basis dieser Informationen.@NEURIPS2020_6b493230 @WhatRetrievalaugmentedGeneration2021 Relevante Stellen werden typischerweise entweder paraphrasiert oder, falls gefordert, wörtlich zitiert — abhängig von Prompt‑Instruktionen und Decoding‑Strategie. Wird ein Ziel‑Ausgabeformat vorgegeben (z. B. ein JSON‑Schema oder ein kurzes Beispiel), wird es dem Prompt mitgegeben. Das Modell füllt die geforderten Felder entsprechend aus. Es werden zwei Betriebsarten unterschieden: Bei #abbr.s[RAG]‑Sequence bleibt das Modell während der gesamten Antwort bei einem Beleg, bei #abbr.s[RAG]‑Token darf es während der Generierung zwischen Belegen wechseln und so Informationen aus mehreren Quellen kombinieren. In beiden Modi ist die Ausgabe stärker an Quellen gebunden, was die Neigung zu Halluzinationen vermindert.@NEURIPS2020_6b493230 @WhatRetrievalaugmentedGeneration2021

Aus diesen Bausteinen folgen für diese Arbeit wichtige Vorteile: Das #abbr.a[LLM] erhält sowohl die unstrukturierte Eingabe als auch das Ziel‑Ausgabeformat direkt „im Prompt“ (in‑context). Ein ressourcenintensives, umfangreiches Fine‑Tuning ist damit nicht erforderlich. Gleichzeitig reduziert die Bindung an nachprüfbare Belege die Halluzinationsneigungr. Der Wissensstand lässt sich durch Aktualisieren oder Austauschen des Index zeitnah aktualisieren, ohne das Modell zu verändern.@WhatRetrievalaugmentedGeneration2021 @kelbertRetrievalAugmentedGeneration2024

