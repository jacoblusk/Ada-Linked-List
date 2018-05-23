int_list_example.exe: int_list_example.adb linked_list.adb linked_list.ads
	gnatmake int_list_example.adb

clean:
	rm -f int_list_example.ali int_list_example.o int_list_example.exe linked_list.o linked_list.ali

.PHONY: clean