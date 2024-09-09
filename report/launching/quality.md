<p style="text-align: right;">
  <img src="https://githubcom/Lorenzo-Gardini/Project-Management/blob/main/report/images/hyperflow_logopng?raw=true" alt="Logo" style="width: 150px;"/>
</p>

# Piano di qualità

#### Sviluppare codice pulito e facilmente manutenibile
- Utilizzare nomi significativi in lingua inglese per variabili, funzioni e classi
- Utilizzare pattern di programmazione già noti
- Scrivere solo i commenti necessari, in lingua inglese
- Evitare la ripetizione di codice (DRY)
- Utilizzare librerie e frameworks
- Utilizzare lo standard Conventional Commits per la scrittura dei commit


#### Testing
- Implementare una copertura di test elevata per tutte le funzionalità
- Utilizzare tools per eseguire il testing del codice in automatico e frequentemente
- Utilizzare approccio TDD

##### Documentazione
- Documentare il codice, le architetture e i processi in modo dettagliato e aggiornato utilizzando _Sphinx_ e _Confluence_

#### Sicurezza
- Le password e i token devono essere memorizzati in maniera sicura
- I dati degli utenti devono essere memorizzati in maniera sicura
- Ogni credenziale deve essere salvata come _secret_ su AWS tramite CI/CD

#### Automazione dei processi di sviluppo
- Utilizzare un build tool per gestire le dipendenze delle librerie esterne
- Eseguire il deploy in automatico
- Utilizzare le GitHub Actions per eseguire i workflows

