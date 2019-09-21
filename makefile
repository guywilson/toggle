# Source directory
SOURCE = src

# Build output directory
BUILD = build

C = gcc
CFLAGS = -c -Wall

$(BUILD)/toggle.o: $(SOURCE)/toggle.c
	$(C) $(CFLAGS) -o $@ $(SOURCE)/toggle.c

toggle: $(BUILD)/toggle.o
	$(C) -o $@ $(BUILD)/toggle.o -lgpioc
