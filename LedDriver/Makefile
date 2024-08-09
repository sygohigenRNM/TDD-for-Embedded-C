# Makefile
CC = gcc
CPP = g++
CFLAGS = -Wall -Iinclude

LED_TARGET = LedDriver

# 소스 파일과 객체 파일
SRCS = src/LedDriver.c src/main.c

# 기본 타겟
all: $(LED_TARGET)

# 실행 파일 빌드
$(LED_TARGET): $(SRCS)
	$(CC) -o $@ $^ $(CFLAGS)

clean:
	rm -f $(LED_TARGET)

.PHONY: clean
