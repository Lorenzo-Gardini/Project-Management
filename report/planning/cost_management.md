<p style="text-align: right;">
  <img src="https://github.com/Lorenzo-Gardini/Project-Management/blob/main/report/images/hyperflow_logo.png?raw=true" alt="Logo" style="width: 150px;"/>
</p>

# Cost Management

In questa sezione si andranno ad analizzare quelli che sono i costi delle risorse di questo progetto.

## Stime delle risorse
Considerando che il progetto è di tipo lineare e che la durata di ciascuna attività del WBS è stata calcolata, ne deriva che la stima dei costi sia abbastanza accurata. Per questo motivo il contratto stipulato è di tipo **_chiavi in mano_**.

Durante la fase di rilascio effettivo del sistema si è deciso di adottare un approccio di tipo _parallel_ in modo da mantenere il servizio ad un livello di qualità alto. In questa fase, nel caso si presentassero problemi viene stipulato un contratto di tipo **_Manutenzione e Supporto Time & Material_** in cui _Specifici_ paga in base alle ore lavorate durante il periodo di manutenzione.

Si considera, inoltre, che sono a carico di _Specifici_:

- tutta l'infrastruttura AWS
- i test
- _Jira_ per i ticket e i sondaggi
- _Confluence_ per la documentazione
- eventuali fornitori terzi di servizi
  
### Costi risorse umane

- Theoden (Project Manager)
- Faramir (Senior Data Scientist, supporto)
- Gimli (Senior Cloud Engineer, Team Lead, supporto)
- Gandalf (Senior Full Stack Developer)
- Frodo (Data Scientist)
- Eowyn (Data Scientist)
- Bilbo (Cloud Engineer)
- Sam (Cloud Engineer)

Tutti componenti del team lavorano da remoto, quindi non ci sono costi operativi aggiuntivi associati a uffici fisici.

### Costi della piattaforma AWS

Dato che i costi per i test, di tutta la piattaforma e della manutenzione saranno a carico di _Specifici_, quest'ultima ha richiesto, quanto possibile, di ottimizzare le chiamate e risparmiare. Per questo il team di industrializzazione di _HyperFlow_, per l'ambiente di test e per lo sviluppo, ha deciso di:

- distruggere il modello _NER_ ogni giorno dopo le ore 17:00 e di ricostruirlo i giorni lavorativi alle 9:15
- usare _Data Fixtures_ (fare riferimento ai [Test](test.html)) per tutti i servizi terzi
- in fase di sviluppo chiamare le _Lambda_ utilizzando i dati prodotti dalla lambda precedente 

Per quanto riguarda la messa a punto del sistema, utilizzando il calcolatore dei costi di AWS è stato possibile effettuare una stima complessiva del sistema a regime ed è emerso che la cifra complessiva si aggira intorno ai 347 euro al mese, molto inferiore al limite richiesto nei [CoS](../scoping/CoS.html) di 500 euro. 

## Scope bank

Viene anche decisa una **scope bank** di _contingency_ di 15 giorni lavorativi. Se al termine del progetto avanzassero dei giorni, questi verrebbero scontati direttamente dai giorni di un prossimo progetto con _Specifici_. 

## Cash Flow

Per questo progetto non sono state assunti nuovi dipendenti. È previsto un bonus nel caso il lavoro fosse svolto entro la data prestabilita con buoni risultati.
