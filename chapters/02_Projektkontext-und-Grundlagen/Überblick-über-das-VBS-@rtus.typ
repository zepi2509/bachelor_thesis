#import "@preview/abbr:0.2.3"

== Überblick über das #abbr.s[VBS] \@rtus

\@rtus ist das #abbr.a[VBS] der \@rtus-Kooperation und wird von mehreren Polizeien in Deutschland produktiv genutzt, darunter Schleswig-Holstein, Bremen, die Bundespolizei sowie sukzessive weitere Länder. @ruthArchitekturdokumentationRtusArtus2024 @flotheEinfuhrungRtusEntwicklung2024
In Schleswig-Holstein ist \@rtus seit 2007 das zentrale Verfahren zur digitalen Vorgangsbearbeitung in der Fläche etabliert. @dataportProdukt

Technisch setzt \@rtus auf eine drei-schichtige Client-Server-Architektur mit Rich-Client, serverseitigen Diensten und zentraler Persistenz sowie einem modellgetriebenen Entwicklungsansatz (MDD) inklusive generierter Fach- und Persistenzschichten. @ruthArchitekturdokumentationRtusArtus2024
Der aktuelle Technologie-Stack umfasst u. a. Java/Jakarta EE auf WildFly 33, Oracle 19c, ein eigenes Formular- und Katalog-Framework sowie MVC-/Data-Binding-Komponenten für die fachlichen Use-Cases. @ruthArchitekturdokumentationRtusArtus2024
Fachlich bündelt \@rtus die Kernprozesse der Vorgangsbearbeitung von der Erfassung über Steuerung, Recherche/Ermittlung bis zur Kriminalakte und integriert zahlreiche Verbund-, Landes- und Drittsysteme (u. a. INPOL#footnote[Das polizeiliche Informationssystem INPOL ist ein elektronischer Datenverbund zwischen Bund und Ländern. Mehr Informationen: https://www.bfdi.bund.de/DE/Buerger/Inhalte/Polizei-Strafjustiz/National/DasPolizeilicheInformationssystem-INPOL.html], PIAV, PKS, XPolizei-basierte Verfahren). @ruthArchitekturdokumentationRtusArtus2024
// TODO: Fussnoten für alle erwänten Systeme 

Organisatorisch wird \@rtus durch #abbr.a[Dataport] betrieben und in 6-wöchigen Entwicklungszyklen weiterentwickelt. @flotheEinfuhrungRtusEntwicklung2024
Die Kooperation ist mehrstufig organisiert (VBS-Leitung je Teilnehmer, TPL/SWA, Katalog- und Formularredaktion, Test), sodass Fachlichkeit und Technik kontinuierlich zusammengeführt werden. @flotheEinfuhrungRtusEntwicklung2024

Im Betrieb deckt \@rtus mehrere Länder und Bundespolizei ab und wird mandanten- und umgebungsspezifisch in Echtbetrieb, QS, Test und Schulung bereitgestellt, jeweils in den Rechenzentrumsumgebungen der Träger. @ruthArchitekturdokumentationRtusArtus2024
Die Anbindung externer Verfahren erfolgt über standardisierte Protokolle (z. B. XPolizei/WS-RS, SOAP/REST, OIDC/SCIM, JMS), mit zentraler Authentisierung/Autorisierung, Protokollierung und Betriebs-/Admin-Werkzeugen. @ruthArchitekturdokumentationRtusArtus2024

Strategisch ist \@rtus im #abbr.a[P20] verortet, dessen Zielbild eine moderne, föderal vernetzte Polizei mit gemeinsamer Informationsarchitektur, zentralem Datenhaus-Ökosystem und einheitlichen Basis- und Sachbearbeitungs-Services vorsieht sowie Datenschutz durch Technik (z. B. hypothetische Datenneuerhebung, dynamische Rechte/Rollen, lückenlose Protokollierung) konsequent umsetzt. @bundesministeriumdesinnernP20AufWeg2023 @bundesministeriumdesinnernPolizei2020White @ProgrammP20
#abbr.a[P20] verfolgt drei Leitziele
+ Verfügbarkeit polizeilicher Informationen
+ Stärkung des Datenschutzes durch Technik und
+ Erhöhung der Wirtschaftlichkeit
und setzt auf eine evolutionäre, risikominimierende Transformation bis etwa 2030. @bundesministeriumdesinnernP20AufWeg2023 @bundesministeriumdesinnernPolizei2020White @ProgrammP20
Dazu zählen die zentrale Bereitstellung und bundesweite Einführung geeigneter Verfahren (z. B. eFBS), die Konsolidierung heterogener VBS-Landschaften über Interimssysteme und der schrittweise Aufbau eines zentralen Datenhauses. @bundesministeriumdesinnernPolizei2020White @ProgrammP20

Bereits heute bindet \@rtus ausgewählte #abbr.s[P20]-Bausteine an (z. B. EAS/e²A, F-IAM via OIDC/SCIM, DHÖS, ZIMP, Online-Wache), verfolgt offene XPolizei-Standards und adressiert damit die #abbr.s[P20]-Leitziele Verfügbarkeit, Datenqualität und Wirtschaftlichkeit. @ruthArchitekturdokumentationRtusArtus2024 @bundesministeriumdesinnernP20AufWeg2023
Mit "\@rtus mobile" steht zudem eine mobile Ersterfassungs-App bereit, die Vorgangsdaten vor Ort strukturiert aufnimmt, ID-Daten einliest, einen Sofortabgleich ermöglicht und die sichere Übertragung in das zentrale #abbr.a[VBS] unterstützt. @dataportProdukt

#abbr.a[Dataport] ist als Anstalt öffentlichen Rechts der beteiligten Länder Trägerin des Betriebs und bündelt Entwicklung, RZ-Betrieb, Netze, Druckzentrum sowie Querschnitts-Services für die öffentliche Verwaltung. @GesetzStaatsvertragZwischen2020
Über das Innovations- und Lösungshub data[port]ai stellt #abbr.a[Dataport] zudem Plattformen, Governance- und Beratungskompetenz für Daten- und KI-Anwendunge bereit und betreibt in Kooperation mit Hamburg mit "LLMoin" einen verwaltungsspezifischen KI-Textassistenten. @dataportDataportaia @senatskanzleihamburgDetailsLLMoinErgaenzende2024

Im Kontext der Bachelorarbeit prüft #abbr.a[Dataport] als verantwortlicher IT-Dienstleister die prototypische Einbindung KI-gestützter Arbeitsabläufe in \@rtus.
