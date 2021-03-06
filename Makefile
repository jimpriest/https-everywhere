#!/usr/bin/make -f

# this rule makes tag or branch targets
%:
	./makexpi.sh $@
# this makes prerelease xpis (and is the default rule)
prerelease: pkg
	./makexpi.sh
pkg:
	mkdir pkg
clean:
	rm -rf pkg/xpi-amo/ pkg/xpi-eff/
	rm -f pkg/*.xpi
	rm -f src/chrome/content/rules/default.rulesets

.PHONY: clean prerelease
