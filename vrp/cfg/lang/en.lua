
-- define all language properties

local lang = {
  common = {
    welcome = "Willkommen! Benutze die Pfeil Tasten um im Menü zu navigieren..~n~Letzer Login: {1}",
    no_player_near = "~r~Kein Spieler in der Nähe.",
    invalid_value = "~r~Ungültige Angabe.",
    invalid_name = "~r~Falscher Name.",
    not_found = "~r~Nicht gefunden.",
    request_refused = "~r~Anfrage Abgelaufen."
  },
  survival = {
    starving = "Verhungern",
    thirsty = "Verdursten"
  },
  money = {
    display = "{1} <span class=\"symbol\">$</span>",
    given = "Gegeben ~r~{1}$.",
    received = "Bekommen ~g~{1}$.",
    not_enough = "~r~Nicht genung Geld.",
    paid = "Bezahlt ~r~{1}$.",
    give = {
      title = "Geld geben",
      description = "Mit diesem Command kannst du dem nächsten Spieler Geld aus deiner Tasche geben!",
      prompt = "Betrag zum geben:"
    }
  },
  inventory = {
    title = "Inventar",
    description = "Öffne das Inventar.",
    iteminfo = "({1})<br /><br />{2}<br /><em>{3} kg</em>",
    info_weight = "Gewicht {1}/{2} kg",
    give = {
      title = "Geben",
      description = "Gebe das Item zum nächsten Spieler",
      prompt = "Anzahl zum geben (max {1}):",
      given = "Gegeben ~r~{1} ~s~{2}.",
      received = "Bekommen ~g~{1} ~s~{2}.",
    },
    trash = {
      title = "Wegwerfen",
      description = "Item wegschmeißen",
      prompt = "Anzahl zum wegschmeißen (max {1}):",
      done = "Weggeschmießen ~r~{1} ~s~{2}."
    },
    missing = "~r~Fehlt {2} {1}.",
    full = "~r~Inventar voll.",
    chest = {
      title = "Kiste",
      already_opened = "~r~Die Kiste wird bereits von jemand anderem geöffnet.",
      full = "~r~Kiste ist voll.",
      take = {
        title = "Nehmen",
        prompt = "Anzahl zum Nehmen (max {1}):"
      },
      put = {
        title = "Legen",
        prompt = "Anzahl zum legen (max {1}):"
      }
    }
  },
 atm = {
    title = "ATM",
    info = {
      title = "Info",
      bank = "Bank: {1} $"
    },
    deposit = {
      title = "Einzahlen",
      description = "Vom Geldbeutel in die Bank einzahlen.",
      prompt = "Betrag zum einzahlen:",
      deposited = "~r~{1}$~s~ eingezahlt."
    },
    withdraw = {
      title = "Auszahlen",
      description = "Von der Bank auszahlen",
      prompt = "Betrag zum Auszahlen:",
      withdrawn = "~g~{1}$ ~s~ausgezahlt.",
      not_enough = "~r~Du hast nicht soviel Geld auf der Bank."
    }
  },
  business = {
    title = "Unternehmen öffnen",
    directory = {
      title = "Unternehmen",
      description = "Hier siehst du alle Unternehmen die es zurzeit gibt.",
      dprev = "> Zurück",
      dnext = "> Weiter",
      info = "<em>Kapital: </em>{1} $<br /><em>Besitzer: </em>{2} {3}<br /><em>Registration n°: </em>{4}<br /><em>Nummer: </em>{5}"
    },
    info = {
      title = "Unternehmens Info",
      info = "<em>Name: </em>{1}<br /><em>Kapital: </em>{2} $<br /><em>Kapital übertragen: </em>{3} $<br /><br/>Kapitalübertragung ist die Menge des Geldes, das für eine Wirtschaftswirtschaftsperiode übertragen wird, das Maximum ist das Geschäftskapital."
    },
    addcapital = {
      title = "Kapital hinzufügen",
      description = "Kapital zum Unternehmen hinzufügen.",
      prompt = "Betrag zum einfügen:",
      added = "~r~{1}$ ~s~hinzugefügt."
    },
    launder = {
      title = "Geldwäsche",
      description = "Benutze dein Unternehmen um Geld zu waschen.",
      prompt = "Anzahl zum waschen (max {1} $): ",
      laundered = "~g~{1}$ ~s~gewaschen.",
      not_enough = "~r~Nicht genung gefälschtes Geld."
    },
    open = {
      title = "Unternehmen starten",
      description = "Eröffne ein Unternehmen. Für {1} $.",
      prompt_name = "Name des Unternehmens (EINMALIG, max {1} Buchstaben):",
      prompt_capital = "Kapital eintragen (min {1})",
      created = "~g~Unternehmen erstellt."
      
    }
  },
  cityhall = {
    title = "Stadthalle",
    identity = {
      title = "Personalausweis beantragen",
      description = "Erstelle ein Personalausweis. Kosten = {1} $.",
      prompt_firstname = "Gebe deinen Vornamen ein:",
      prompt_name = "Gebe deinen Nachnamen ein:",
      prompt_age = "Gebe deine Alter an:",
    },
    menu = {
      title = "Personalausweis",
      info = "<em>Nachname: </em>{1}<br /><em>Vorname: </em>{2}<br /><em>Alter: </em>{3}<br /><em>Registation n°: </em>{4}<br /><em>Nummer: </em>{5}<br /><em>Adresse: </em>{7}, {6}"
    }
  },
  police = {
    wanted = "Wanted Rang {1}",
    not_handcuffed = "~r~Keine Handschellen",
    cloakroom = {
      title = "Cloakroom",
      uniform = {
        title = "Uniform",
        description = "Uniform anziehen"
      }
    },
    pc = {
      title = "PC",
      searchreg = {
        title = "Registrierungssuche",
        description = "Identität durch Registrierung suchen",
        prompt = "Registriernummer eingeben:"
      },
      closebusiness = {
        title = "Unternehmen schließen",
        description = "Schließe das Unternehmen des nächsten Spielers",
        request = "Bist du dir sicher das Unternehmen {3} von {1} {2} zu schließen?",
        closed = "~g~Unternehmen geschlossen."
      },
      trackveh = {
        title = "Fahrzeug orten",
        description = "Orte ein Fahrzeug mithilfe der Nummer",
        prompt_reg = "Gebe die Registrations Nummer ein:",
        prompt_note = "Gebe einen Grund für die Ortung ein:",
        tracking = "~b~Ortung gestartet.",
        track_failed = "~b~Ortung von  {1}~s~ ({2}) ~n~~r~fehlgeschlagen.",
        tracked = "Geortet {1} ({2})"
      },
      records = {
        show = {
          title = "Polizei Akte",
          description = "Zeige Polizei Akte per Registrationsnummer."
        },
        delete = {
          title = "Akte leeren",
          description = "Leere eine Akte per Registrationsnummer",
          deleted = "~b~Akte geleert"
        }
      }
    },
    menu = {
      handcuff = {
        title = "Handschellen anlegen",
        description = "Verhafte die Person die am nächsten zu dir steht."
      },
      putinveh = {
        title = "In Fahrzeug stecken",
        description = "Die nächste Person ins Fahrzeug stecken."
      },
      askid = {
        title = "Nach Perso fragen",
        description = "Frage nach einem Personalausweis",
        request = "Möchtest du deinen Personalausweis zeigen?",
        request_hide = "Verstecke das Fenster.",
        asked = "Frage nach Ausweis..."
      },
      check = {
        title = "Spieler untersuchen",
        description = "Geld, Waffen und Illegale Gegenstände suchen",
        request_hide = "Verstecke das Fenster.",
        info = "<em>Geld: </em>{1} $<br /><br /><em>Inventar: </em>{2}<br /><br /><em>Waffen: </em>{3}",
        checked = "Du wurdest untersucht"
      },
      seize = {
        seized = "Beschlagnahmt {2} ~r~{1}",
        weapons = {
          title = "Waffen beschlagnahmen",
          description = "Waffen beschlagnahmen",
          seized = "~b~Deine Waffen wurden beschlagnahmt."
        },
        items = {
          title = "Drogen beschlagnahmen",
          description = "Drogen beschlagnahmen",
          seized = "~b~Deine Illegalen Sachen wurden beschlagnahmt."
        }
      },
      jail = {
        title = "Gefängnis",
        description = "Schmeiße den nähesten Spieler in das näheste Gefängnis",
        not_found = "~r~Kein Gefängsnis gefunden.",
        jailed = "~b~Eingeknastet.",
        unjailed = "~b~Aus dem Knast entlassen.",
        notify_jailed = "~b~Du bist im Gefängnis.",
        notify_unjailed = "~b~Aus dem Knast entlassen."
      },
      fine = {
        title = "Strafzettel",
        description = "Gebe einen Strafzettel.",
        fined = "~b~Ein Strafzettel in höhe von ~s~{2} $ für ~b~{1}.",
        notify_fined = "~b~Dir wurde ein Strafzettel von ~s~ {2} $ für ~b~{1} gegeben.",
        record = "[Strafzettel] {2} $ für {1}"
      }
    },
    identity = {
      info = "<em>Nachname: </em>{1}<br /><em>Vorname: </em>{2}<br /><em>Alter: </em>{3}<br /><em>Registration n°: </em>{4}<br /><em>Telefon: </em>{5}<br /><em>Unternehmen: </em>{6}<br /><em>Unternehmen Kapital: </em>{7} $<br /><em>Addresse: </em>{9}, {8}"
    }
  },
  emergency = {
    menu = {
      revive = {
        title = "Wiederbeleben",
        description = "Wiederbelebe einen Spieler.",
        not_in_coma = "~r~Nicht im Koma oder Tot."
      }
    }
  },
  phone = {
    title = "Telefon",
    directory = {
      title = "Kontakte",
      description = "Kontakte öffnen.",
      add = {
        title = "> Hinzufügen",
        prompt_number = "Gebe die Telefonnummer ein:",
        prompt_name = "Gebe einen Namen ein:",
        added = "~g~Eingetragen."
      },
      sendsms = {
        title = "SMS senden",
        prompt = "Gebe die SMS ein (max {1} chars):",
        sent = "~g~ Gesendet zu n°{1}.",
        not_sent = "~r~ n°{1} unavailable."
      },
      sendpos = {
        title = "Sende Position",
      },
      remove = {
        title = "Löschen"
      }
    },
    sms = {
      title = "SMS Verlauf",
      description = "SMS Verlauf.",
      info = "<em>{1}</em><br /><br />{2}",
      notify = "SMS~b~ {1}:~s~ ~n~{2}"
    },
    smspos = {
      notify = "SMS-Position ~b~ {1}"
    },
    service = {
      title = "Notruf",
      description = "Notruf betätigen.",
      prompt = "Wenn Nötig, gebe eine Nachricht an:",
      ask_call = "Notruf {1} , willst du es annehmen? <em>{2}</em>",
      taken = "~r~Der Notruf wurde bereits angenommen."
    }
  },
  emotes = {
    title = "Animationen",
    clear = {
      title = "> Stop",
      description = "Stoppe alle Animationen."
    }
  },
  home = {
    buy = {
      title = "Kaufen",
      description = "Kaufe ein Haus. Preis = {1} $.",
      bought = "~g~Gekauft.",
      full = "~r~Keine Hauser zur verfügung.",
      have_home = "~r~Du hast bereits ein Haus."
    },
    sell = {
      title = "Verkaufen",
      description = "Verkaufe ein Haus für {1} $",
      sold = "~g~verkauft.",
      no_home = "~r~Du besitzt kein Haus hier."
    },
    intercom = {
      title = "Betreten",
      description = "Betrete dein Haus.",
      prompt = "Nummer:",
      not_available = "~r~Nicht besetzt.",
      refused = "~r~Weigert sich zu betreten.",
      prompt_who = "Sage wer du bist:",
      asked = "Klingelt...",
      request = "Jemand will dein Haus betreten: <em>{1}</em>"
    },
    slot = {
      leave = {
        title = "Verlassen"
      },
      ejectall = {
        title = "Verlassen [Alle]",
        description = "Alle vom Haus schmeißen, dich auch."
      }
    }
  },
  garage = {
    title = "Garage ({1})",
    owned = {
      title = "Im besitz",
      description = "Die Fahrzeuge die du besitzt."
    },
    buy = {
      title = "Kaufen",
      description = "Kaufe Fahrzeuge.",
      info = "{1} $<br /><br />{2}"
    },
    store = {
      title = "Parken",
      description = "Parke dein jetztiges Fahrzeug in die Garage."
    }
  },
  vehicle = {
    title = "Fahrzeuge",
    no_owned_near = "~r~Kein Privatfahrzeug in der Nähe.",
    trunk = {
      title = "Kofferraum",
      description = "Kofferraum öffnen."
    },
    detach_trailer = {
      title = "Anhänger absatteln",
      description = "Anhänger absatteln"
    },
    asktrunk = {
      title = "Bitte den Kofferraum zu öffnen",
      asked = "~g~Frage...",
      request = "Willst du deinen Kofferraum öffnen ?"
    }
  },
  gunshop = {
    title = "Waffenladen ({1})",
    prompt_ammo = "Munition für die {1}:",
    info = "<em>body: </em> {1} $<br /><em>ammo: </em> {2} $/u<br /><br />{3}"
  },
  market = {
    title = "Supermarkt ({1})",
    prompt = "Anzahl von {1} zu kaufen:",
    info = "{1} $<br /><br />{2}"
  },
  skinshop = {
    title = "Kleiderladen"
  },
  cloakroom = {
    title = "Fach ({1})",
    undress = {
      title = "> Umziehen"
    }
  },
  itemtr = {
    informer = {
      title = "Illegaler Informer",
      description = "{1} $",
      bought = "~g~Position wurde im GPS eingetragen."
    }
  }
}

return lang
