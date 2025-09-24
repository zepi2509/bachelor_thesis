#import "@preview/abbr:0.2.3"

== Motivation

Das #abbr.a("VBS") \@rtus ist das zentrale System zur Erfassung, Strukturierung und Bearbeitung polizeilicher Vorgänge in Schleswig-Holstein sowie der Bundespolizei und zunehmend mehr Landespolizeien. Bisher ist in \@rtus kein #abbr.s("KI")-gestützter Arbeitsprozess integriert. Außerhalb von \@rtus werden #abbr.s("KI")-Komponenten jedoch zunehmend in Anwendungen mit ähnlichen Arbeitsabläufen eingesetzt, beispielsweise zur automatischen Extraktion strukturierter Informationen aus Freitexten, Formularen oder Medien.

Im polizeilichen Kontext entstehen große Mengen unstrukturierter Daten, nicht nur im Rahmen von Ermittlungen, sondern auch in andere Kanälen wie der _Onlinewache_ und \@rtus-Mobile. Die manuelle Überführung in strukturierte Fachobjekte ist zeitaufwendig und fehleranfällig. Durch den Einsatz eines #abbr.pla("LLM") kann dieser Prozess erleichtert werden, indem die anfallenden Daten ausgewertet und dem Sachbearbeiter ein vorausgefüllter Vorgang zur weiteren Bearbeitung vorgelegt wird. Gleichzeitig stellt die Integration in eine bestehende, sicherheitskritische Software, deren Komplexität über viele Jahre der Entwicklung dynamisch gewachsen ist, eine Herausforderung dar.
