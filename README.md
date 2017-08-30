# arcana_domine

# Obbiettivi

Obbiettivo del progetto è la creazione di un sistema per gestire i dati dei partecipanti alle attività di Arcana Domine, persistere e rendere disponibili i dati di gioco per la campagna principale di AD, slegare definitivamente il forum dalle attività di gioco e di gestione.
Per raggiungere questi obbiettivi vanno risolti i seguenti punti:

**Gestione PG**
*	Creazione
*	Richiesta talenti
*	Missive

**Gestione Staff**
*	PNG
*	Timetable
*	Cartellini
*	Approvazione PG
*	Approvazione Talenti
*	Assegnazione PP
*	Gogna
*	Stato PG (morte, parcheggio)
*	Partecipanti a evento
*	Azioni Economiche
*	Iscritti

**Gestione segreteria**
*	Iscrizione AD
*	CSEN 
*	Gestione partecipanti
*	Gestione pagamenti

**Interfaccia**
*	Web
*	(Opzionale) Mobile 

**Mail** 
*	Iscrizione
*	Conferma / rifiuto pg
*	Conferma / rifiuto talento
*	Reminder iscrizione




# Requisiti

## Hosting
Per motivi di budget l’hosting è un hosting condiviso basato su cpanel, con PHP 5
Le soluzioni valutate devono tenere in considerazione i vincoli di tale hosting.
*	Non sono state valutate librerie PHP che richiedono l’installazione tramite Composer
*	Compatibilità con PHP 5
*	Compatibilità con mysql
*	Performance limitate

## Retrocompatibilità Wordpress
Attualmente il sito e la sua gestione utenti è basato su wordpress, gli sviluppi vanno integrati a questa soluzione

# Strumenti

## Wordpress - https://wordpress.org/
Il frontend web di riferimento sarà sempre WP
###	WP_Social_Login 
Plug-in per SSO con google e facebook
###	Altri Plugin
###	Varie ed eventuali

## Fpdf - http://www.fpdf.org/
Libreria php per la creazione di pdf. Usato per la creazione di cartellini.

## PHP http client - http://phphttpclient.com
Libreria per la gestione di chiamate rest

## Lithium - http://li3.me
Microframework per la creazione delle API

## Angular js - https://angular.io/
Le comunicazioni tra wordpress e i servizi REST di backend avverrà a livello frontend attraverso una serie di componenti Angular 2. L’obbiettivo di questa implementazione è sfruttare la possibilità di riusare parte del codice per altri progetti (versione mobile)

# Struttura

 
# Prassi
Per i file PHP valgono le specifiche richieste da [lithium] (http://li3.me/docs/book/specs/1.x/)


# Future implementazioni

* Sistema di backup automatico?
* Miglioramento stile sito?
* Sistema di Pagamento online
* Sistema di gestione eventi + lettore QRcode per la segreteria [esempio](https://wordpress.org/plugins/easy-paypal-events-tickets/)

