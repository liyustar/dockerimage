# include ../projdef.mk

MODULE := test_proj

# 创建cpp的文件依赖
# CPPFILES := $(wildcard *.cpp)
# DEPINC := $(patsubst %.cpp, %.d, $(CPPFILES))
# include $(DEPINC)
CPPFILES := $(wildcard *.c)

# must define - OBJ
OBJ := $(patsubst %.c, %.o, $(CPPFILES))

PRODUCT := hello

# PRODUCT 为 liblyx.a
all: $(PRODUCT)

$(PRODUCT): $(OBJ)

clean:
	-rm $(OBJ) $(DEPINC)
