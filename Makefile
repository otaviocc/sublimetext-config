PACKAGES_DIR=$(HOME)/Library/Application\ Support/Sublime\ Text/Packages/User
PROFILES_DIR=$(HOME)/Library/Application\ Support/Sublime\ Text/Packages/sublime-profiles/Data
USER_DIR=$(HOME)/Library/Application\ Support/Sublime\ Text/Packages/User

install:
	@echo Installing Packages
	@mkdir -p $(PACKAGES_DIR)
	@cp ./packages/Package\ Control.sublime-settings $(PACKAGES_DIR)

	@echo Installing Preferences
	@mkdir -p $(USER_DIR)
	@cp ./preferences/Preferences.sublime-settings $(USER_DIR)

	@echo Installing Profiles
	@mkdir -p $(PROFILES_DIR)
	@cp ./profiles/*.profile $(PROFILES_DIR)

	@echo Done

backup:
	@echo Saving Packages
	@cp $(PACKAGES_DIR)/Package\ Control.sublime-settings packages/

	@echo Saving Preferences
	@cp $(USER_DIR)/Preferences.sublime-settings preferences/

	@echo Saving Profiles
	@cp $(PROFILES_DIR)/*.profile profiles/

	@echo Done