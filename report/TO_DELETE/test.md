<p style="text-align: right;">
  <img src="https://github.com/Lorenzo-Gardini/Project-Management/blob/main/report/images/hyperflow_logo.png?raw=true" alt="Logo" style="width: 150px;"/>
</p>

# Test

Il cliente fornirà due _batch_ di documenti PDF che sono stati caricati manualmente e le loro informazioni sono quindi già presenti nel database. Questi documenti vengono inoltre selezionati dal cliente in modo che abbiano **più variabilità possibile** e che quindi possano coprire più casistiche. Il primo _batch_, definito di **train**, è composto da circa 20_000 documenti che verranno utilizzati come _true labels_, durante la fase di sviluppo, per poter calcolare **l'accuratezza** dell'estrazione automatica. Per i **_Validation Tests_** verrà utilizzato un _batch_, definito di **validation**, composto da 1500 documenti mai visti durante lo sviluppo ma comunque già presenti nel database. Infine per i **_Live Tests_** vengono creati dei _batch_ con i documenti raccolti e ispezionati a **frequenza settimanale**. Queste iterazioni vengono per la durata di 2 mesi dalla messa in produzione del sistema.

### Test Logica
+ tutti i test che mancano guarda wbs
<table>
   <thead>
      <tr>
         <th>Descrizione</th>
         <th>Tipo di test</th>
         <th>Frequenza</th>
         <th>Strumenti</th>
         <th>Codice test batch</th>
         <th>Codice validation batch</th>
      </tr>
    </thead>
    <tbody>
      <tr>
         <td>Conversione Formato</td>
         <td>Unit Test, Acceptance Test</td>
         <td>Ogni commit</td>
         <td>Pytest</td>
         <td>L1</td>
         <td>L9</td>
      </tr>
      <tr>
         <td>Controllo Risoluzione</td>
         <td>Unit Test, Acceptance Test</td>
         <td>Ogni commit</td>
         <td>Pytest</td>
         <td>L2</td>
         <td>L10</td>
      </tr>
      <tr>
         <td>Preprocessing Immagine</td>
         <td>Unit Test, Acceptance Test</td>
         <td>Ogni commit</td>
         <td>Pytest</td>
         <td>L3</td>
         <td>L11</td>
      </tr>
      <tr>
         <td>Modulo Textract</td>
         <td>Unit Test, Acceptance Test</td>
         <td>Ogni commit</td>
         <td>Pytest</td>
         <td>L4</td>
         <td>L12</td>
      </tr>
      <tr>
         <td>Modulo OCR</td>
         <td>Unit Test, Acceptance Test</td>
         <td>Ogni commit</td>
         <td>Pytest</td>
         <td>L5</td>
         <td>L13</td>
      </tr>
      <tr>
         <td>Modulo NER</td>
         <td>Unit Test, Acceptance Test</td>
         <td>Ogni commit</td>
         <td>Pytest</td>
         <td>L6</td>
         <td>L14</td>
      </tr>
      <tr>
         <td>Modulo Post-processing</td>
         <td>Unit Test, Acceptance Test</td>
         <td>Ogni commit</td>
         <td>Pytest</td>
         <td>L7</td>
         <td>L15</td>
      </tr>
      <tr>
         <td>Modulo Generazione Status</td>
         <td>Unit Test, Acceptance Test</td>
         <td>Ogni commit</td>
         <td>Pytest</td>
         <td>L8</td>
         <td>L16</td>
      </tr>
     </tbody>
</table>

### Test Infrastruttura
<table>
   <thead>
      <tr>
         <th>Descrizione</th>
         <th>Tipo di Test</th>
         <th>Frequenza</th>
         <th>Strumenti</th>
         <th>Codice ambiente test</th>
         <th>Codice ambiente produzione</th>
      </tr>
    </thead>
    <tbody>
      <tr>
         <td>API Gateway</td>
         <td>Unit Test</td>
         <td>Ogni commit</td>
         <td>Test Manuale</td>
         <td>I1</td>
         <td>I9</td>
      </tr>
      <tr>
         <td>Lambda Function Start</td>
         <td>Unit Test</td>
         <td>Ogni commit</td>
         <td>Test Manuale</td>
         <td>I2</td>
         <td>I10</td>
      </tr>
      <tr>
         <td>Lambda Function Textract Proxy</td>
         <td>Unit Test</td>
         <td>Ogni commit</td>
         <td>Pytest</td>
         <td>I3</td>
         <td>I11</td>
      </tr>
      <tr>
         <td>Lambda Function OCR Reconstructor</td>
         <td>Unit Test</td>
         <td>Ogni commit</td>
         <td>Pytest</td>
         <td>I4</td>
         <td>I12</td>
      </tr>
      <tr>
         <td>Lambda Function Output Formatter</td>
         <td>Unit Test</td>
         <td>Ogni commit</td>
         <td>Pytest</td>
         <td>I5</td>
         <td>I13</td>
      </tr>
      <tr>
         <td>Step Function</td>
         <td>Integration Test</td>
         <td>Ogni build, Cambio I/O Lambda</td>
         <td>Selenium</td>
         <td>I6</td>
         <td>I14</td>
      </tr>
      <tr>
         <td>Tempistiche di esecuzione</td>
         <td>Performance Test, Acceptance Test</td>
         <td>Ogni cambio logica Lambda</td>
         <td>JMeter</td>
         <td>I7</td>
         <td>I15</td>
      </tr>
      <tr>
         <td>Stress test</td>
         <td>Stress Test, Acceptance Test</td>
         <td>Ogni cambio logica Lambda</td>
         <td>JMeter</td>
         <td>I8</td>
         <td>I16</td>
      </tr>
   </tbody>
</table>

### Test Front-End
+ test usabilità
#### Vecchio portale
<table>
   <thead>
      <tr>
         <th>Descrizione</th>
         <th>Tipo di test</th>
         <th>Frequenza</th>
         <th>Strumenti</th>
         <th>Codice ambiente test</th>
         <th>Codice ambiente produzione</th>
      </tr>
    </thead>
    <tbody>
      <tr>
         <td>Caricamento documento portale web</td>
         <td>Integration Test, Unit Test</td>
         <td>Ogni commit</td>
         <td>Selenium, Jest</td>
         <td>FO1</td>
         <td>FO8</td>
      </tr>
      <tr>
         <td>Visualizzazione dati estratti</td>
         <td>Integration Test, Unit Test</td>
         <td>Ogni deploy</td>
         <td>Selenium, Jest</td>
         <td>FO2</td>
         <td>FO9</td>
      </tr>
      <tr>
         <td>Visualizzazione indicatore accuratezza</td>
         <td>Integration Test, Unit Test</td>
         <td>Ogni deploy</td>
         <td>Jest</td>
         <td>FO3</td>
         <td>FO10</td>
      </tr>
      <tr>
         <td>Modifica manuale dei dati estratti lato utente</td>
         <td>Unit Test</td>
         <td>Ogni commit</td>
         <td>Jest</td>
         <td>FO4</td>
         <td>FO11</td>
      </tr>
      <tr>
         <td>Invio modifiche al server</td>
         <td>Unit Test, Integration Test</td>
         <td>Ogni build</td>
         <td>Selenium, Jest</td>
         <td>FO5</td>
         <td>FO12</td>
      </tr>
      <tr>
         <td>Visualizzazione e interattività popup</td>
         <td>Unit Test</td>
         <td>Ogni commit</td>
         <td>Jest</td>
         <td>FO6</td>
         <td>FO13</td>
      </tr>
      <tr>
         <td>Invio feedback del popup al server</td>
         <td>Unit Test, Integration Test</td>
         <td>Ogni build</td>
         <td>Selenium, Jest</td>
         <td>FO7</td>
         <td>FO14</td>
      </tr>
      <tr>
         <td>Navigabilità e utilizzo</td>
         <td>Usability</td>
         <td>Ogni </td>
         <td>Selenium, Jest</td>
         <td>FO7</td>
         <td>FO14</td>
      </tr>
   </tbody>
</table>

#### Nuovo portale
<table>
   <thead>
      <tr>
         <th>Descrizione test</th>
         <th>Tipo di test</th>
         <th>Frequenza</th>
         <th>Strumenti</th>
         <th>Codice ambiente test</th>
         <th>Codice ambiente produzione</th>
      </tr>
    </thead>
    <tbody>
      <tr>
         <td>Ricerca documento</td>
         <td>Unit Test, Integration Test</td>
         <td>Ogni build</td>
         <td>Selenium, Jest</td>
         <td>FN1</td>
         <td>FN5</td>
      </tr>
      <tr>
         <td>Visualizzazione metadati documento cercato</td>
         <td>Unit Test, Integration Test</td>
         <td>Ogni build</td>
         <td>Selenium, Jest</td>
         <td>FN2</td>
         <td>FN6</td>
      </tr>
      <tr>
         <td>Modifica manuale metadati documento cercato</td>
         <td>Unit Test</td>
         <td>Ogni commit</td>
         <td>Jest</td>
         <td>FN3</td>
         <td>FN7</td>
      </tr>
      <tr>
         <td>Invio modifiche sul server</td>
         <td>Unit Test, Integration Test</td>
         <td>Ogni build</td>
         <td>Selenium, Jest</td>
         <td>FN4</td>
         <td>FN8</td>
      </tr>
   </tbody>
</table>
