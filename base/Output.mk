
#
#  `mo` - make output tools
#

# `say` - echo something with soft formatting
define say
	@printf "$(CYAN)"
	@echo $1
	@printf "$(STOP)"
endef

# `okay` - echo something successful
define okay
	@printf "$(GREEN)"
	@echo $1 $2
	@printf "$(STOP)"
endef

# `warn` - echo something rathe alarming
define warn
	@printf "$(YELLOW)"
	@echo $1 $2
	@printf "$(STOP)"
endef

# `woops` - tell the user something failed hard
define woops
	@printf "$(RED)"
	@echo $1 $2
	@printf "$(STOP)"
endef

# `line` - output a blank line
define line
	@echo ""
endef

# `yep` - some component of a larger operation worked/was successful
define yep
	@echo -n -e "    $(CHECKMARK) $(GREEN) $1$(STOP)"
	$(call line)
endef

# `nope` - some component of a larger operation failed/err'd
define nope
	@echo -n -e "    $(NOPECROSS) $(RED) $1$(STOP)"
	$(call line)
endef

# `sparkles` - jazz hands
define sparkles
	@echo -n -e "$(SPARKLES)  $(YELLOW)$1$(STOP) $(SPARKLES)"
	$(call line)
endef
