# Source directory
SOURCE = src

# Build output directory
BUILD = build

TARGET = toggle

C = gcc
CFLAGS = -c -Wall

$(TARGET): $(BUILD)/toggle.o
	$(C) -o $@ $(BUILD)/toggle.o -lgpioc

$(BUILD)/toggle.o: $(SOURCE)/toggle.c
	$(C) $(CFLAGS) -o $@ $(SOURCE)/toggle.c

install: $(TARGET)
	cp $(TARGET) /usr/local/bin
