# Compiler
JAVAC = javac

# Source and binary directories
SRC_DIR = .
BIN_DIR = bin

# Source files
SRC_FILES = $(SRC_DIR)/Main.java $(SRC_DIR)/Color.java

# Class files (target)
CLASSES = $(BIN_DIR)/Main.class $(BIN_DIR)/Color.class

# Default target
all: $(CLASSES)

# Compile .java files to .class files
$(BIN_DIR)/%.class: $(SRC_DIR)/%.java
	@mkdir -p $(BIN_DIR)
	$(JAVAC) -d $(BIN_DIR) $<

# Run the program
run: all
	java -cp $(BIN_DIR) Main

# Clean up the binaries
clean:
	rm -rf $(BIN_DIR)

.PHONY: all run clean
