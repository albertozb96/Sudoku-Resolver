# Makefile

TARGET_CPU	:= x86-64
SRC_DIR		:= ./src
BUILD_DIR	:= ./build
TARGET		:= $(BUILD_DIR)/SudokuResolver.exe

INC_DIR		:= ./src
CFLAGAS		:= -Wall -I$(INC_DIR)

OBJS		:=	$(BUILD_DIR)/main.o \
				$(BUILD_DIR)/Screen.o

ifeq ($(TARGET_CPU),x86-64)
	ARCH = -m64
else ifeq ($(TARGET_CPU), x86)
	ARCH = -m32
endif

# Default, build program and keeps object files
all: $(TARGET)
	@echo "### Build Finished: $< ###"

# Clean build
Sudoku: $(TARGET)
	@echo "### Cleaning Files"
	@rm $(BUILD_DIR)/*.d $(OBJS)
	@echo "### Build Finished: $< ###"

# Linking object files
$(TARGET): $(OBJS)
	@echo "### Linking $^ ###"
	gcc $(ARCH) $(CFLAGAS) $(OBJS) -o $(TARGET)
	@echo

# Compiling c files
$(BUILD_DIR)/%.o: $(SRC_DIR)/%.c
	@echo "### Compile $< ###"
	@mkdir -p build
	gcc -MD $(ARCH) $(CFLAGAS) -c $< -o $@
	@echo

# Include makefiles generated .d that contains .h dependencies for .c files
# This (and default recursive makefile) let to Make know if a .h has been modified
-include $(OBJS:.o=.d)

# Clean Step
.PHONY: clean
clean:
	rm -rf $(BUILD_DIR)
