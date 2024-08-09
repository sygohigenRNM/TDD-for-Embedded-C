CPP = g++
CPPFLAGS = -I$(CPPUTEST_HOME)/include
LDFLAGS = -L$(CPPUTEST_HOME)/lib -lCppUTest -lCppUTestExt

################################################################################
#                                  CppUTest
################################################################################
LED_DIR = LedDriver
LED_SRCS = $(LED_DIR)/src/LedDriver.c
CPPFLAGS += -I$(LED_DIR)/include

TEST_DIR = test
TEST_SRCS = $(TEST_DIR)/LedDriverTest.cpp

UTILS = mocks/RuntimeErrorStub.c

CPPFLAGS += -Iinclude/util -Imocks/

TARGET = tests

all: $(TARGET)

$(TARGET): ALLTests.cpp $(LED_SRCS) $(TEST_SRCS) $(UTILS)
	$(CPP) -o $@ $^ $(CPPFLAGS) $(LDFLAGS)

clean:
	rm -f $(TARGET)

.PHONY : clean