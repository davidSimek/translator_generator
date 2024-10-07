ifeq ($(strip $(FROM)),)
    $(info Usage: )
    $(info make FROM=<lang_code> TO=<lang_code>)
    $(info make en_to_cs)
    $(info make cs_to_en)
    $(error "You have to provide the FROM argument")
endif

ifeq ($(strip $(TO)),)
    $(info Usage: )
    $(info make FROM=<lang_code> TO=<lang_code>)
    $(info make en_to_cs)
    $(info make cs_to_en)
    $(error "You have to provide the TO argument")
endif

all:
	m4 -D FROM=$(FROM) -D TO=$(TO) translator_generator.m4 > $(FROM)_to_$(TO)
	chmod +x $(FROM)_to_$(TO)

en_to_cs:
	m4 -D FROM=en -D TO=cs translator_generator.m4 > $(FROM)_to_$(TO)
	chmod +x en_to_cs

cs_to_en:
	m4 -D FROM=en -D TO=cs translator_generator.m4 > $(FROM)_to_$(TO)
	chmod +x en_to_cs
