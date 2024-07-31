<p style="text-align: right;">
  <img src="https://github.com/Lorenzo-Gardini/Project-Management/blob/main/report/images/hyperflow_logo.png?raw=true" alt="Logo" style="width: 150px;"/>
</p>

## Test
### Logica

Per il calcolo dell'accuratezza _Specifici_ fornirà due _batch_ di documenti, in formati diversi, che sono stati caricati manualmente e le loro informazioni già presenti nel database. Vengono selezionati in modo che ci sia **alta variabilità** e che quindi vengano ricoperte più casistiche possibili. 

- _batch_ di **train**: è composto da circa 20_000 documenti che verranno utilizzati come _true labels_, durante la fase di sviluppo, per poter calcolare **l'accuratezza** dell'estrazione automatica
-  _batch_ di **validation**: è composto da 1500 documenti mai visti durante lo sviluppo ma comunque già presenti nel database e che verranno utilizzati per i **_Validation Tests_**.
  
Ogni componente di logica viene testato con _Unit Test_ e _Acceptance Test_.

### Infrastruttura

Per ogni componente vengono effettuati _Unit Test_ e _Integration Test_. Modifiche effettuate a posteriori della creazione dell'intera _pipeline_ comportano un ciclo completo di test di quest'ultima.

Un ciclo di test dell'intera _pipeline_ è composto da _Integration Test_, _Acceptance Test_, _Stress Test_ e _Performance Test_.

### Portali web

La logica di singolo componente viene testato utilizzando _Unit Test_ e _Acceptance Test_.

Ogni singolo componente viene testato utilizzando _Unit Test_ e _Integration Test_.

Ogni portale viene testato con _Security Test_, _Integration Test_, _Usability Test_ e _Acceptance Test_. 

### Live test

Analisi effettuate con **frequenza settimanale** sui documenti raccolti e controllando i log del sistema. Queste iterazioni vengono protratte per la durata di 6 mesi dalla messa in produzione del sistema.
