<p style="text-align: right;">
  <img src="https://github.com/Lorenzo-Gardini/Project-Management/blob/main/report/images/hyperflow_logo.png?raw=true" alt="Logo" style="width: 150px;"/>
</p>

## Test

### Approccio utilizzato

Per i test vengono dati a disposizione di _HyperFLow_ gli accessi ai vecchi database. In totale sono stati selezionati 60.000 documenti.

Per le prime fasi di sviluppo di ciascun componente non vengono usati tutti e 60.000 documenti ma viene creato un _batch_ di 1_000 documenti rappresentativi con alta variabilità.

Quando i test di quel componente vengono superati dai documenti nel _batch_ allora vengono effettuati su tutti e 60.000 i documenti. Successivamente, si adotta il seguente approccio:

1. si selezionano i documenti problematici
2. si effettuano le modifiche
3. si testano solamente i documenti selezionati
4. si testano tutti i file per vedere se sono state introdotte delle regressioni
5. nel caso ci siano ancora errori si ripete il punto 1., in caso contrario si considera che quello specifico componente abbia superato tutti i test.

Questo approccio viene utilizzato per tutti i componenti in logica, infrastruttura e portali web

### Tipologie di test

- **logica**: per ogni componente vengono effettuati test di tipo _Unit Test_, _Validation Test_, _Performance Test_ e _Acceptance Test_
- **infrastruttura**: per ogni componente vengono effettuati _Unit Test_ e _Integration Test_. Modifiche effettuate a posteriori della creazione dell'intera _pipeline_ comportano un ciclo completo di test di quest'ultima. Un ciclo di test dell'intera _pipeline_ è composto da _Integration Test_, _Acceptance Test_, _Stress Test_ e _Performance Test_
- **portali web**: la logica di singolo componente viene testato utilizzando _Unit Test_ e _Acceptance Test_. Ogni singolo componente viene testato utilizzando _Unit Test_ e _Integration Test_. Ogni portale viene testato con _Security Test_, _Integration Test_, _Usability Test_ e _Acceptance Test_. 


### Data Fixture

Per i test vengono utilizzati delle _fixture_[^1]. Come vantaggio si ha:

- **velocità**: si riduce il tempo di esecuzione dei test evitando chiamate ridondanti
- **affidabilità**: i test vengono eseguiti sempre nelle stesse condizioni, evitando risultati imprevedibili dovuti a variazioni nei dati di input
- **manutenibilità**: test più semplici, è importante solo la logica del test stesso
- **risparmio**: si evita di chiamare molte volte lo stesso servizio per avere lo stesso risultato risparmiando denaro 

[^1]: Una _fixture_ è un oggetto o un set di dati che viene creato una volta all'inizio di un test o di un gruppo di test e poi riutilizzato multiple volte. Serve a isolare i test, a renderli più veloci e a garantire che le condizioni iniziali siano sempre le stesse.