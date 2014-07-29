default: brt.jar

brt.jar: clean Makefile colors/*.icls options/*.xml
	mkdir -p build/{colors,options}
	cp colors/*.icls build/colors/
	cp options/*.xml build/options/
	cp -r fileTemplates build/
	touch build/IntelliJ\ IDEA\ Global\ Settings
	jar cfM $@ -C build/ .

clean:
	rm -rf build/ brt.jar
.PHONY: clean

