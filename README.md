# P5X Patch IT - Traduzione Italiana by GamePatchingItaly 2025
Traduzione Italiana del gioco **Persona 5: Phantom X**.

**Ultima modifica:** 17/07/2025

**Build:** 17/07/2025-Build1

**Versione BepInEx:** 5.4.22

**Compatibilità:** Persona 5 Phantom X (Global)

## 🔧 Funzionamento

Questa traduzione funziona grazie a due mod inserite tramite BepInEx,
che consentono di sostituire in tempo reale le risorse (testi, Texture2D e 3D)
dal processo del gioco, senza dover modificare i file di gioco, di fatto
non violando i Termini di Servizio (alternativa più sicura contro eventuali
ban da parte di un ipotetico anticheat).

La prima mod, XUAT (XUnityAutoTranslator) rimpiazza i testi traducendoli in tempo
reale con un traduttore online, dando la possibilità di revisionare manualmente le
traduzioni.
La seconda mod, TextureReplacer, consente di dumpare e rimpiazzare le texture sempre
in tempo reale, permettendo quindi di poterle modificare e reimportare con molta facilità.

## 📥 Installazione

1. Scarica tutti i file dalla repository
2. Estrai nella directory principale del gioco
3. Avvia il gioco tramite il file "Launcher.bat"

## 📂 Struttura Patch

```
P5X_CartellaGioco/
├── BepInEx/              # Framework mod
│   ├── Translation/      # File traduzione
│   │   └── it/          # Traduzione italiana
│   │       └── Text/    # File .txt tradotti
│   └── plugins/         # Plugin mod
│       └── ModImages/   # Immagini tradotte
├── Launcher.bat        # Launcher 
├── dotnet/             # Runtime .NET
├── baselib.dll         # Libreria base
├── winhttp.dll         # Libreria HTTP
├── doorstop_config.ini # Configurazione
└── .doorstop_version   # Versione doorstop
```

## 🔋 Obiettivi

L'obiettivo principale rimane quello di poter fornire un'esperienza di gioco
il più possibile in italiano, stando alle limitazioni imposte dalla mod.
Di base gli obiettivi per questo progetto sono:
- Traduzione in italiano di tutte le componenti fondamentali per il gioco e
  di tutte le funzionalità end-game attualmente presenti
- Aggiornamenti mensili che traducano la storia e la sua evoluzione nel tempo,
  oltre che i vari nuovi eventi e personaggi che verranno aggiunti.
- Correzione degli errori segnalati e delle dimenticanze
- Traduzione delle texture.

## 🐛 Segnalazione Bug

Purtroppo non possiamo tradurre i testi manualmente se prima non
vengono tradotti automaticamente dalla mod, dopo esser apparsi almeno
una volta a schermo.
Potrebbero essere quindi presenti delle "dimenticanze" non revisionate
manualmente che verranno tradotte in tempo reale dalla mod.
Vi invitiamo a segnalare qualunque errore di traduzione, adattamento,
grammaticale o grafico nella sezione Issues, dove potete anche lasciare
dei suggerimenti qualora vogliate contribuire alla traduzione.

## ⚠️ Disclaimer

- Traduzione **non ufficiale**.
- La rivendita di questa mod è vietata dalla legge
  e costituisce reato. Se hai pagato per questa
  traduzione sei stato truffato.
- Non utilizzare BepInEx per caricare mod che
  possano rovinare l'esperienza di gioco agli
  altri utenti, Supporta gli sviluppatori del gioco.
- Non ci prendiamo alcuna responsabilità per
  eventuali ban da parte di SEGA/Black Wings a causa 
  dell'utilizzo questa mod o del suo uso improprio.

## 👥 Crediti

Questo progetto è realizzato e mantenuto dal **GamePatchingTeam - 2025**

**Project Leader**: Rytheex

**Traduttori**: Rytheex

**Grafica**: Rytheex

Si ringrazia la community di **P5X Worldwide**, i creatori di BepInEx, XUnityAutoTranslator, TextureReplacer e delle mod di P5X per la versione Taiwan e Korea.

