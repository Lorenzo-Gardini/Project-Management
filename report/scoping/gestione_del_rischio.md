<p style="text-align: right;">
  <img src="https://github.com/Lorenzo-Gardini/Project-Management/blob/main/report/images/hyperflow_logo.png?raw=true" alt="Logo" style="width: 150px;"/>
</p>
<style>
th, td{
    text-align: center;
    vertical-align: middle;
}
.low{
    background-color: #77DD77;
}
.medium{
    background-color: #FF964F;
}
.high{
    background-color: #FF6961;
}
.low, .medium, .high{
    color: white;
    padding: 17px;
    text-align: center;
    border-radius: 5px;
}
</style>

# Risk Analysis

<table>
    <tr>
        <th><strong>Titolo</strong></th>
        <th><strong>Descrizione</strong></th>
        <th><strong>Categoria</strong></th>
        <th><strong>Probabilità</strong></th>
        <th><strong>Impatto</strong></th>
        <th><strong>Livello di rischio</strong></th>
        <th><strong>Mitigazione</strong></th>
    </tr>
    <tr>
        <td><strong>Accuratezza</strong></td>
        <td>L'algoritmo di estrazione potrebbe non raggiungere il livello di <strong>accuratezza</strong> necessario</td>
        <td>Tecnico</td>
        <td>alta(4)</td>
        <td>alto(4)</td>
        <td><span class="high">16</span></td>
        <td><strong>Controlli continui</strong> durante la realizzazione della soluzione mirati a mantenere alta le qualità della stessa. In caso ricercare <strong>fornitori alternativi</strong> per le tecnologie impiegate</td>
    </tr>
    <tr>
        <td><strong>Tempo</strong></td>
        <td>Il sistema impiega <strong>troppo tempo</strong> per l'esecuzione</td>
        <td>Tecnico</td>
        <td>media(3)</td>
        <td>alto(4)</td>
        <td><span class="medium">12</span></td>
        <td><strong>Performance Tests</strong> per monitorare i tempi. <strong>Ottimizzazioni</strong> sul codice. <strong>Provisioned Concurrency</strong></td>
    </tr>
    <tr>
        <td><strong>Scalabilità</strong></td>
        <td>Il sistema potrebbe non essere in grado di gestire un <strong>aumento significativo</strong> del numero di documenti senza perdita di performance</td>
        <td>Tecnico</td>
        <td>bassa(2)</td>
        <td>alto(4)</td>
        <td><span class="medium">8</span></td>
        <td>Progettare l'<strong>infrastruttura</strong> in modo che sia scalabile e condurre diversi <strong>Stress Test</strong></td>
    </tr>
    <tr>
        <td><strong>Sicurezza</strong></td>
        <td>Rischio di <strong>violazioni della sicurezza</strong> dei dati sensibili</td>
        <td>Tecnico</td>
        <td>media(3)</td>
        <td>alto(4)</td>
        <td><span class="medium">12</span></td>
        <td>Implementare <strong>politiche rigorose</strong> di gestione dei dati, utilizzare tecnologie di <strong>sicurezza</strong> per proteggere le informazioni</td>
    </tr>
    <tr>
        <td><strong>Resistenza al cambiamento</strong></td>
        <td>I dipendenti <em>Specifici</em> potrebbero <strong>resistere</strong> all'adozione del nuovo sistema per timore di perdere il posto di lavoro o perchè devono apprendere nuovo processo</td>
        <td>Cambiamento</td>
        <td>bassa(2)</td>
        <td>medio(3)</td>
        <td><span class="low">6</span></td>
        <td><strong>Formazione</strong> ai dipendenti e <strong>supporto continuo</strong> per facilitare la transizione</td>
    </tr>
    <tr>
        <td><strong>Dipendenti <em>Specifici</em> non soddisfatti</strong></td>
        <td>I dipendenti <em>Specifici</em> potrebbero per qualche motivo <strong>non essere soddisfatti</strong> di documentazione e/o nuovo portale web</td>
        <td>Qualità</td>
        <td>bassa(2)</td>
        <td>basso(2)</td>
        <td><span class="low">4</span></td>
        <td>Controllo frequente dei <strong>feedback</strong> e comunicazione frequente con dipendenti <em>Specifici</em></td>
    </tr>
    <tr>
        <td><strong>Errori nei dati caricati</strong></td>
        <td>I metadati estratti in modo errato potrebbero essere confermati dai clienti perchè <strong>distratti o fettolosi</strong></td>
        <td>Operativo</td>
        <td>alta(4)</td>
        <td>alto(4)</td>
        <td><span class="high">16</span></td>
        <td>Mostrare nella pagina di riepilogo i metadati e in modo evidente i messaggi relativi</td>
    </tr>
    <tr>
        <td><strong>Riassegnamento sviluppatori</strong></td>
        <td>Gli sviluppatori di <em>HyperFlow</em> potrebbero essere <strong>riassegnati</strong> in progetti con priorità più alta causando ritardi</td>
        <td>Progetto</td>
        <td>bassa(2)</td>
        <td>alto(4)</td>
        <td><span class="medium">8</span></td>
        <td>Organizzare in <strong>anticipo</strong> gli sviluppatori. Verifica delle conoscenze delle risorse del team di sviluppo ed eventuale assunzione di nuovo personale, anche a progetto</td>
    </tr>
    <tr>
        <td><strong>Costo 
        test troppo elevati</strong></td>
        <td>I costi per i test potrebbero essere <strong>elevati</strong> a causa di molte richieste a servizi esterni</td>
        <td>Tecnico</td>
        <td>alta(4)</td>
        <td>medio(3)</td>
        <td><span class="medium">12</span></td>
        <td>Creare dei <strong>mock</strong> delle chiamate da usare in fase di test</td>
    </tr>
    <tr>
        <td><strong>Poca familiarità con le tecnologie</strong></td>
        <td>Le tecnologie impiegate necessitano molte risorse per poter imparare il loro funzionamento.</td>
        <td>Tecnico</td>
        <td>molto bassa(1)</td>
        <td>medio(3)</td>
        <td><span class="low">3</span></td>
        <td>Organizzare <strong>corsi</strong> per l’addestramento sulle tecnologie da utilizzare. Fare riferimento ad altri reparti in azienda se hanno lavorato con tali tecnologie</td>
    </tr>
    <tr>
        <td><strong>Improvviso cambio di scope</strong></td>
        <td><strong>Cambio di scope</strong> rispetto a quello originariamente stabilito</td>
        <td>Tecnico</td>
        <td>bassa(2)</td>
        <td>alto(4)</td>
        <td><span class="medium">8</span></td>
        <td>Organizzare il team e mantenere i rapporti con il cliente in modo da <strong>integrare al meglio</strong> le modifiche</td>
    </tr>
    <tr>
        <td><strong>Cliente non disponibile</strong></td>
        <td>Il cliente è <strong>difficilmente reperibile</strong> per meeting e confronti</td>
        <td>Progetto</td>
        <td>media(3)</td>
        <td>medio(3)</td>
        <td><span class="medium">9</span></td>
        <td><strong>Sensibilizzazione</strong>, chirarire il più possibile durante i meetings, rinvio del confronto</td>
    </tr>
    <tr>
        <td><strong>Stima delle durate inadeguate</strong></td>
        <td>Il project manager calcola stime <strong>troppo ottimistiche</strong></td>
        <td>Progetto</td>
        <td>media(3)</td>
        <td>medio(3)</td>
        <td><span class="medium">9</span></td>
        <td>Mettere nella <strong>scope bank</strong> tempo per coprire i ritardi nelle attività</td>
    </tr>
    <tr>
        <td><strong>Stima delle risorse inadeguate</strong></td>
        <td>Il project manager stima erroneamente la <strong>quantità di risorse</strong> necessarie per portare a termine il progetto</td>
        <td>Progetto</td>
        <td>bassa(2)</td>
        <td>medio(3)</td>
        <td><span class="low">6</span></td>
        <td>recuperare risorse <strong>da altri progetti</strong> che ne hanno meno bisogno</td>
    </tr>
    <tr>
        <td><strong>Conflitti con altri progetti</strong></td>
        <td><strong>Altri progetti</strong> già attivi non permettono il lancio di questo progetto</td>
        <td>Progetto</td>
        <td>molto bassa(1)</td>
        <td>basso(2)</td>
        <td><span class="low">2</span></td>
        <td>si concorda con il cliente lo <strong>slittamento temporale massimo</strong> per l’avvio del progetto</td>
    </tr>
    <tr>
        <td><strong>Costi insostenibili</strong></td>
        <td>Il progetto si rivela <strong>più costoso</strong> del previsto nel portarlo avanti</td>
        <td>Progetto</td>
        <td>bassa(2)</td>
        <td>alto(4)</td>
        <td><span class="medium">8</span></td>
        <td>creare un <strong>sistema di rendicontazione</strong> dei costi accurato e puntuale</td>
    </tr>
    <tr>
        <td><strong>Modifica normative privacy</strong></td>
        <td>Vengono emesse nuove normative sulla privacy che richiedono di rivedere lo scope del progetto</td>
        <td>Esterno</td>
        <td>molto bassa(1)</td>
        <td>alto(4)</td>
        <td><span class="low">4</span></td>
        <td>Modificare il sistema per accettare le modifiche</td>
    </tr>
    <tr>
        <td><strong>Inadeguatezza della customer experience</strong></td>
        <td>La customer experience viene giudicata troppo complicata</td>
        <td>Esterno</td>
        <td>media(3)</td>
        <td>alto(4)</td>
        <td><span class="medium">12</span></td>
        <td>Introdurre <strong>controlli continui</strong> durante la realizzazione della soluzione mirati a mantenere alta la qualità della stessa</td>
    </tr>
</table>

<img src="https://github.com/Lorenzo-Gardini/Project-Management/blob/main/report/images/risk_graphs.png?raw=true" alt="Risk Graphs"/>