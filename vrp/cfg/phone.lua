
local cfg = {}

-- size of the sms history
cfg.sms_history = 15

-- maximum size of an sms
cfg.sms_size = 500

-- duration of a sms position marker (in seconds)
cfg.smspos_duration = 300

-- define phone services
-- blipid, blipcolor (customize alert blip)
-- alert_time (alert blip display duration in seconds)
-- alert_permission (permission required to receive the alert)
-- alert_notify (notification received when an alert is sent)
-- notify (notification when sending an alert)
cfg.services = {
  ["police"] = {
    blipid = 304,
    blipcolor = 38,
    alert_time = 300, -- 5 minutes
    alert_permission = "police.service",
    alert_notify = "~r~Polizei Notruf:~n~~s~",
    notify = "~b~Du hast die Polizei gerufen.",
    answer_notify = "~b~ Die Polizei ist auf dem Weg!."
  },
  ["emergency"] = {
    blipid = 153,
    blipcolor = 1,
    alert_time = 300, -- 5 minutes
    alert_permission = "emergency.service",
    alert_notify = "~r~Notarzt Notruf:~n~~s~",
    notify = "~b~Du hast die Sanitäter gerufen.",
    answer_notify = "~b~Der Krankenwagen ist auf dem Weg."
  },
  ["taxi"] = {
    blipid = 198,
    blipcolor = 5,
    alert_time = 300,
    alert_permission = "taxi.service",
    alert_notify = "~y~Taxi benötigt:~n~~s~",
    notify = "~y~Du hast einen Taxi gerufen.",
    answer_notify = "~y~Ein Taxi wird bald kommen."
  }
}

return cfg
